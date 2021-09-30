//
//  ContentView.swift
//  H4XOR News
//
//  Created by Mập on 30/09/2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var netWorkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(netWorkManager.posts) {item in
                NavigationLink(destination: DetailView(url: item.url)) {
                    HStack {
                        Text(String(item.points ?? 0))
                        Text(item.title)
                    }
                }
            }
            .navigationTitle("H4XOR NEWS")
        }
        .onAppear {
            self.netWorkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
