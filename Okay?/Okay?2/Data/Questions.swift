//
//  Questions.swift
//  Okay?2
//
//  Created by Student on 10/12/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation

struct listardb: Codable {
    let questions: [allOptions]
}


struct allOptions: Codable {
    let id: Int?
    let options: [String]?
    let note: String?
}
