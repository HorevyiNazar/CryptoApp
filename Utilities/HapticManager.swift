//
//  HapticManager.swift
//  CryptoApp
//
//  Created by Назар Горевой on 11.09.2023.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
    
}
