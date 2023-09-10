//
//  CustomFonts.swift
//  Alias
//
//  Created by Roman on 10/09/2023.
//

import SwiftUI

enum CustomFonts: String {
    case buttonFont = "AvenirNext-DemiBold"
}

extension Font {
    static func custom(_ font: CustomFonts, size: CGFloat) -> SwiftUI.Font {
        SwiftUI.Font.custom(font.rawValue, size: size)
    }
}
