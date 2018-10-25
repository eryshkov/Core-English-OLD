//
//  Word.swift
//  Core English
//
//  Created by Evgeniy Ryshkov on 24.08.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

class Word {
    var name: String
    var translation: [String]
    var isSingular:Bool // Единственное число
    
    init(name: String, isSingular:Bool, translation: [String]) {
        self.name = name
        self.translation = translation
        self.isSingular = isSingular
    }
    
    convenience init(name: String, isSingular:Bool, translation: String...) {
        self.init(name: name, isSingular: isSingular, translation: translation)
    }
    
}

//MARK: - Word:Hashable
extension Word:Hashable, Equatable {
    var hashValue: Int {
        return self.name.hashValue
    }
    
    static func == (lhs: Word, rhs: Word) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}
