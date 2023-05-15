//
//  NetworkManager.swift
//  HackerNews
//
//  Created by Batista Tone on 15/05/23.
//

import Foundation


var API_URL = "https://hn.algolia.com/api/v1/search?tags=front_page"

class NetWorkManager : ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData(){
        
        let url   = URL(string: API_URL)
        
        if let url {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data,response, error) in
                if(error != nil){
                    print("Error trying to get data")
                }else{
                    let decoder = JSONDecoder()
                    if let data {
                        do {
                            let results = try  decoder.decode(PostData.self, from: data)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        }catch {
                            print(error)
                        }
                        
                    }
                    
                }
            }
            
            task.resume()
            
        
        }
        
    }
}
