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
        
        
        
        let word = Vocabulary.context.search(word: "can")
        if let theWord = word, let theVerb = word as? Verb {
            print(theVerb.name, theVerb.translation, theVerb.present?.name)
        }else{
            print("Not found")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

