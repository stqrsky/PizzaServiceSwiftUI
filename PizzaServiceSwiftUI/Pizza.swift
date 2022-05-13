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
}
