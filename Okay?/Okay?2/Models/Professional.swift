//
//  Professional.swift
//  project
//
//  Created by Student on 13/12/22.
//  Copyright © 2022 Barcelos. All rights reserved.
//

struct Professional: Codable {
    let id: Int?;
    var name: String?;
    var email: String?;
    var phone: String?;
    var photo: String?;
    var resume: String?;
    var profession: String?;
    var address: ProfessionalAddress?;
}
