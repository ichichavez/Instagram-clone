//
//  ContentView.swift
//  Instagram
//
//  Created by Isidro Chávez on 2024-04-26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MainTabView()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
