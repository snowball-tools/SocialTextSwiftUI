//
//  SocialTextView.swift
//  SocialTextSwiftUI
//
//  Created by Vivian Phung on 5/9/23.
//

import SwiftUI

struct SocialTextView: View {
    @ObservedObject var viewModel: SocialTextViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                Image(uiImage: viewModel.profileImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipped()
                    .cornerRadius(25)
                VStack(alignment: .leading, spacing: 2) {
                    Text(viewModel.userName)
                        .font(.headline)
                    Text(viewModel.handle)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            Text(viewModel.content)
                .font(.body)
                .padding(.top, 10)
            HStack {
                Button(action: viewModel.reply) {
                    Image(systemName: "message")
                }
                Spacer()
                Button(action: viewModel.retweet) {
                    Image(systemName: "arrow.2.squarepath")
                }
                Spacer()
                Button(action: viewModel.like) {
                    Image(systemName: "heart")
                }
                Spacer()
                Button(action: viewModel.share) {
                    Image(systemName: "square.and.arrow.up")
                }
            }
            .padding(.top, 10)
        }
    }
}

struct SocialTextView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SocialTextView(viewModel: SocialTextViewModel(socialText: SocialTextModel(profilePictureURL: URL(string: "https://example.com/image.jpg")!, userName: "John Doe", handle: "@johndoe", content: "hello world :)")))
                .previewLayout(.sizeThatFits)
        }
    }
}
