//
//  ContentView.swift
//  H4X0R
//
//  Created by Ankur on 04/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("H4X0R NEWS")
        }
        
    }
}


let posts=[
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "Hello"),
    Post(id: "3", title: "Hello")
]

#Preview {
    ContentView()
}
