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
    
    func search(word: String) -> Word? {
        return self.words.first { (vocabWord:Word) -> Bool in
            return vocabWord == Word(name: word, translation: "")
        }
    }
}
