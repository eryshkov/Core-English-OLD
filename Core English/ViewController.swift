//
//  ViewController.swift
//  Core English
//
//  Created by Evgeniy Ryshkov on 20.08.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        FillVocabulary.context.fill()
        
        let word = Vocabulary.context.search(word: "can")
        if let theVerb = word as? Verb {
            print(theVerb)
        }else{
            print("Not found")
        }
        
        let word2 = Vocabulary.context.search(word: "will be")
        if let theVerb = word2 as? Verb {
            print(theVerb)
        }else{
            print("Not found")
        }
        
        let word3 = Vocabulary.context.search(word: "are")
        if let theVerb = word3 as? Verb {
            print(theVerb)
        }else{
            print("Not found")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

