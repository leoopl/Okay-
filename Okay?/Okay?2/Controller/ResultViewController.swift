//
//  ResultViewController.swift
//  Okay?2
//
//  Created by Student on 14/12/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultImageView: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    var finalResult = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        setvariables()
    }

    @IBAction func onClickMenu(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }


func setvariables(){
    print("FINAL AQUI", finalResult)
    if (finalResult <= 10) {
    resultLabel.text = "Esses altos e baixos são normal"
        resultImageView.image = UIImage(named:"happy")
    }
    else if (10 < finalResult) && (finalResult <= 16){
    resultLabel.text = "Seu humor pode está um pouco estranho, mas amanhã é um novo dia"
        resultImageView.image = UIImage(named:"happy")
    }
    else if (16 < finalResult ) && (finalResult <= 20){
    resultLabel.text = "Você pode está um pouco triste e confuso com seus pensamentos, fica calmo, respira. A vida pode ser um pouco complicada as vezes"
        resultImageView.image = UIImage(named:"neutral")
    }
    else if ( 20 < finalResult ) && (finalResult <= 30){
    resultLabel.text = "Nunca negue ajuda, desabafar com alguém vai te ajudar muito. Temos o chat do CVV pra te escutar"
        resultImageView.image = UIImage(named:"neutral")
    }
    else if (30 < finalResult ) && (finalResult <= 40){
    resultLabel.text = "Um psicologo só vai te ajudar e aliviar tudo isso, não tenha medo de se abrir"
        resultImageView.image = UIImage(named:"sad")
    }
    else{
    resultLabel.text = "Por favor procure ajudar, temos varios medicos que podem te ajudar. Queremos o seu bem"
        resultImageView.image = UIImage(named:"sad")
    }
}
}
