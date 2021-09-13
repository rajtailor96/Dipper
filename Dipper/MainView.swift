//
//  ContentView.swift
//  Dipper
//
//  Created by Raj Tailor on 9/12/21.
//

import SwiftUI

struct MainView: View {
    @State private var enableBlocking = true
    
    var body: some View {
        VStack{
            Text("Call Dipper")
                .padding()
            
            Toggle(isOn: $enableBlocking){
                Text(enableBlocking ? "Enabled" : "Disabled")
            }.onChange(of: enableBlocking) {
                self.sendState(state: $0)
            }
                .padding()
                .toggleStyle(SwitchToggleStyle(tint: .navyBlue))

        }
    }
    
    func sendState(state: Bool){
        if state{
            print("Published ON")
        }else{
            print("Published OFF")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

extension Color {
    static let navyBlue = Color(red: 30 / 255, green: 49 / 255, blue: 99 / 255)
}
