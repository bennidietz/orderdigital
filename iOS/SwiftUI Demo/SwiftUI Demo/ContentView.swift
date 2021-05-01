//
//  ContentView.swift
//  SwiftUI Demo
//
//  Created by Benjamin Dietz on 15.02.21.
//

import SwiftUI

struct ContentView: View {
    
    let foods = ["Pizza", "Burger", "Salad", "Soup"]
    @State private var selectedFood = "Burger"
    let servings = ["1", "2", "3", "4"]
    @State private var selectedServings = "2"
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Please select your favorite food!", selection: $selectedFood) {
                        ForEach(0..<foods.count) {
                            Text(self.foods[$0])
                        }
                    }
                    Text("Your favorite food is \(selectedFood)")
                }
                Section(header:Text("Selected servings")) {
                    Picker("Servings", selection: $selectedServings) {
                        ForEach(0..<servings.count) {
                            Text(self.servings[$0])
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    Text("You want \(selectedServings) servings")
                }
            }
            .navigationBarTitle("Foods")
        }
    }
}


// not shwoing - only for preview purposes
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
