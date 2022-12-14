//
//  QuestionCollectionViewCell.swift
//  Okay?2
//
//  Created by Student on 10/12/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

enum SelectedOption {
    case optionA
    case optionB
    case optionC
    case optionD
}

class QuestionCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var option0: UILabel!
    @IBOutlet weak var option1: UILabel!
    @IBOutlet weak var option2: UILabel!
    @IBOutlet weak var option3: UILabel!
    
    @IBOutlet weak var optionA: UIControl!
    @IBOutlet weak var optionB: UIControl!
    @IBOutlet weak var optionC: UIControl!
    @IBOutlet weak var optionD: UIControl!
    
    override func prepareForReuse() {
        updateBorder(myView: optionA ?? UIView())
        updateBorder(myView: optionB ?? UIView())
        updateBorder(myView: optionC ?? UIView())
        updateBorder(myView: optionD ?? UIView())
    }
    
    
    var selectedOption: ((_ selectedAnswer: Int) -> Void)?
    
    
    @IBAction func onClick0(_ sender: Any) {
        selectedOption?(0)
        changeBorder(selectedOption: .optionA)
    }
    @IBAction func onClick1(_ sender: Any) {
        selectedOption?(1)
        changeBorder(selectedOption: .optionB)
    }
    @IBAction func onClick2(_ sender: Any) {
        selectedOption?(2)
        changeBorder(selectedOption: .optionC)
    }
    @IBAction func onClick3(_ sender: Any) {
        selectedOption?(3)
        changeBorder(selectedOption: .optionD) 
    }
    
    
    
    func changeBorder(selectedOption: SelectedOption) {
        switch selectedOption {
        case .optionA:
            updateBorder(myView: optionA, borderWidth: 4)
            updateBorder(myView: optionB)
            updateBorder(myView: optionC)
            updateBorder(myView: optionD)
        case .optionB:
            updateBorder(myView: optionB, borderWidth: 4)
            updateBorder(myView: optionA)
            updateBorder(myView: optionC)
            updateBorder(myView: optionD)
        case .optionC:
            updateBorder(myView: optionC, borderWidth: 4)
            updateBorder(myView: optionA)
            updateBorder(myView: optionB)
            updateBorder(myView: optionD)
        case .optionD:
            updateBorder(myView: optionD, borderWidth: 4)
            updateBorder(myView: optionA)
            updateBorder(myView: optionB)
            updateBorder(myView: optionC)
        }
    }
    
    func updateBorder(myView: UIView, borderWidth: CGFloat = 0) {
        myView.layer.borderWidth = borderWidth
        myView.layer.borderColor = UIColor.black.cgColor
    }
    
    
    
}
