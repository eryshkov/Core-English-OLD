//
//  Verb.swift
//  Core English
//
//  Created by Evgeniy Ryshkov on 24.08.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

class Verb:Word {
    var isRegular: Bool? //Правильный глагол
    var isStrong: Bool //Сильный глагол
    var isToBe: Bool // to be verb
    var tense: Tense
    var present: [Verb] = [Verb]()
    var future: [Verb] = [Verb]()
    var pastV2: [Verb] = [Verb]()
    var V3: [Verb] = [Verb]()
    
    let vocabulary = Vocabulary.context
    
    func setLink(toVerbs verbs: String...) {
        for verb in verbs {
            guard let tmpVerb = vocabulary.search(verb: verb) else { continue }
            
            switch self.tense {
            case .future:
                tmpVerb.future.append(self)
            case .past:
                tmpVerb.pastV2.append(self)
            case .present:
                tmpVerb.present.append(self)
            case .V3:
                tmpVerb.V3.append(self)
            }
            
            switch tmpVerb.tense {
            case .past:
                self.pastV2.append(tmpVerb)
            case .present:
                self.present.append(tmpVerb)
            case .future:
                self.future.append(tmpVerb)
            case .V3:
                self.V3.append(tmpVerb)
            }
        }
    }
    
    init(name: String, tense: Tense, isSingular: Bool, translation: [String], present: Verb? = nil, future: Verb? = nil, pastV2: Verb? = nil, V3: Verb? = nil, isRegular: Bool? = nil, isStrong: Bool, isToBe: Bool) {
        self.isRegular = isRegular
        self.isStrong = isStrong
        self.isToBe = isToBe
        self.tense = tense
        super.init(name: name, isSingular: isSingular, translation: translation)
    }
    
    
//    convenience init(v1Strong name: String, translation: String...) {
//        self.init(name: name, tense: .present, translation: translation, isRegular: false, isStrong: true, isToBe: false)
//    }
//
//    convenience init(v1Regular name: String, translation: String...) {
//        self.init(name: name, tense: .present, translation: translation, isRegular: true, isStrong: false, isToBe: false)
//    }
//
//    convenience init(v1Irregular name: String, translation: String...) {
//        self.init(name: name, tense: .present, translation: translation, isRegular: false, isStrong: false, isToBe: false)
//    }
//
//    convenience init(v1ToBe name: String, translation: String...) {
//        self.init(name: name, tense: .present, translation: translation, isRegular: false, isStrong: false, isToBe: true)
//    }
    

}

extension Verb: CustomStringConvertible {
    
    private func getStrForTranslation() -> String {
        var tempStr = ""
        let verb = self
        
        for string in verb.translation {
            tempStr.append("translation: \(string); ")
        }
        
        return tempStr.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    private func getStrForTenses() -> String {
        var tempStr = ""
        let verb = self
        
        for verb in verb.present {
            tempStr.append("present: \(verb.name); ")
        }
        
        for verb in self.pastV2 {
            tempStr.append("pastV2: \(verb.name); ")
        }
        
        for verb in self.future {
            tempStr.append("future: \(verb.name); ")
        }
        
        for verb in self.V3 {
            tempStr.append("V3: \(verb.name); ")
        }
        
        return tempStr.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    var description: String {
        return "\(self.name); \(self.tense); \(self.getStrForTranslation()) \(self.getStrForTenses())".trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    
}


