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
    let sudokuField = Sudoku.context.squares
    let labelSquareOffset = 100
    
    let vocabulary = Vocabulary.context
    var verbs = [Verb]()
    var names = [Name]()
    var pronouns = [Pronoun]()
    var adjectives = [Adjective]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createConstraints()
        generateField()
    }
    
    func generateField() {
        sudoku.generateField()
        
        verbs = vocabulary.getAllSimplePresentVerbs()
        names = vocabulary.getAllNames()
        pronouns = vocabulary.getAllPronouns()
        adjectives = vocabulary.getAllAdjectives()
        
        for label in labelCollection {
            label.text = String(sudokuField[label.tag - labelSquareOffset])
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

