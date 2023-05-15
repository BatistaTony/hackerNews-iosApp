//
//  DetailsView.swift
//  HackerNews
//
//  Created by Batista Tone on 15/05/23.
//

import SwiftUI

struct DetailsView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(urlString: "www.google.com")
    }
}

