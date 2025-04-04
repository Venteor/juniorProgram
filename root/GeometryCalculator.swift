//
//  BILTExternalOpenerService.swift
//  Bilt
//
//  Created by Andrei Trukhan on 01/05/2023.
//

import Foundation

class GeometryCalculator {
    private var rectangle: Rectangle

    init(rectangle: Rectangle) {
        self.rectangle = rectangle
    }

    func isSquare() -> Bool {
        return rectangle.width == rectangle.height
    }

    func diagonalLength() -> Double {
        return sqrt(pow(rectangle.width, 2) + pow(rectangle.height, 2))
    }

    func scaleRectangle(by factor: Double) {
        rectangle.width *= factor
        rectangle.height *= factor
    }
}

