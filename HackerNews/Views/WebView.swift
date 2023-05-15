//
//  WebView.swift
//  HackerNews
//
//  Created by Batista Tone on 15/05/23.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) ->  WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let urlString {
            let url = URL(string: urlString)
            if let url {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
           
        }
    }
    
}

