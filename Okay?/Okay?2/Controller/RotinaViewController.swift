//
//  ViewController.swift
//  telaRotina
//
//  Created by Student on 10/12/22.
//  Copyright © 2022 teste. All rights reserved.
//

import UIKit

class RotinaViewController: UIViewController {
    
    let rotinas = [
        Rotina(titulo: "Se alimentar", descricao: "Comer todo dia bem cedo", inicio: "01/02/2022 12:00", fim: "31/06/2089 13:00"),
        Rotina(titulo: "Arrumar as merda do trabalho", descricao: "Arrumar aquela empresa de merda", inicio: "01/06/2022 9:00", fim: "31/06/3089 9:30"),
        Rotina(titulo: "Relaxar depois do trabalho", descricao: "Relaxar depois de um árduo dia de trabalho", inicio: "01/02/2022  18:00", fim: "31/12/2089 19:30"),
        ]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onClickBackRotina(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}

extension RotinaViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rotinas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "rotinaCell", for: indexPath) as! RotinaTableViewCell
        
        let rotina = rotinas[indexPath.row]
        
        cell.set(titulo: rotina.titulo, descricao: rotina.descricao, inicio: rotina.inicio, fim: rotina.fim)
        
        return cell
    }
    
}


