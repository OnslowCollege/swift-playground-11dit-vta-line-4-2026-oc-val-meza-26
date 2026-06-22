// The Swift Programming Language
// https://docs.swift.org/swift-book
@main
struct SwiftPlayground {

    static func main() {
        var totalCost = 0.0
        var isOrdering = true

        // Creating a menu for food items
        let foodMenu: [String] = [
            "Burger", "Sushi", "Pizza", "Garlic bread", "Pork bun", "Dumplings",
        ]
        let foodCost: [Double] = [7.00, 4.00, 5.00, 4.00, 5.00, 5.00]

        // Creating a menu for drink items
        let drinkMenu: [String] = [
            "Juice", "Up & Go", "Gatorade", "Water", "Coffee", "Fruit soda drink",
        ]
        let drinkCost: [Double] = [4.00, 4.50, 6.00, 3.00, 6.00, 4.00]

        print("Welcome to Canteen.")

        while isOrdering {
            // Ask the user if they want to order a food or a drink
            print("Do you want to buy food or a drink?")
            let foodOrDrink = readLine()?.lowercased()

            // If the user wants food, print out the list of available foods
            if foodOrDrink == "food" {
                print("What do you want to order?")
                (0...foodMenu.count - 1).forEach {
                    index in print("\(index + 1). \(foodMenu[index]) - $\(foodCost[index])")
                }

                //range test if user put a number in the range
                print("Enter a number:")
                let userInput: String = readLine()!
                let indexUserChose: Int = Int(userInput)!
                let foodName = foodMenu[indexUserChose - 1]
                let foodCost = foodCost[indexUserChose - 1]
                //says the food and how much it costs
                print("You have ordered one \(foodName), and it cost \(foodCost).")
                totalCost = totalCost + foodCost
            }

            //drink
            else if foodOrDrink == "drink" {
                // If the user wants drinks, print out the list of available drinks
                print("What do you want to order?")
                (0...drinkMenu.count - 1).forEach { index in
                    print("\(index + 1). \(drinkMenu[index]) - $\(drinkCost[index])")
                }
                //test the range if the number is within the range
                print("Enter a number:")
                let userInput: String = readLine()!
                let indexUserChose: Int = Int(userInput)!
                let drinkName = drinkMenu[indexUserChose - 1]
                let drinkCost = drinkCost[indexUserChose - 1]
                //says the drink and how much it costs
                print("You have ordered one \(drinkName), and it cost \(drinkCost).")
                totalCost = totalCost + drinkCost
            } else {
                print("out of range. enter numberbetween 1-6")
    

        //asks the user if they want more food
        print("Would you like to order anything else?")
        let userDecision = readLine()?.lowercased()
        if userDecision == "y" {

        } else if userDecision == "n" {
            isOrdering = false
            print("your total cost is \(totalCost)")
        }
    }
    }
}
}