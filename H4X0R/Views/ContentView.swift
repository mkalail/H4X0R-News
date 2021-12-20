//
//  ContentView.swift
//  H4X0R
//
//  Created by Michael Kalail on 11/29/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                        
                    }
                    
                }
                .navigationBarTitle("H4X0R NEWS")
            }
            .onAppear{
                self.networkManager.fetchData()
            }
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}


//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Hllo"),
//    Post(id: "3", title: "Hello")
//]

