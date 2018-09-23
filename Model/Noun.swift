//
//  Noun.swift
//  Core English
//
//  Created by Evgeniy Ryshkov on 23.09.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

class Noun:Word {//существительное
    var isSingular:Bool // Единственное число
    
    init(name: String, translation: [String], isSingular:Bool) {
        self.isSingular = isSingular
        super.init(name: name, translation: translation)
    }
    
    convenience init(singularName name: String, translation: String...) {
        self.init(name: name, translation: translation, isSingular: true)
    }
    
    convenience init(NonSingularName name: String, translation: String...) {
        self.init(name: name, translation: translation, isSingular: false)
    }
}
