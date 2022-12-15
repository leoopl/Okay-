//
//  StartViewController.swift
//  Okay?2
//
//  Created by Student on 10/12/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    
    @IBOutlet weak var startButton: UIButton!{
        didSet {
        startButton.layer.cornerRadius = startButton.frame.height/8
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickStartback(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}
