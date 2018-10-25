//
//  Sudoku.swift
//  Core English
//
//  Created by Evgeniy Ryshkov on 23.09.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//
import Foundation
struct Sudoku {
    static var context = Sudoku()
    
    var squares = [Int]()
    let numOfSquares = 9
    
    private init() {generateField()}
    
    mutating func generateField() {
        squares.removeAll()
        for i in 1...numOfSquares {
           squares.append(i)
        }
        squares.shuffle()
    }
}
