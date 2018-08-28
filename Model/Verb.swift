//
//  Verb.swift
//  Core English
//
//  Created by Evgeniy Ryshkov on 24.08.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

class Verb:Word {
    var isRegular: Bool //Правильный глагол
    var isStrong: Bool //Сильный глагол
    var isToBe: Bool // to be verb
    var present: Verb?
    var future: Verb?
    var pastV2: Verb?
    var V3: Verb?
    
    func getTense() -> Tense? {
        switch self {
        case self.present:
            return .present
        case self.future:
            return .future
        case self.pastV2:
            return .past
        case self.V3:
            return .V3
        default:
            return nil
        }
    }
    
    init(name: String, translation: [String], present: Verb? = nil, future: Verb? = nil, pastV2: Verb? = nil, V3: Verb? = nil, isRegular: Bool, isStrong: Bool, isToBe: Bool) {
        self.isRegular = isRegular
        self.isStrong = isStrong
        self.isToBe = isToBe
        self.present = present
        self.future = future
        self.pastV2 = pastV2
        self.V3 = V3
        super.init(name: name, translation: translation)
    }
    
    convenience init(v1Strong name: String, translation: String...) {
        self.init(name: name, translation: translation, isRegular: false, isStrong: true, isToBe: false)
        self.present = self
    }
    
    convenience init(v1Regular name: String, translation: String...) {
        self.init(name: name, translation: translation, isRegular: true, isStrong: false, isToBe: false)
        self.present = self
    }
    
    convenience init(v1Irregular name: String, translation: String...) {
        self.init(name: name, translation: translation, isRegular: false, isStrong: false, isToBe: false)
        self.present = self
    }
    
    convenience init(v1ToBe name: String, translation: String...) {
        self.init(name: name, translation: translation, isRegular: false, isStrong: false, isToBe: true)
        self.present = self
    }
    
//    convenience init(v2NameStrong name: String, v1Name: String? = nil, translation: String...) {
//        self.init(name: name, translation: translation, isRegular: false, isStrong: true)
//        if let unwV1Name = v1Name, let unwVerb = Vocabulary.context.search(word: unwV1Name) as? Verb {
//            self.present = unwVerb
//        }
//    }
}
