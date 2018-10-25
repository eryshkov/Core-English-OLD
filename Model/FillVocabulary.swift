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
    
    private init () {fill()}
    
    //MARK: - Sudoku Verbs
    func fill () {
        
        _ = vocabulary.addVerb(verbName: "can", tense: .present, isSingular: true, isRegular: nil, isStrong: true, isToBe: false, translation: "могу")
        _ = vocabulary.addVerb(verbName: "may", tense: .present, isSingular: true, isRegular: nil, isStrong: true, isToBe: false, translation: "можно")
        _ = vocabulary.addVerb(verbName: "must", tense: .present, isSingular: true, isRegular: nil, isStrong: true, isToBe: false, translation: "должен")
        _ = vocabulary.addVerb(verbName: "will", tense: .future, isSingular: true, isRegular: nil, isStrong: true, isToBe: false, translation: "буду")
        _ = vocabulary.addVerb(verbName: "should", tense: .past, isSingular: true, isRegular: nil, isStrong: true, isToBe: false, translation: "стоит", "следует")
        _ = vocabulary.addVerb(verbName: "would", tense: .past, isSingular: true, isRegular: nil, isStrong: true, isToBe: false, translation: "бы")
        
        _ = vocabulary.addVerb(verbName: "am", tense: .present, isSingular: true, isRegular: nil, isStrong: false, isToBe: true, translation: "является")
        _ = vocabulary.addVerb(verbName: "is", tense: .present, isSingular: true, isRegular: nil, isStrong: false, isToBe: true, translation: "являюсь")
        _ = vocabulary.addVerb(verbName: "are", tense: .present, isSingular: false, isRegular: nil, isStrong: false, isToBe: true, translation: "являются")
        
        vocabulary.addVerb(verbName: "will be", tense: .future, isSingular: true, isRegular: nil, isStrong: false, isToBe: true, translation: "буду являться")?.setLink(toVerbs: "am","is","are")
        vocabulary.addVerb(verbName: "was", tense: .past, isSingular: true, isRegular: nil, isStrong: false, isToBe: true, translation: "являлся")?.setLink(toVerbs: "am","is")
        vocabulary.addVerb(verbName: "were", tense: .past, isSingular: false, isRegular: false, isStrong: false, isToBe: true, translation: "являлись")?.setLink(toVerbs: "are")
        
        vocabulary.addVerb(verbName: "will be able to", tense: .future, isSingular: true, isRegular: nil, isStrong: true, isToBe: false, translation: "сможет")?.setLink(toVerbs: "can")
        vocabulary.addVerb(verbName: "will allowed to", tense: .future, isSingular: true, isRegular: nil, isStrong: true, isToBe: false, translation: "будет можно")?.setLink(toVerbs: "may")
        vocabulary.addVerb(verbName: "will have to", tense: .future, isSingular: true, isRegular: nil, isStrong: true, isToBe: false, translation: "будет должен")?.setLink(toVerbs: "must")
        
        vocabulary.addVerb(verbName: "could", tense: .past, isSingular: true, isRegular: nil, isStrong: true, isToBe: false, translation: "мог")?.setLink(toVerbs: "can")
        vocabulary.addVerb(verbName: "might", tense: .past, isSingular: true, isRegular: nil, isStrong: true, isToBe: false, translation: "было можно")?.setLink(toVerbs: "may")
        vocabulary.addVerb(verbName: "had to", tense: .past, isSingular: true, isRegular: nil, isStrong: true, isToBe: false, translation: "был должен")?.setLink(toVerbs: "must")
        
        _ = vocabulary.addName(name: "Ricky", isSingular: true, translation: "")
        _ = vocabulary.addName(name: "Evgeniy", isSingular: true, translation: "")
        _ = vocabulary.addName(name: "Serezha", isSingular: true, translation: "")
        _ = vocabulary.addName(name: "Larisa", isSingular: true, translation: "")
        
        _ = vocabulary.addNoun(noun: "dog", isSingular: true, translation: "собака")
        _ = vocabulary.addNoun(noun: "cat", isSingular: true, translation: "кошка")
        _ = vocabulary.addNoun(noun: "sun", isSingular: true, translation: "солнце")
        _ = vocabulary.addNoun(noun: "meal", isSingular: true, translation: "еда")
        _ = vocabulary.addNoun(noun: "moon", isSingular: true, translation: "луна")
        _ = vocabulary.addNoun(noun: "earth", isSingular: true, translation: "земля")
        _ = vocabulary.addNoun(noun: "turtle", isSingular: true, translation: "черепаха")
        _ = vocabulary.addNoun(noun: "rabbit", isSingular: true, translation: "кролик")
        _ = vocabulary.addNoun(noun: "window", isSingular: true, translation: "окно")
        
        _ = vocabulary.addPronoun(pronoun: "I", isSingular: true, translation: "я")
        _ = vocabulary.addPronoun(pronoun: "you", isSingular: true, translation: "вы")
        _ = vocabulary.addPronoun(pronoun: "we", isSingular: false, translation: "мы")
        _ = vocabulary.addPronoun(pronoun: "they", isSingular: false, translation: "они")
        _ = vocabulary.addPronoun(pronoun: "he", isSingular: true, translation: "он")
        _ = vocabulary.addPronoun(pronoun: "she", isSingular: true, translation: "она")
        _ = vocabulary.addPronoun(pronoun: "it", isSingular: true, translation: "это")
    }
    
    
}
