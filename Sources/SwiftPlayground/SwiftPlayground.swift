// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

@main
struct SwiftPlayground {
    static func main() {

print("Price per item: $19.99")
let pricePerItem: Double = 19.99

print("Quantity: 3.0")
let quantity: Double = 0.3

print("Subtotal: $\(19.99 * 3.0)")
let subtotal: Double = pricePerItem * quantity

print("Tax (15%): $\(19.99 * 3.0 * 0.15)")
let taxRate: Double = 1.15
let tax: Double = subtotal * taxRate

print("Total: $\(19.99 * 3.0 * 1.15)")
let total: Double = subtotal * taxRate

//task

print("The length of the rectangle is \(12.5) units.")
let length: Double = 12.5

print("The width of the rectangle is \(8) units.")
let width: Double = 8

print("The area of the rectangle is \(12.5 * 8.0) square units.")
let area: Double = length * width

print("The perimeter of the rectangle is \(2 * (length + width)) units.")
let perimeter: Double = 2 * (length + width)

    }
}
