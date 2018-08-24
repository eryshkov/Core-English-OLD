//
//  Verb.swift
//  Core English
//
//  Created by Evgeniy Ryshkov on 24.08.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

class Verb:Word {
    var isRegular: Bool //Правильный глагол
    var isStrong: Bool //Сильный глагол
    var future: [String]
    var pastV2: [String]
    var V3: [String]
    
    init(nameStrong name: String, translation: String...) {
        self.isRegular = false
        self.future = [String]()
        self.pastV2 = [String]()
        self.V3 = [String]()
        self.isStrong = true
        super.init(name: name, translation: translation)
    }
    
    init(nameRegular name: String, translation: String...) {
        self.isRegular = true
        self.future = [String]()
        self.pastV2 = [String]()
        self.V3 = [String]()
        self.isStrong = false
        super.init(name: name, translation: translation)
    }
    
    init(nameIrregular name: String, translation: String...) {
        self.isRegular = false
        self.future = [String]()
        self.pastV2 = [String]()
        self.V3 = [String]()
        self.isStrong = false
        super.init(name: name, translation: translation)
    }
}
