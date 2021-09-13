//
//  ContentView.swift
//  Dipper
//
//  Created by Raj Tailor on 9/12/21.
//

import SwiftUI

struct ContentView: View {
    @State private var enableBlocking = true
    
    var body: some View {
        VStack{
            Text("Raj Tailor was Here")
                .padding()
            
            Toggle("Enable Blocking", isOn: $enableBlocking)
                .padding()
                .toggleStyle(SwitchToggleStyle(tint: .navyBlue))

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color {
    static let navyBlue = Color(red: 30 / 255, green: 49 / 255, blue: 99 / 255)
}
