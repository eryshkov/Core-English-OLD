
//
//  Verbs.swift
//  Core English
//
//  Created by Evgeniy Ryshkov on 23.08.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//


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











