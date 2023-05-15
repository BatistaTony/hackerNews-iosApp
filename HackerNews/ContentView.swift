//
//  ContentView.swift
//  HackerNews
//
//  Created by Batista Tone on 15/05/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetWorkManager()
    
    var body: some View {
       
            NavigationView {
                List(networkManager.posts) { post in
                    NavigationLink(destination: DetailsView(url: post.url)) {
                        HStack {
                            Text("\(post.points)")
                            Text(post.title)
                        }
                    }
                   
                
                } 
            }
            
            .navigationBarTitle("Hacker News")
            .onAppear {
                self.networkManager.fetchData()
            }
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


