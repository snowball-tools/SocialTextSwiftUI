//
//  ContentView.swift
//  SocialTextSwiftUI
//
//  Created by Vivian Phung on 5/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<10) { _ in
                    SocialTextView(viewModel: SocialTextViewModel(socialText: SocialTextModel(profilePictureURL: URL(string: "https://example.com/image.jpg")!, userName: "John Doe", handle: "@johndoe", content: "hello world :)")))
                }
            }
            .listStyle(.plain)
            .navigationBarTitle("Social Text App")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
