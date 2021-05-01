//
//  AdvancesSwiftCode.swift
//  
//
//  Created by Benjamin Dietz on 15.02.21.
//

import Foundation
import SwiftUI

// transition - Animationen
UIView.transition(with: mainTreeImageView, duration: 0.5, options: .transitionCrossDissolve) {
    self.mainTreeImageView.image = image
}

// Swift UI
Form {} // scrollbar
Text("Text")
Group() // keinen visuellen Unterschied
Section() // mit visuellem Unterschied
@State private var tapCount = 0 // mutable variable - bei kleinen Datenmengen
TextField("Enter your name here", text: $name) // two-way binding of variable
Form { // forEach operator
    ForEach(0..<400) { number in
        Text("Row \(number)")
    }
}
Picker("Please select your favorite food!", selection: $selectedFood) { // picker with binded array
    ForEach(0..<foods.count) {
        Text(self.foods[$0])
    }
}
