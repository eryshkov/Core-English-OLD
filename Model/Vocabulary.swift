//
//  Vocabulary.swift
//  Core English
//
//  Created by Evgeniy Ryshkov on 24.08.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

class Vocabulary {
    static var words: Set<Word> = [
        Verb(nameStrong: "can", translation: "могу"),
        Verb(nameStrong: "may", translation: "можно"),
        Verb(nameStrong: "must", translation: "должен"),
        Verb(nameStrong: "will", translation: "буду"),
        Verb(nameStrong: "sould", translation: "стоит", "следует"),
        Verb(nameStrong: "would", translation: "бы")
        
    ]
    
    private init () {}
}
