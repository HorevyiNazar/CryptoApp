//
//  String.swift
//  CryptoApp
//
//  Created by Назар Горевой on 11.10.2023.
//

import Foundation

extension String {
    var removingHTML: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
