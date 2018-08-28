//
//  FillVocabulary.swift
//  Core English
//
//  Created by Evgeniy Ryshkov on 28.08.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import Foundation
class FillVocabulary {
    static let context = FillVocabulary()
    
    let vocabulary = Vocabulary.context
    
    func fill () {
        
        _ = vocabulary.addVerb(verbName: "can", tense: .present, isRegular: false, isStrong: true, isToBe: false, translation: "могу")
        _ = vocabulary.addVerb(verbName: "may", tense: .present, isRegular: false, isStrong: true, isToBe: false, translation: "можно")
        _ = vocabulary.addVerb(verbName: "must", tense: .present, isRegular: false, isStrong: true, isToBe: false, translation: "должен")
        _ = vocabulary.addVerb(verbName: "will", tense: .present, isRegular: false, isStrong: true, isToBe: false, translation: "буду")
        _ = vocabulary.addVerb(verbName: "should", tense: .present, isRegular: false, isStrong: true, isToBe: false, translation: "стоит", "следует")
        _ = vocabulary.addVerb(verbName: "would", tense: .present, isRegular: false, isStrong: true, isToBe: false, translation: "бы")
        
        _ = vocabulary.addVerb(verbName: "am", tense: .present, isRegular: false, isStrong: false, isToBe: true, translation: "является")
        _ = vocabulary.addVerb(verbName: "is", tense: .present, isRegular: false, isStrong: false, isToBe: true, translation: "являюсь")
        _ = vocabulary.addVerb(verbName: "are", tense: .present, isRegular: false, isStrong: false, isToBe: true, translation: "являются")
        
        vocabulary.addVerb(verbName: "will be", tense: .future, isRegular: false, isStrong: false, isToBe: false, translation: "буду являться")?.setLink(toVerbs: "am","is","are")
    }
    
    private init () {}
}
