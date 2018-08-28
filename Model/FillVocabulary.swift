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
        vocabulary.addVerb(verbName: "will be", tense: .future, linkToV1Verb: nil, isRegular: false, isStrong: false, isToBe: false, translation: "буду являться")
    }
    
    private init () {}
}
