//
//  ProfessionalResponse.swift
//  project
//
//  Created by Student on 15/12/22.
//  Copyright © 2022 Barcelos. All rights reserved.
//

import Foundation

struct ProfessionalResponse: Codable {
    let professionals: [Professional];
    let _rev: String?;
    let _id: String?;
}
