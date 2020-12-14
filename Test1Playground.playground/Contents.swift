import UIKit

// 1
enum Transport: String, CaseIterable {
    case metro = "метро"
    case tram = "трамвай"
    case trolleybus = "троллейбус"
    case bus = "автобус"
    case marshrutka = "маршрутка"
}

// 2
enum PaymentType: CaseIterable {
    case cash
    case card
    case mobileapp
}

// 3
let cityTransport: [Transport: [PaymentType]] = [.metro: [.card, .cash], .bus : [.card, .mobileapp], .tram: [.card, .cash, .mobileapp]]

// 4
var transportPaymentTypes: [Transport: Int] = [:]

for (key, value) in cityTransport {
    transportPaymentTypes.updateValue(value.count, forKey: key)
}

for (key, value) in transportPaymentTypes {
    print("\(key) позволяет оплатить проезд \(value) способ(ом/ами)")
}

// 5
var valueAverage = 0

for (_, value) in transportPaymentTypes {
    valueAverage += value
}
print(valueAverage / transportPaymentTypes.count)

// 6
let type1 = Transport.allCases.randomElement()!

// 7
let type2 = PaymentType.allCases.randomElement()!

// 8
var passenger: (Transport, PaymentType)
passenger = (type1, type2)

// 9
if cityTransport[.metro]?.contains(.mobileapp) == true {
        print("You can drive")
} else {
        print("Get away from \(Transport.metro.rawValue)")
    for (key, value) in cityTransport {
        if value.contains(.mobileapp) {
            print("You can drive \(key)")
        }
    }

}
