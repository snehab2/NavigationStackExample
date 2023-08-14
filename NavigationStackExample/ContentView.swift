//
//  ContentView.swift
//  NavigationStackExample
//
//  Created by scholar on 8/11/23.
//

import SwiftUI

struct ContentView: View {
    private var colorsArray: [Color] = [ .yellow, .green, .orange, .indigo, .teal]
    
    var body: some View {
        NavigationStack {
            List (colorsArray, id: \.self) {
                individualColor in
                NavigationLink(destination: individualColor) {
                    Text(individualColor.description)
                }
                
            }
            .navigationTitle("Cool Colors")
            
            VStack {
                NavigationLink(destination: SecondView()) {
                    Text("testing")
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
