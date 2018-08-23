
//
//  Verbs.swift
//  Core English
//
//  Created by Evgeniy Ryshkov on 23.08.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import Foundation

class Translation {
    var en: String
    var rus: [String]
    
    init(en: String, rus: [String]) {
        self.en = en
        self.rus = rus
        
    }
}

class Verb: Hashable {
    var present: Translation
    var future: Translation?
    var past_V2: Translation?
    var V3: Translation?
    var hashValue: Int {
        return (present.en).hashValue
    }
    
    private init(present: Translation, future: Translation, past_V2: Translation, V3: Translation) {
        self.present = present
        self.future = future
        self.past_V2 = past_V2
        self.V3 = V3
    }
    
    init(present_en present: String, trans_ru translation: String...) {
        self.present = Translation(en: present, rus: translation)
    }
    
    static func == (lhs: Verb, rhs: Verb) -> Bool {
        return lhs.present.en == rhs.present.en
    }
}

class Verbs {
    static var vocab = Verbs()
    
    var simple: Set<Verb>?
    
    var strong: Set<Verb>? = [
        Verb(present_en: "can", trans_ru: "могу"),
        Verb(present_en: "may", trans_ru: "можно"),
        Verb(present_en: "must", trans_ru: "должен"),
        Verb(present_en: "will", trans_ru: "буду"),
        Verb(present_en: "sould", trans_ru: "стоит", "следует"),
        Verb(present_en: "would", trans_ru: "бы")
    ]
    
    var toBe: Set<Verb>? = [
        
    ]
    
    private init () {}
    
    func find(word: String) -> Verb? {
        let searchEngine = { (verb: Verb) -> Bool in
            return verb.present.en == word
        }
        
        if let simple = self.simple {
            return simple.first(where: searchEngine)
        }
        
        if let strong = self.strong {
            return strong.first(where: searchEngine)
        }
        
        if let toBe = self.toBe {
            return toBe.first(where: searchEngine)
        }
        
        return nil
    }
}











