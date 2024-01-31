//
//  HomeView.swift
//  FairPrototype
//
//  Created by Vinicius Nadin on 31/01/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            NavigationView {
                RoadMapsView()
                    .navigationBarTitle("Road Maps", displayMode: .large)
            }
            .tabItem {
                Image(systemName: "map")
                Text("Road Maps")
            }
            .tag(0)
            
            // Segunda tela
            NavigationView {
                Text("Tela 2")
                    .navigationBarTitle("Tela 2", displayMode: .inline)
            }
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Search")
            }
            .tag(1)
            
            // Terceira tela
            NavigationView {
                Text("Tela 3")
                    .navigationBarTitle("Tela 3", displayMode: .inline)
            }
            .tabItem {
                Image(systemName: "person")
                Text("Profile")
            }
            .tag(2)
        }
    }
}

#Preview {
    HomeView()
}
