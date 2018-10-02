//
//  Noun.swift
//  Core English
//
//  Created by Evgeniy Ryshkov on 23.09.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

final class Noun:Word, NonVerbable {//существительное
    
    convenience init(singularName name: String, translation: String...) {
        self.init(name: name, isSingular: true, translation: translation)
    }
    
    convenience init(NonSingularName name: String, translation: String...) {
        self.init(name: name, isSingular: false, translation: translation)
    }
    
}
