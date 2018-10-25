//
//  Adjective.swift
//  Core English
//
//  Created by Evgeniy Ryshkov on 25/10/2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

final class Adjective:Word, NonVerbable {//Прилагательное
    
    convenience init(singularName name: String, translation: String...) {
        self.init(name: name, isSingular: true, translation: translation)
    }
    
    convenience init(NonSingularName name: String, translation: String...) {
        self.init(name: name, isSingular: true, translation: translation)
    }
}
