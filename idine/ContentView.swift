//
//  ContentView.swift
//  idine
//
//  Created by Waldron, Dustin on 10/20/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
        NavigationView{
            List {
                ForEach(menu) { section in
                    Section(header: Text(section.name)) {
                        ForEach(section.items) { item in
                            ItemRow(item: item)
                        }
                    }
                }
            }
            .navigationBarTitle("Menu")
            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
