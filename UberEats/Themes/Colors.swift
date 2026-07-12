//
//  Colors.swift
//  UberEats
//
//  Created by Alexis Horteales Espinosa on 11/07/26.
//

import SwiftUI

extension Color {
    // Hex color initializer
    init(hex: String, opacity: Double = 1.0) {
        let hexSanitized = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)

        let red = Double((rgb & 0xFF0000) >> 16) / 255.0
        let green = Double((rgb & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgb & 0x0000FF) / 255.0

        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }

    // Brand Colors
    static let primaryColor = Color(hex: "#0C8145")
    static let secondaryColor = Color(hex: "#D78B04")
    static let backgroundColor = Color(hex: "#FDFBFC")

    // Button
    static let buttonBackgroundColor = Color(hex: "#F3F0F3")
}
