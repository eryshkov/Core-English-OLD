//
//  Vocabulary.swift
//  Core English
//
//  Created by Evgeniy Ryshkov on 24.08.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

class Vocabulary {
    static var context = Vocabulary()
    
    var words: [Word] = [Word]()
    
    private init () {}
    
//MARK: - CRUD
    func search(word: String) -> Word? {
        return self.words.first { (vocabWord:Word) -> Bool in
            return vocabWord == Word(name: word, translation: "")
        }
    }
    
    func search(verb name: String) -> Verb?  {
        guard let verb = search(word: name), let unwVerb = verb as? Verb else { return nil }
        return unwVerb
    }
    
    func addVerb(verbName name: String, tense: Tense, isRegular: Bool, isStrong: Bool, isToBe: Bool, translation: String...) -> Verb? {
        
        guard search(word: name) == nil else { return nil}
        
        let newVerb = Verb(name: name, tense: tense, translation: translation, isRegular: isRegular, isStrong: isStrong, isToBe: isToBe)
        
        self.words.append(newVerb)
        
        return newVerb
    }
    

    
}
