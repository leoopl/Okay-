//
//  QuestionViewController.swift
//  Okay?2
//
//  Created by Student on 10/12/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
  
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    //setar para options
//    var viewModel = QuestionViewModel()
    var allQuestions: [allOptions]?
    var answerSelected = false
    var pointsReturn = 0
    
    var points = 0
    var index = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        getData {
            self.collectionView.reloadData()
        }
        
        collectionView.delegate = self
        collectionView.dataSource = self
        self.collectionView.reloadData()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickNext(_ sender: Any) {
        
        if !answerSelected {
            // Show alert
            let alert = UIAlertController(title: "Select One Option", message: "Please select one option before moving to the next question.", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
            return
        }
        answerSelected = false
        points += pointsReturn

        
        if index<(self.allQuestions?.count ?? 0) - 1 {
            index += 1
            collectionView.scrollToItem(at: IndexPath(row: index, section: 0), at: .right, animated: true)
        } else {
            // Move the user on the result controller
            guard let vc = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as? ResultViewController else {return}
            vc.finalResult = points
            print(points)
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        
    }
    
     
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return allQuestions?.count ?? 0
        }
        
        func getData(completed: @escaping () -> ()){
                let url = URL(string: "http://192.168.128.166:1880/listardb")
                URLSession.shared.dataTask(with: url!) { (data, response, err) in
                    if err == nil{
                        
                    do{
                       let allData = try JSONDecoder().decode([listardb].self, from: data!)
        //                print(self.allQuestions?.count)
                        
                        self.allQuestions = allData[0].questions
                        //print(self.allQuestions)
                        
                        DispatchQueue.main.async {
                            completed()
                        }
                    }catch {
                        print("Submit Order Failed")
                    }
                }
                }.resume()
            }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuestionCollectionViewCell", for: indexPath) as? QuestionCollectionViewCell else {return QuestionCollectionViewCell()}


            if let questionCell = cell as? QuestionCollectionViewCell{
                let okayCell = allQuestions?[indexPath.row]
                
                //print(okayCell)

                questionCell.option0.text = okayCell?.options?[0]
                questionCell.option1.text = okayCell?.options?[1]
                questionCell.option2.text = okayCell?.options?[2]
                questionCell.option3.text = okayCell?.options?[3]

                questionCell.optionA?.layer.cornerRadius = 5
                questionCell.optionB?.layer.cornerRadius = 5
                questionCell.optionC?.layer.cornerRadius = 5
                questionCell.optionD?.layer.cornerRadius = 5
                
                cell.selectedOption = { [weak self] count in
                    self?.answerSelected = true
                    self?.pointsReturn = count
                }
                //print(points)


                return questionCell

            }

            return cell
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 0
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return 0
        }
        
    
}
/**
extension QuestionViewController:  {
    
    
   
    
}*/
