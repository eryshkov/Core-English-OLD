//
//  Vocabulary.swift
//  Core English
//
//  Created by Evgeniy Ryshkov on 24.08.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

class Vocabulary {
    static var context = Vocabulary()
    
    var words: Set<Word>
    
    private init () {
        self.words = [
        Verb(v1Strong: "can", translation: "могу"),
        Verb(v1Strong: "may", translation: "можно"),
        Verb(v1Strong: "must", translation: "должен"),
        Verb(v1Strong: "will", translation: "буду"),
        Verb(v1Strong: "sould", translation: "стоит", "следует"),
        Verb(v1Strong: "would", translation: "бы"),
        
        Verb(v1ToBe: "am", translation: "является"),
        Verb(v1ToBe: "is", translation: "являюсь"),
        Verb(v1ToBe: "are", translation: "являются"),
        
        ]
    }
    
//MARK: - CRUD
    func search(word: String) -> Word? {
        return self.words.first { (vocabWord:Word) -> Bool in
            return vocabWord == Word(name: word, translation: "")
        }
    }
    
    func addVerb(verbName name: String, isRegular: Bool, isStrong: Bool, translation: String...) -> Bool {
        guard let searchedWord = search(word: name), let _ = searchedWord as? Verb else { return false }
        
        let newVerb = Verb(name: name, translation: translation, isRegular: isRegular, isStrong: isStrong, isToBe: false)
        
        self.words.insert(newVerb)
        
        return true
    }
    
    func addVerb(v2VerbName name: String, isRegular: Bool, isStrong: Bool, v1Name verbNameLink: String? = nil, translation: String...) -> Bool {
        guard let searchedWord = search(word: name), let _ = searchedWord as? Verb else { return false }
        
        let newVerb = Verb(name: name, translation: translation, isRegular: isRegular, isStrong: isStrong, isToBe: false)
        
        if let v1VerbName = verbNameLink, let v1Verb = search(word: v1VerbName) as? Verb {
            newVerb.present = v1Verb
        }
        
        self.words.insert(newVerb)
        
        return true
    }
}
