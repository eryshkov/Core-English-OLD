//
//  Verb.swift
//  Core English
//
//  Created by Evgeniy Ryshkov on 23.08.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

class Verb: Hashable {
    var present: Translation
    var future: Translation?
    var past_V2: Translation?
    var V3: Translation?
    var hashValue: Int {
        return (present.en).hashValue
    }
    
    private init(present: Translation, future: Translation, past_V2: Translation, V3: Translation) {
        self.present = present
        self.future = future
        self.past_V2 = past_V2
        self.V3 = V3
    }
    
    init(present_en present: String, trans_ru translation: String...) {
        self.present = Translation(en: present, rus: translation)
    }
    
    static func == (lhs: Verb, rhs: Verb) -> Bool {
        return lhs.present.en == rhs.present.en
    }
}
