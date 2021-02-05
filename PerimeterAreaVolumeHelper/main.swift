//
//  main.swift
//  PerimeterAreaVolumeHelper
//
//  Created by Yeseo Kim on 2021-01-29.
//

import Foundation

// MARK: Functions

/// Finds the surface area of a cylinder
/// - Parameters:
///   - radius: the straight line distance from the cenre of the circle to its outer edge
///   - height: the perpendicular distance between the two bases(circles)
/// - Returns: surface area of the cylinder
func getSAOfCylinder(radius: Double, height: Double) -> Double {
    return 2 * Double.pi * pow(radius, 2.0) + 2 * Double.pi * radius * height
}

/// Finds the surface area of a sphere
/// - Parameter radius: the straight line distance from the cenre of the circle to its outer edge
/// - Returns: surface area of the sphere
func getSAOfSphere(radius: Double) -> Double {
    return 4 * Double.pi * pow(radius, 2.0)
}

/// Finds the surface area of a cone
/// - Parameters:
///   - radius: the straight line distance from the cenre of the circle to its outer edge
///   - height: the perpendicular distance between the base(circle) and the vertex
/// - Returns: surface area of the cone
func getSAOfCone(radius: Double, height: Double) -> Double {
    return Double.pi * pow(radius, 2.0) + Double.pi * radius * (pow(height, 2.0) + pow(radius, 2.0)).squareRoot()
}

/// Finds the surface area of a square-based pyramid
/// - Parameters:
///   - squareLength: the side length of the base(square)
///   - height: the perpendicular distance between the base(square) and the vertex
/// - Returns: surface area of the square-based pyramid
func getSAOfSquareBasedPyramid(squareLength: Double, height: Double) -> Double {
    return pow(squareLength, 2.0) + 2 * squareLength * (pow(height, 2.0) + pow(squareLength/2, 2.0)).squareRoot()
}

/// Finds the surface area of a rectangular prism
/// - Parameters:
///   - width: the length of the horizontal side of the base(rectangle)
///   - length: the length of the vertical side of the base(rectangle)
///   - height: the perpendicular distance between the two bases(rectangles)
/// - Returns: the surface area of the rectangular prism
func getSAOfRectangularPrism(width: Double, length: Double, height: Double) -> Double {
    return 2 * (width * height + length * width + length * height)
}

/// Finds the surface area of a triangular prism
/// - Parameters:
///   - lengthA: 1st length of the base(triangle)
///   - lengthB: 2nd length of the base(triangle)
///   - lengthC: 3rd length of the base(triangle)
///   - height: the straight line distance between the two bases(triangles)
/// - Returns: the surface area of the triangular prism
func getSAOfTriangularPrism(lengthA: Double, lengthB: Double, lengthC: Double, height: Double) -> Double {
    return lengthB * (pow(lengthC, 2.0) - pow(lengthB/2, 2.0)).squareRoot() + lengthA * height + lengthB * height + lengthC * height
}

// MARK: Input & Process & Output
repeat {
print("Choose your 3D shape.")
print("0 - Exit")
print("1 - Cylinder")
print("2 - Sphere")
print("3 - Cone")
print("4 - Square-based pyramid")
print("5 - Rectangular prism")
print("6 - Triangular prism")
let shape = String.collectInput(withPrompt: "Enter your choice (1/2/3/4/5/6): ", acceptableValues: ["0","1","2","3","4","5","6"])
print("Enter 0 at any time to exit program")
print("")

    var result = 0.0
    switch shape {
    case "0":
        break
    case "1":
        print("You selected cylinder.")
        print("")
        print("Enter the radius:", terminator: "")
        let radius = readLine()!
        print("")
        print("Enter the height:", terminator: "")
        let height = readLine()!
        print("")
        result += getSAOfCylinder(radius: Double(radius)!, height: Double(height)!)
        print("The surface area is \(result).")
        print("")
    case "2":
        print("You selected sphere.")
        print("")
        print("Enter the radius:", terminator: "")
        let radius = readLine()!
        print("")
        result += getSAOfSphere(radius: Double(radius)!)
        print("The surface area is \(result).")
        print("")
    case "3":
        print("You selected cone.")
        print("")
        print("Enter the radius:", terminator: "")
        let radius = readLine()!
        print("")
        print("Enter the height:", terminator: "")
        let height = readLine()!
        print("")
        result += getSAOfCone(radius: Double(radius)!, height: Double(height)!)
        print("The surface area is \(result).")
        print("")
    case "4":
        print("You selected square-based pyramid.")
        print("")
        print("Enter the length of the square:", terminator: "")
        let squareLength = readLine()!
        print("")
        print("Enter the height:", terminator: "")
        let height = readLine()!
        print("")
        result += getSAOfSquareBasedPyramid(squareLength: Double(squareLength)!, height: Double(height)!)
        print("The surface area is \(result).")
        print("")
    case "5":
        print("You selected rectangular prism.")
        print("")
        print("Enter the width:", terminator: "")
        let width = readLine()!
        print("")
        print("Enter the length:", terminator: "")
        let length = readLine()!
        print("")
        print("Enter the height:", terminator: "")
        let height = readLine()!
        print("")
        result += getSAOfRectangularPrism(width: Double(width)!, length: Double(length)!, height: Double(height)!)
        print("The surface area is \(result).")
        print("")
    case "6":
        print("You selected triangular prism.")
        print("")
        print("Enter the first length:", terminator: "")
        let lengthA = readLine()!
        print("")
        print("Enter the second length:", terminator: "")
        let lengthB = readLine()!
        print("")
        print("Enter the third length:", terminator: "")
        let lengthC = readLine()!
        print("")
        print("Enter the height:", terminator: "")
        let height = readLine()!
        print("")
        result += getSAOfTriangularPrism(lengthA: Double(lengthA)!, lengthB: Double(lengthB)!, lengthC: Double(lengthC)!, height: Double(height)!)
        print("The surface area is \(result).")
        print("")
    default:
        print("Your input is not valid.")
        print("")
    }
    if result == 0.0 {
        break
    }
} while true
