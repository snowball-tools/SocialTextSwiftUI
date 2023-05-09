//
//  SocialTextViewModel.swift
//  SocialTextSwiftUI
//
//  Created by Vivian Phung on 5/9/23.
//

import Foundation
import UIKit

class SocialTextViewModel: ObservableObject {
    @Published var socialText: SocialTextModel
    @Published var profileImage: UIImage
    
    init(socialText: SocialTextModel) {
        self.socialText = socialText
        self.profileImage = UIImage(systemName: "person.fill")! // Default image
        
        loadProfileImage()
    }
    
    private func loadProfileImage() {
        do {
            let imageData = try Data(contentsOf: socialText.profilePictureURL)
            if let image = UIImage(data: imageData) {
                self.profileImage = image
            }
        } catch {
            print("Failed to load profile image: \(error)")
        }
    }
    
    var profilePictureURL: URL {
        return socialText.profilePictureURL
    }
    
    var userName: String {
        return socialText.userName
    }
    
    var handle: String {
        return socialText.handle
    }
    
    var content: String {
        return socialText.content
    }
    
    func like() {}
    
    func share() {}
    
    func reply() {}
    
    func retweet() {}
}
