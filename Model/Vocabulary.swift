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
    
    func search(verb name: String) -> Verb?  {
        guard let verb = search(word: name), let unwVerb = verb as? Verb else { return nil }
        return unwVerb
    }
    
    func addVerb(verbName name: String, tense: Tense, linkToV1Verb v1Verb: String? = nil, isRegular: Bool, isStrong: Bool, isToBe: Bool, translation: String...) -> Verb? {
        
        guard search(word: name) == nil else { return nil}
        
        let newVerb = Verb(name: name, translation: translation, isRegular: isRegular, isStrong: isStrong, isToBe: isToBe)
        
        if tense != .present, let theV1Verb = v1Verb, let unwV1Verb = search(verb: theV1Verb){
            newVerb.present = unwV1Verb
        }
        
        switch tense {
        case .past:
            newVerb.pastV2 = newVerb
        case .future:
            newVerb.future = newVerb
        case .V3:
            newVerb.V3 = newVerb
        case .present:
            newVerb.present = newVerb
        }
        
        self.words.insert(newVerb)
        
        return newVerb
    }
    
}
