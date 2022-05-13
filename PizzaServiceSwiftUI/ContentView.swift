//
//  ContentView.swift
//  PizzaServiceSwiftUI
//
//  Created by star on 13.05.22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var pizza = Pizza()
    @State private var selectedIndex = 0
    
    var body: some View {
        NavigationView {
            Form {
                Picker("Wähle deine Pizza aus.", selection: $pizza.pizzaTypeIndex) {
                    ForEach(0..<Pizza.pizzaTypes.count) { index in
                        Text(Pizza.pizzaTypes[index]).tag(index)
                    }
                }
            }
//            .navigationBarTitle("Pizza Bestellung")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
