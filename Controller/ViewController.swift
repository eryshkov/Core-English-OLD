//
//  ViewController.swift
//  Core English
//
//  Created by Evgeniy Ryshkov on 20.08.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var fieldView: UIView!
    
    @IBOutlet var labelCollection: [UILabel]!
    
    
    var verticalConstraints = [NSLayoutConstraint]()
    var horizontalConstraints = [NSLayoutConstraint]()
    let horizontalMargins: CGFloat = 16
    let verticalMargins: CGFloat = 20
    
    var sudoku = Sudoku.context
    var sudokuField = Sudoku.context.squares
    let labelSquareOffset = 100
    
    let vocabulary = Vocabulary.context
    var verbs = [Verb]()
    var names = [Name]()
    var pronouns = [Pronoun]()
    var adjectives = [Adjective]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FillVocabulary.context.fill()
        createConstraints()
        generateField()
    }
    
    func generateField() {
        verbs = vocabulary.getAllSimplePresentVerbs().shuffled()
        names = vocabulary.getAllNames().shuffled()
        pronouns = vocabulary.getAllPronouns().shuffled()
        adjectives = vocabulary.getAllAdjectives().shuffled()
        var namesAndPronouns = vocabulary.getAllNamesNounsPronouns().shuffled()

        for label in labelCollection {
            let currentSquare = label.tag - labelSquareOffset

            switch currentSquare {
            case 0:
                    var text = (namesAndPronouns.first!).name
                    namesAndPronouns.removeFirst()
                    text = "\(text)\n\((verbs.first!).name)"
                    verbs.removeFirst()
                    text = "\(text)\n\((verbs.first!).name)"
                    verbs.removeFirst()
                    label.text = text
            default:
                continue
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setConstraints()
    }
    
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setConstraints()
    }
    
    //MARK: - Dynamic Constraints
    func createConstraints() {
        verticalConstraints.append(NSLayoutConstraint(item: fieldView, attribute: .leading, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .leading, multiplier: 1, constant: horizontalMargins))
        verticalConstraints.append(NSLayoutConstraint(item: fieldView, attribute: .trailing, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .trailing, multiplier: 1, constant: -horizontalMargins))
//        horizontalConstraint.identifier = "forHorizontal"
        
        horizontalConstraints.append(NSLayoutConstraint(item: fieldView, attribute: .top, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .top, multiplier: 1, constant: verticalMargins))
        horizontalConstraints.append(NSLayoutConstraint(item: fieldView, attribute: .bottom, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .bottom, multiplier: 1, constant: -verticalMargins))
//        verticalConstraint.identifier = "forVertical"
    }
    
    func setConstraints() {
        let height = view.bounds.height
        let width = view.bounds.width
        
        if width >= height {
            NSLayoutConstraint.activate(horizontalConstraints)
            for constraint in verticalConstraints {
                constraint.isActive = false
            }
//            print("Horizontal")
        } else {
            NSLayoutConstraint.activate(verticalConstraints)
            for constraint in horizontalConstraints {
                constraint.isActive = false
            }
//            print("Vertical")
        }
    }

}

