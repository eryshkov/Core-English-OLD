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
    var future: Verb?
    var pastV2: Verb?
    var V3: Verb?
    
    init(name: String, translation: [String], future: Verb? = nil, pastV2: Verb? = nil, V3: Verb? = nil, isRegular: Bool, isStrong: Bool) {
        self.future = future
        self.pastV2 = pastV2
        self.V3 = V3
        self.isRegular = isRegular
        self.isStrong = isStrong
        super.init(name: name, translation: translation)
    }
    
    convenience init(nameStrong name: String, translation: String...) {
        self.init(name: name, translation: translation, isRegular: false, isStrong: true)
    }
    
    convenience init(nameRegular name: String, translation: String...) {
        self.init(name: name, translation: translation, isRegular: true, isStrong: false)
    }
    
    convenience init(nameIrregular name: String, translation: String...) {
        self.init(name: name, translation: translation, isRegular: false, isStrong: false)
    }
}
