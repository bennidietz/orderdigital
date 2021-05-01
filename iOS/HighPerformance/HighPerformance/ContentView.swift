//
//  ContentView.swift
//  HighPerformance
//
//  Created by Benjamin Dietz on 03.03.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("1) Wie will ich in Erinnerung bleiben?")
                .frame(maxWidth: .infinity, maxHeight: 100)
            Text("2) Welches Level an Energie möchte ich in diese Situation bringen? Wie möchte ich mich währenddessen fühlen?")
                .frame(maxWidth: .infinity, maxHeight: 100)        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
