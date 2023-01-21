import Foundation

var basket: [String: Int] = [:]
var totalPrice = 0

basket["T-Shirt"] = 1200
basket["Sweater"] = 1300
basket["Skirt"] = 1000

print(basket)

for (_, value) in basket {
    totalPrice += value
}

print("Сумма товаров = \(totalPrice)с.")


//#2 Создать словарь из 10 товаров. Составить программу, где ридлайн вызывается 3 раза и запрашивает название товара. Ввести название товаров и вывести информацию в виде чека:
//
//------Чек-------
//Наименование:                Сумма:
//Кока_кола                    40 сом
//Хлеб                         18 сом
//Колбаса                      160 сом
//
//-----------------

var basket2:[String:Int] = [:]
var productList = ["cheese": 160, "milk": 60, "butter": 120, "apple": 130, "banana": 160, "carrot": 30, "chocolate": 60, "rice": 150, "ice-cream": 125, "ChocoPie": 130]


print("Введите товар")

for _ in 1...3 {
    let product = readLine()!
    for (key, value) in productList {
        if product == key {
            basket2.updateValue(value, forKey: key)
        }
    }
}

func printChek (basket:[String: Int]) {
    var totalSum = 0
    print("--------Чек----------")
    print("Наименование:     Сумма:")
    for (key, value) in basket {
        print("\(key)            \(value)")
        totalSum += value
    }
    print("--------------------")
    print("Итого: \(totalSum) сом")
    
}
printChek(basket: basket2)


