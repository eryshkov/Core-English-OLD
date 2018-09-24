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
    
    private init () {}
    
    //MARK: - Sudoku Verbs
    func fill () {
        
        _ = vocabulary.addVerb(verbName: "can", tense: .present, isRegular: false, isStrong: true, isToBe: false, translation: "могу")
        _ = vocabulary.addVerb(verbName: "may", tense: .present, isRegular: false, isStrong: true, isToBe: false, translation: "можно")
        _ = vocabulary.addVerb(verbName: "must", tense: .present, isRegular: false, isStrong: true, isToBe: false, translation: "должен")
        _ = vocabulary.addVerb(verbName: "will", tense: .future, isRegular: false, isStrong: true, isToBe: false, translation: "буду")
        _ = vocabulary.addVerb(verbName: "should", tense: .past, isRegular: false, isStrong: true, isToBe: false, translation: "стоит", "следует")
        _ = vocabulary.addVerb(verbName: "would", tense: .past, isRegular: false, isStrong: true, isToBe: false, translation: "бы")
        
        _ = vocabulary.addVerb(verbName: "am", tense: .present, isRegular: false, isStrong: false, isToBe: true, translation: "является")
        _ = vocabulary.addVerb(verbName: "is", tense: .present, isRegular: false, isStrong: false, isToBe: true, translation: "являюсь")
        _ = vocabulary.addVerb(verbName: "are", tense: .present, isRegular: false, isStrong: false, isToBe: true, translation: "являются")
        
        vocabulary.addVerb(verbName: "will be", tense: .future, isRegular: false, isStrong: false, isToBe: true, translation: "буду являться")?.setLink(toVerbs: "am","is","are")
        vocabulary.addVerb(verbName: "was", tense: .past, isRegular: false, isStrong: false, isToBe: true, translation: "являлся")?.setLink(toVerbs: "am","is")
        vocabulary.addVerb(verbName: "were", tense: .past, isRegular: false, isStrong: false, isToBe: true, translation: "являлись")?.setLink(toVerbs: "are")
        
        vocabulary.addVerb(verbName: "will be able to", tense: .future, isRegular: false, isStrong: true, isToBe: false, translation: "сможет")?.setLink(toVerbs: "can")
        vocabulary.addVerb(verbName: "will allowed to", tense: .future, isRegular: false, isStrong: true, isToBe: false, translation: "будет можно")?.setLink(toVerbs: "may")
        vocabulary.addVerb(verbName: "will have to", tense: .future, isRegular: false, isStrong: true, isToBe: false, translation: "будет должен")?.setLink(toVerbs: "must")
        
        vocabulary.addVerb(verbName: "could", tense: .past, isRegular: false, isStrong: true, isToBe: false, translation: "мог")?.setLink(toVerbs: "can")
        vocabulary.addVerb(verbName: "might", tense: .past, isRegular: false, isStrong: true, isToBe: false, translation: "было можно")?.setLink(toVerbs: "may")
        vocabulary.addVerb(verbName: "had to", tense: .past, isRegular: false, isStrong: true, isToBe: false, translation: "был должен")?.setLink(toVerbs: "must")
    }
    
    
}
