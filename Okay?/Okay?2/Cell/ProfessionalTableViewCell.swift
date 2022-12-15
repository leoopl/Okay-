//
//  ProfessionalTableViewCell.swift
//  project
//
//  Created by Student on 12/12/22.
//  Copyright © 2022 Barcelos. All rights reserved.
//

import UIKit;

class ProfessionalTableViewCell: UITableViewCell {
    var professional: Professional? = nil;
    @IBOutlet weak var profession: UILabel!
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var name: UILabel!
    
    func ready() -> Void {
        self.name?.text = self.professional!.name;
        self.profession?.text = self.professional!.profession;
        self.photo?.image = UIImage(named: self.professional!.photo!);
    }
}
