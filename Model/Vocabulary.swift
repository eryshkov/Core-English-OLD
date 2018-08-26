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
        Verb(nameStrong: "can", translation: "могу"),
        Verb(nameStrong: "may", translation: "можно"),
        Verb(nameStrong: "must", translation: "должен"),
        Verb(nameStrong: "will", translation: "буду"),
        Verb(nameStrong: "sould", translation: "стоит", "следует"),
        Verb(nameStrong: "would", translation: "бы")
        
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
        
        let newVerb = Verb(name: name, translation: translation, isRegular: isRegular, isStrong: isStrong)
        
        self.words.insert(newVerb)
        
        return true
    }
    
    func addVerb(v2VerbName name: String, isRegular: Bool, isStrong: Bool, v1VerbName: String? = nil, translation: String...) -> Bool {
        guard let searchedWord = search(word: name), let _ = searchedWord as? Verb else { return false }
        
        let newVerb = Verb(name: name, translation: translation, isRegular: isRegular, isStrong: isStrong)
        //TODO: - подумать над связями глаголов между собой по временам
        
        self.words.insert(newVerb)
        
        return true
    }
}
