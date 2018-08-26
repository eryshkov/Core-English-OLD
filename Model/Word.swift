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
    
    init(name: String, translation: [String]) {
        self.name = name
        self.translation = translation
    }
    
    convenience init(name: String, translation: String...) {
        self.init(name: name, translation: translation)
    }
    
}

//MARK: - Word:Hashable
extension Word:Hashable {
    var hashValue: Int {
        return self.name.hashValue
    }
    
    static func == (lhs: Word, rhs: Word) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}
