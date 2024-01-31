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
                SearchView()
                    .navigationBarTitle("Search", displayMode: .large)
            }
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Search")
            }
            .tag(1)
            
            // Terceira tela
            NavigationView {
                ProfileView()
                    .navigationBarTitle("Profile", displayMode: .large)
            }
            .tabItem {
                Image(systemName: "person")
                Text("Profile")
            }
            .tag(2)
        }
        .tint(.black)
    }
}

#Preview {
    HomeView()
}
