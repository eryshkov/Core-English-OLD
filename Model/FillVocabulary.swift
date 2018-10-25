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
        
        //MARK: - Verbs
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
        
        //MARK: - Names
        _ = vocabulary.addName(name: "Ricky", isSingular: true, translation: "")
        _ = vocabulary.addName(name: "Evgeniy", isSingular: true, translation: "")
        _ = vocabulary.addName(name: "Serezha", isSingular: true, translation: "")
        _ = vocabulary.addName(name: "Larisa", isSingular: true, translation: "")
        _ = vocabulary.addName(name: "Lena", isSingular: true, translation: "")
        _ = vocabulary.addName(name: "David", isSingular: true, translation: "")
        _ = vocabulary.addName(name: "Andrew", isSingular: true, translation: "")
        _ = vocabulary.addName(name: "Sergey Lazarev", isSingular: true, translation: "")
        
        //MARK: - Nouns
        _ = vocabulary.addNoun(noun: "dog", isSingular: true, translation: "собака")
        _ = vocabulary.addNoun(noun: "cat", isSingular: true, translation: "кошка")
        _ = vocabulary.addNoun(noun: "sun", isSingular: true, translation: "солнце")
        _ = vocabulary.addNoun(noun: "meal", isSingular: true, translation: "еда")
        _ = vocabulary.addNoun(noun: "moon", isSingular: true, translation: "луна")
        _ = vocabulary.addNoun(noun: "earth", isSingular: true, translation: "земля")
        _ = vocabulary.addNoun(noun: "turtle", isSingular: true, translation: "черепаха")
        _ = vocabulary.addNoun(noun: "rabbit", isSingular: true, translation: "кролик")
        _ = vocabulary.addNoun(noun: "window", isSingular: true, translation: "окно")
        _ = vocabulary.addNoun(noun: "mother", isSingular: true, translation: "мама")
        _ = vocabulary.addNoun(noun: "father", isSingular: true, translation: "папа")
        
        //MARK: - Pronouns
        _ = vocabulary.addPronoun(pronoun: "I", isSingular: true, translation: "я")
        _ = vocabulary.addPronoun(pronoun: "you", isSingular: true, translation: "вы")
        _ = vocabulary.addPronoun(pronoun: "we", isSingular: false, translation: "мы")
        _ = vocabulary.addPronoun(pronoun: "they", isSingular: false, translation: "они")
        _ = vocabulary.addPronoun(pronoun: "he", isSingular: true, translation: "он")
        _ = vocabulary.addPronoun(pronoun: "she", isSingular: true, translation: "она")
        _ = vocabulary.addPronoun(pronoun: "it", isSingular: true, translation: "это")
        
        //MARK: - Adjectives
        _ = vocabulary.addAdjective(name: "first", isSingular: true, translation: "первый")
        _ = vocabulary.addAdjective(name: "good", isSingular: true, translation: "хороший")
        _ = vocabulary.addAdjective(name: "big", isSingular: true, translation: "большой")
        _ = vocabulary.addAdjective(name: "hard", isSingular: true, translation: "жесткий")
        _ = vocabulary.addAdjective(name: "honest", isSingular: true, translation: "честный")
        _ = vocabulary.addAdjective(name: "noisy", isSingular: true, translation: "шумный")
        _ = vocabulary.addAdjective(name: "rich", isSingular: true, translation: "богатый")
        _ = vocabulary.addAdjective(name: "lazy", isSingular: true, translation: "ленивый")
        _ = vocabulary.addAdjective(name: "similar", isSingular: true, translation: "похожий")
        _ = vocabulary.addAdjective(name: "soft", isSingular: true, translation: "мягкий")
        _ = vocabulary.addAdjective(name: "angry", isSingular: true, translation: "сердитый")
        _ = vocabulary.addAdjective(name: "merry", isSingular: true, translation: "веселый")
        _ = vocabulary.addAdjective(name: "smart", isSingular: true, translation: "разумный")
        _ = vocabulary.addAdjective(name: "long", isSingular: true, translation: "длинный")
        _ = vocabulary.addAdjective(name: "young", isSingular: true, translation: "молодой")
        _ = vocabulary.addAdjective(name: "fresh", isSingular: true, translation: "свежий")
        _ = vocabulary.addAdjective(name: "high", isSingular: true, translation: "высокий")
        _ = vocabulary.addAdjective(name: "clean", isSingular: true, translation: "чистый")
        _ = vocabulary.addAdjective(name: "clear", isSingular: true, translation: "понятный")
        _ = vocabulary.addAdjective(name: "simple", isSingular: true, translation: "простой")
        
        _ = vocabulary.addAdjective(name: "last", isSingular: true, translation: "последний")
        _ = vocabulary.addAdjective(name: "bad", isSingular: true, translation: "плохой")
        _ = vocabulary.addAdjective(name: "small", isSingular: true, translation: "маленький")
        _ = vocabulary.addAdjective(name: "easy", isSingular: true, translation: "легкий")
        _ = vocabulary.addAdjective(name: "dishonest", isSingular: true, translation: "нечестный")
        _ = vocabulary.addAdjective(name: "quiet", isSingular: true, translation: "тихий")
        _ = vocabulary.addAdjective(name: "poor", isSingular: true, translation: "бедный")
        _ = vocabulary.addAdjective(name: "hardworking", isSingular: true, translation: "работящий")
        _ = vocabulary.addAdjective(name: "different", isSingular: true, translation: "другой")
        _ = vocabulary.addAdjective(name: "firm", isSingular: true, translation: "твердый")
        _ = vocabulary.addAdjective(name: "nice", isSingular: true, translation: "хороший")
        _ = vocabulary.addAdjective(name: "sad", isSingular: true, translation: "грустный")
        _ = vocabulary.addAdjective(name: "stupid", isSingular: true, translation: "глупый")
        _ = vocabulary.addAdjective(name: "short", isSingular: true, translation: "короткий")
        _ = vocabulary.addAdjective(name: "old", isSingular: true, translation: "старый")
        _ = vocabulary.addAdjective(name: "stale", isSingular: true, translation: "несвежий")
        _ = vocabulary.addAdjective(name: "low", isSingular: true, translation: "низкий")
        _ = vocabulary.addAdjective(name: "dirty", isSingular: true, translation: "грязный")
        _ = vocabulary.addAdjective(name: "unclear", isSingular: true, translation: "непонятный")
        _ = vocabulary.addAdjective(name: "complicated", isSingular: true, translation: "сложный")
        
        
        //MARK: - Diamond Verb Core
        _ = vocabulary.addVerb(verbName: "like", tense: .present, isSingular: true, isRegular: true, isStrong: false, isToBe: false, translation: "любить, нравиться")
        _ = vocabulary.addVerb(verbName: "want", tense: .present, isSingular: true, isRegular: true, isStrong: false, isToBe: false, translation: "хотеть")
        _ = vocabulary.addVerb(verbName: "need", tense: .present, isSingular: true, isRegular: true, isStrong: false, isToBe: false, translation: "нуждатьсяб нужно")
        _ = vocabulary.addVerb(verbName: "ask", tense: .present, isSingular: true, isRegular: true, isStrong: false, isToBe: false, translation: "спрашивать")
        _ = vocabulary.addVerb(verbName: "listen", tense: .present, isSingular: true, isRegular: true, isStrong: false, isToBe: false, translation: "слушать")
        _ = vocabulary.addVerb(verbName: "get", tense: .present, isSingular: true, isRegular: true, isStrong: false, isToBe: false, translation: "стать")
        _ = vocabulary.addVerb(verbName: "start", tense: .present, isSingular: true, isRegular: true, isStrong: false, isToBe: false, translation: "начинать")
        _ = vocabulary.addVerb(verbName: "love", tense: .present, isSingular: true, isRegular: true, isStrong: false, isToBe: false, translation: "любить")
        _ = vocabulary.addVerb(verbName: "finish", tense: .present, isSingular: true, isRegular: true, isStrong: false, isToBe: false, translation: "заканчивать")
        _ = vocabulary.addVerb(verbName: "come", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "приходить")
        
        _ = vocabulary.addVerb(verbName: "understand", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "понимать")
        _ = vocabulary.addVerb(verbName: "live", tense: .present, isSingular: true, isRegular: true, isStrong: false, isToBe: false, translation: "жить")
        _ = vocabulary.addVerb(verbName: "tell", tense: .present, isSingular: true, isRegular: true, isStrong: false, isToBe: false, translation: "рассказать")
        _ = vocabulary.addVerb(verbName: "put", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "класть")
        _ = vocabulary.addVerb(verbName: "hate", tense: .present, isSingular: true, isRegular: true, isStrong: false, isToBe: false, translation: "ненавидеть")
        _ = vocabulary.addVerb(verbName: "work", tense: .present, isSingular: true, isRegular: true, isStrong: false, isToBe: false, translation: "работать")
        _ = vocabulary.addVerb(verbName: "teach", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "учить")
        _ = vocabulary.addVerb(verbName: "play", tense: .present, isSingular: true, isRegular: true, isStrong: false, isToBe: false, translation: "играть")
        _ = vocabulary.addVerb(verbName: "buy", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "покупать")
        _ = vocabulary.addVerb(verbName: "see", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "видеть")
        
        _ = vocabulary.addVerb(verbName: "learn", tense: .present, isSingular: true, isRegular: true, isStrong: false, isToBe: false, translation: "учиться")
        _ = vocabulary.addVerb(verbName: "look", tense: .present, isSingular: true, isRegular: true, isStrong: false, isToBe: false, translation: "смотреть")
        _ = vocabulary.addVerb(verbName: "hear", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "слышать")
        _ = vocabulary.addVerb(verbName: "let", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "пускать, пусть, давайте")
        _ = vocabulary.addVerb(verbName: "help", tense: .present, isSingular: true, isRegular: true, isStrong: false, isToBe: false, translation: "помогать")
        _ = vocabulary.addVerb(verbName: "read", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "читать")
        _ = vocabulary.addVerb(verbName: "wait", tense: .present, isSingular: true, isRegular: true, isStrong: false, isToBe: false, translation: "ждать")
        _ = vocabulary.addVerb(verbName: "explain", tense: .present, isSingular: true, isRegular: true, isStrong: false, isToBe: false, translation: "объяснять")
        _ = vocabulary.addVerb(verbName: "drink", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "пить")
        _ = vocabulary.addVerb(verbName: "think", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "думать")
        
        _ = vocabulary.addVerb(verbName: "sleep", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "спать")
        _ = vocabulary.addVerb(verbName: "know", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "знать")
        _ = vocabulary.addVerb(verbName: "speak", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "говорить")
        _ = vocabulary.addVerb(verbName: "eat", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "есть")
        _ = vocabulary.addVerb(verbName: "write", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "писать")
        _ = vocabulary.addVerb(verbName: "make", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "создавать, заставлять")
        _ = vocabulary.addVerb(verbName: "fight", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "сражаться")
        _ = vocabulary.addVerb(verbName: "do", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "делать")
        _ = vocabulary.addVerb(verbName: "give", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "давать")
        _ = vocabulary.addVerb(verbName: "drive", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "водить")
        
        _ = vocabulary.addVerb(verbName: "rest", tense: .present, isSingular: true, isRegular: true, isStrong: false, isToBe: false, translation: "отдыхать")
        _ = vocabulary.addVerb(verbName: "take", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "брать")
        _ = vocabulary.addVerb(verbName: "sit", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "сидеть")
        _ = vocabulary.addVerb(verbName: "hope", tense: .present, isSingular: true, isRegular: true, isStrong: false, isToBe: false, translation: "надеяться")
        _ = vocabulary.addVerb(verbName: "pay", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "платить")
        _ = vocabulary.addVerb(verbName: "run", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "бежать")
        _ = vocabulary.addVerb(verbName: "go", tense: .present, isSingular: true, isRegular: false, isStrong: false, isToBe: false, translation: "идти")
        _ = vocabulary.addVerb(verbName: "stay", tense: .present, isSingular: true, isRegular: true, isStrong: false, isToBe: false, translation: "оставаться")
        _ = vocabulary.addVerb(verbName: "have", tense: .present, isSingular: true, isRegular: true, isStrong: false, isToBe: false, translation: "иметь")
        _ = vocabulary.addVerb(verbName: "answer", tense: .present, isSingular: true, isRegular: true, isStrong: false, isToBe: false, translation: "отвечать")
    }
    
    
}
