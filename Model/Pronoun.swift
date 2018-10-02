//
//  Pronoun.swift
//  Core English
//
//  Created by Evgeniy Ryshkov on 24.08.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

final class Pronoun:Word, NonVerbable {//Местоимение
    
    convenience init(singularName name: String, translation: String...) {
        self.init(name: name, isSingular: true, translation: translation)
    }
    
    convenience init(NonSingularName name: String, translation: String...) {
        self.init(name: name, isSingular: true, translation: translation)
    }
}
