//
//  Pronoun.swift
//  Core English
//
//  Created by Evgeniy Ryshkov on 24.08.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

class Pronoun:Word {//Местоимение
    var isSingular:Bool // Единственное число
    
    init(singularName name: String, translation: String...) {
        self.isSingular = true
        super.init(name: name, translation: translation)
    }
    
    init(NonSingularName name: String, translation: String...) {
        self.isSingular = false
        super.init(name: name, translation: translation)
    }
}
