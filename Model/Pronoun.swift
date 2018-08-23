//
//  Pronoun.swift
//  Core English
//
//  Created by Evgeniy Ryshkov on 23.08.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

class Pronoun: Hashable {
    var lichnye: Translation
    var hashValue: Int {
        return (lichnye.en).hashValue
    }

    
    init(lichnye_en lichnye: String, trans_ru translation: String...) {
        self.lichnye = Translation(en: lichnye, rus: translation)
    }
    
    static func == (lhs: Pronoun, rhs: Pronoun) -> Bool {
        return lhs.lichnye.en == rhs.lichnye.en
    }
}


