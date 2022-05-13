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
                Section {
                    Picker("Wähle deine Pizza aus.", selection: $pizza.pizzaTypeIndex) {
                        ForEach(0 ..< Pizza.pizzaTypes.count) { index in
                            Text(Pizza.pizzaTypes[index]).tag(index)
                        }
                    }
                    
                    Stepper(value: $pizza.anzahl, in: 1...6) {
                        Text("Anzahl an Pizzen: \(pizza.anzahl)")
                    }
                }
                
                Section {
                    Picker("", selection: $pizza.pizzaSizeIndex) {
                        ForEach(0 ..< Pizza.pizzaSizes.count) {
                            Text(Pizza.pizzaSizes[0]).tag($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }

                Section(header: Text("Lieferung")) {
                    Text("Lieferung...")
                }
                
            }
            .navigationBarTitle("Pizza Bestellung")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
