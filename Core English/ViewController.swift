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
    
    var verticalConstraint: NSLayoutConstraint?
    var horizontalConstraint: NSLayoutConstraint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        FillVocabulary.context.fill()
        createConstraints()
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
        horizontalConstraint = NSLayoutConstraint(item: fieldView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.9, constant: 0)
//        horizontalConstraint.identifier = "forHorizontal"
        
        verticalConstraint = NSLayoutConstraint(item: fieldView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.9, constant: 0)
//        verticalConstraint.identifier = "forVertical"
    }
    
    func setConstraints() {
        if UIApplication.shared.statusBarOrientation.isLandscape {
            verticalConstraint?.isActive = false
            horizontalConstraint?.isActive = true
            print("Horizontal")
        } else {
            horizontalConstraint?.isActive = false
            verticalConstraint?.isActive = true
            print("Vertical")
        }
    }

}

