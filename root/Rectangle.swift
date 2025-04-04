//
//  BILTExternalOpenerService.swift
//  Bilt
//
//  Created by Andrei Trukhan on 01/05/2023.
//

import Foundation

class Rectangle {
    var width: Double
    var height: Double

    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }

    func area() -> Double {
        return width * height
    }

    func perimeter() -> Double {
        return 2 * (width + height)
    }
}
