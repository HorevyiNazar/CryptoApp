//
//  UIApplication.swift
//  CryptoApp
//
//  Created by Назар Горевой on 31.08.2023.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
