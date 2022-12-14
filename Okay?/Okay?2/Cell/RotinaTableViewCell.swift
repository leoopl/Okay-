//
//  RotinaTableViewCell.swift
//  telaRotina
//
//  Created by Student on 12/12/22.
//  Copyright © 2022 teste. All rights reserved.
//

import UIKit

class RotinaTableViewCell: UITableViewCell {

    
    @IBOutlet weak var tituloLabel: UILabel!
    
    @IBOutlet weak var descricaoLabel: UILabel!
    @IBOutlet weak var inicioLabel: UILabel!
    
    @IBOutlet weak var fimLabel: UILabel!
    
    func set(titulo: String, descricao: String, inicio: String, fim: String){
        tituloLabel.text = titulo
        descricaoLabel.text = descricao
        inicioLabel.text = inicio
        fimLabel.text = fim
    }
    
}
