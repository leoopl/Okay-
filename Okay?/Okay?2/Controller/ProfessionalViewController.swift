//
//  ProfessionalViewController.swift
//  project
//
//  Created by Student on 14/12/22.
//  Copyright © 2022 Barcelos. All rights reserved.
//

import UIKit

class ProfessionalViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let url = "http://127.0.0.1:1880/api/professional";
    @IBOutlet weak var tableView: UITableView!
    var professionals: [Professional] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad();
        self.adjustTableViewDelegate();
        self.getProfessionals {
            self.tableView.reloadData();
        };
    }
    
    func adjustTableViewDelegate() {
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
        self.tableView.reloadData();
    }
    
    func getProfessionals(callback: @escaping () -> ()) {
        let url = URL(string: self.url);

        URLSession.shared.dataTask(with: url!) {
            data, response, err in

            do {
                if err == nil {
                    let array = try JSONDecoder().decode(ProfessionalResponse.self, from: data!);
                    self.professionals = array.professionals;
                    DispatchQueue.main.async { callback(); }
                }
            } catch {
                print(error);
            }
        }.resume();
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return self.professionals.count;
    }
       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "professional", for: indexPath) as! ProfessionalTableViewCell;
        let professional = self.professionals[indexPath.row];
        cell.professional = professional;
        cell.ready();
        return cell;
    }
    
    @IBAction func onClickBackP(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = self.tableView.indexPathForSelectedRow else { return; }
        if let view = segue.destination as? ProfessionalDetailViewController {
            if segue.identifier == "professionalDetail" {
                view.professional = self.professionals[indexPath.row];
            }
        }
    }
}
