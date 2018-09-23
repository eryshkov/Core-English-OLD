//
//  Sudoku.swift
//  Core English
//
//  Created by Evgeniy Ryshkov on 23.09.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//
import Foundation
class Sudoku {
    static var context = Sudoku()
    
    var field = [Int]()
    let numOfSquares = 9
    
    private init() {generateField()}
    
    func generateField() {
        field.removeAll()
        for i in 1...numOfSquares {
           field.append(i)
        }
        field.shuffle()
    }
}
