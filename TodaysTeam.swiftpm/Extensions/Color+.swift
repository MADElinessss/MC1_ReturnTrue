
import SwiftUI

extension Color {
    
    @nonobjc static var mainColor: Color {
        return Color(uiColor: UIColor(red: 100 / 255, green: 194 / 255, blue: 235 / 255, alpha: 1.00))
    }
    
    @nonobjc static var accentColor: Color {
        return Color(uiColor: UIColor(red: 238 / 255 , green: 127 / 255, blue: 123 / 255, alpha: 1.00))
    }
    
    @nonobjc static var gamBasicBlack: Color {
        return Color(uiColor: UIColor(white: 24.0 / 255.0, alpha: 1.0))
    }
    
    @nonobjc static var gamBgWhite: Color {
        return Color(uiColor: UIColor(white: 250.0 / 255.0, alpha: 1.0))
    }
    
    @nonobjc static var gamDarkGray0: Color {
        return Color(uiColor: UIColor(white: 130.0 / 255.0, alpha: 1.0))
    }
    
    @nonobjc static var gamDarkGray1: Color {
        return Color(uiColor: UIColor(white: 100.0 / 255.0, alpha: 1.0))
    }
    
    @nonobjc static var gamDarkGray2: Color {
        return Color(uiColor: UIColor(red: 66 / 255 , green: 66 / 255, blue: 66 / 255, alpha: 1.00))
    }
    
    @nonobjc static var gamLightGray0: Color {
        return Color(uiColor: UIColor(white: 234.0 / 255.0, alpha: 1.0))
    }
    
    @nonobjc static var gamLightGray1: Color {
        return Color(uiColor: UIColor(white: 225.0 / 255.0, alpha: 1.0))
    }
    
    @nonobjc static var gamLightGray2: Color {
        return Color(uiColor: UIColor(white: 215.0 / 255.0, alpha: 1.0))
    }
    
    @nonobjc static var gamRealBlack: Color {
        return Color(uiColor: UIColor(white: 0.0, alpha: 1.0))
    }
}

extension Int {
    var adjust: CGFloat {
        return  CGFloat(self) * (UIScreen.main.bounds.width / 1024)
    }
}

