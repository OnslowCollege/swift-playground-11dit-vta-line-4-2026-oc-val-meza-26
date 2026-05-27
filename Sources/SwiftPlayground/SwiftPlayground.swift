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

    }
}
