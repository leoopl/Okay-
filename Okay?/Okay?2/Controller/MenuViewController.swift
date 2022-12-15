///
//  ViewController.swift
//  loginTeme
//
//  Created by Student on 06/12/22.
//  Copyright © 2022 Student. All rights reserved.
//
import SafariServices
import UIKit

class MenuViewController: UIViewController {
    
    var click = true
    @IBOutlet weak var stressButton: UIButton! {
        didSet{
            stressButton.layer.cornerRadius = stressButton.frame.height/8
        }
    }
    
    @IBOutlet weak var imageInteract: UIImageView!
    
    @IBOutlet weak var FineButtonMenu: UIButton! {
        didSet{
            FineButtonMenu.layer.cornerRadius = FineButtonMenu.frame.height/8
        }
    }
    
    @IBOutlet weak var RotinaButtonMenu: UIButton! {
        didSet{
               RotinaButtonMenu.layer.cornerRadius = RotinaButtonMenu.frame.height/8
           }
       }
    
    @IBOutlet weak var ProfissionalButtonMenu: UIButton!{
           didSet{
                  ProfissionalButtonMenu.layer.cornerRadius = ProfissionalButtonMenu.frame.height/8
              }
          }
    
    
    @IBOutlet weak var QuestionaryButtonMenu: UIButton!{
     didSet{
            QuestionaryButtonMenu.layer.cornerRadius = QuestionaryButtonMenu.frame.height/8
        }
    }

    
    @IBOutlet weak var CVVButtonDesing: UIButton!{
        didSet{
            CVVButtonDesing.layer.cornerRadius = CVVButtonDesing.frame.height/4
        }
    }
    
    
    lazy var informationLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textAlignment = .center
        return lbl
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.yellow.cgColor, UIColor.white.cgColor]

        self.view.layer.insertSublayer(gradientLayer, at: 0)


        self.view.addSubview(self.informationLabel)
        self.informationLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.informationLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.informationLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
       self.informationLabel.heightAnchor.constraint(equalTo: self.view.heightAnchor).isActive = true
    }
    @IBAction func CVVButton(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "http://cvvweb.mysuite1.com.br/client/chatan.php?h=&inf=&lfa=")!
            as URL, options: [:], completionHandler: nil)
    }

    @IBAction func FineButton(_ sender: UIButton) {
        click = !click
        print(click)
        if click{
            imageInteract.image = UIImage(named: "Feliz")
        }
        else{
            imageInteract.image = UIImage(named: "Triteza")
        }
        
    }
    
}
    

