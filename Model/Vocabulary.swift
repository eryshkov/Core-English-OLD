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
            return vocabWord == Word(name: word, isSingular: true, translation: "")
        }
    }
    
    func search(verb name: String) -> Verb?  {
        guard let verb = search(word: name), let unwVerb = verb as? Verb else { return nil }
        return unwVerb
    }
    
    func addVerb(verbName name: String, tense: Tense, isSingular:Bool, isRegular: Bool, isStrong: Bool, isToBe: Bool, translation: String...) -> Verb? {
        
        guard search(word: name) == nil else { return nil}
        
        let newVerb = Verb(name: name, tense: tense, isSingular: isSingular, translation: translation, isRegular: isRegular, isStrong: isStrong, isToBe: isToBe)
        
        self.words.append(newVerb)
        
        return newVerb
    }
    
    fileprivate func addWord<T:NonVerbable>(wordName: String, isSingular:Bool, translation: [String]) -> T? {
        guard search(word: wordName) == nil else { return nil }
        
        let newWord = T(name: wordName, isSingular: isSingular, translation: translation)
        
        self.words.append(newWord as! Word)
        
        return newWord
    }
    
    func addNoun(noun: String, isSingular:Bool, translation: String...) -> Noun? {
        return addWord(wordName: noun, isSingular: isSingular, translation: translation)
    }
    
    func addPronoun(pronoun: String, isSingular:Bool, translation: String...) -> Pronoun? {
         return addWord(wordName: pronoun, isSingular: isSingular, translation: translation)
    }
    
    func addName(name: String, isSingular:Bool, translation: String...) -> Name? {
        return addWord(wordName: name, isSingular: isSingular, translation: translation)
    }
    
//MARK: - Getters
   fileprivate func getAllWords<T>() -> [T] {
        var wordArray = [T]()
        for word in self.words {
            if let newWord = word as? T {
                wordArray.append(newWord)
            }
        }
        
        return wordArray
    }
    
    func getAllVerbs() -> [Verb] {
        return getAllWords()
    }
    
    func getAllNouns() -> [Noun] {
        return getAllWords()
    }
    
    func getAllPronouns() -> [Pronoun] {
        return getAllWords()
    }
    
    func getAllNames() -> [Name] {
        return getAllWords()
    }
}
