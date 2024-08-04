//
//  DetailView.swift
//  H4X0R
//
//  Created by Ankur on 04/08/24.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url:String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct WebView: UIViewRepresentable{
 
    let urlString: String?
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let safeUrl = urlString{
            if let url = URL(string: safeUrl){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}

#Preview {
    DetailView(url: "google")
}
