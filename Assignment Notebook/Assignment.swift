//
//  Assignment.swift
//  Assignment Notebook
//
//  Created by tbredemeier on 6/21/18.
//  Copyright © 2018 tbredemeier. All rights reserved.
//

import UIKit

class Assignment: Codable {

    var title : String
    var subject : String
    var dueDate : String
    var detail : String

    init(title: String, subject: String, dueDate: String, detail: String) {
        self.title = title
        self.subject = subject
        self.dueDate = dueDate
        self.detail = detail
    }
}
