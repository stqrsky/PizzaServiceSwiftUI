//
//  Pizza.swift
//  PizzaServiceSwiftUI
//
//  Created by star on 13.05.22.
//

import Foundation

class Pizza: ObservableObject {
    static let pizzaTypes = ["Salami", "Funghi", "Margherita", "Mozzarella", "Etna", "Tonno", "Ragu", "Peperoni"]
    
    @Published var pizzaTypeIndex = 0
    
    @Published var anzahl = 1
    
    static let pizzaSizes =  ["Klein", "Mittel", "Groß"]
    @Published var pizzaSizeIndex = 0
    
    @Published var name = ""
    @Published var streetAddress = ""
    @Published var city = ""
    
    var isInvalid: Bool {
        return name.isEmpty || streetAddress.isEmpty || city.isEmpty
    }
}
