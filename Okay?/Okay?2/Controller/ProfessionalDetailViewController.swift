//
//  ProfessionalDetailViewController.swift
//  project
//
//  Created by Student on 13/12/22.
//  Copyright © 2022 Barcelos. All rights reserved.
//

import UIKit

class ProfessionalDetailViewController: UIViewController {
    var professional: Professional? = nil;
    @IBOutlet weak var profession: UILabel!
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var resume: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var phone: UILabel!
    @IBOutlet weak var name: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        self.ready();
    }
    
    func ready() -> Void {
        self.name?.text = self.professional!.name;
        self.email?.text = self.professional!.email;
        self.phone?.text = self.professional!.phone;
        self.resume?.text = self.professional!.resume;
        self.profession?.text = self.professional!.profession;
        self.photo?.image = UIImage(named: self.professional!.photo!);
        
        let city = self.professional!.address!.city!;
        let state = self.professional!.address!.state!;
        let street = self.professional!.address!.street!;
        let number = self.professional!.address!.number!;
        let country = self.professional!.address!.country!;
        let neighborhood = self.professional!.address!.neighborhood!;
        self.address?.text = "\(street), \(number), \(neighborhood) - \(city), \(state), \(country)";
    }
}
