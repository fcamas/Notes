//
//  Constants.swift
//  Notes
//
//  Created by Fredy Camas on 01/07/23.
//

import Foundation
import SwiftUI

struct DessertViewConstants{
    let dessertImageURL = "https://www.themealdb.com/images/media/meals/adxcbq1619787919.jpg"
}

struct DessertCardSizes{
    var height = UIScreen.main.bounds.height*0.25
    var width = UIScreen.main.bounds.width*9
    var corneRadius:CGFloat = 20
    var shadow:CGFloat = 10
    var leading: CGFloat = 20
}

struct MainViewSizes{
    
    var searchDelay = 0.5
    
    var rectangleStrokeLineWidth:CGFloat = 1
    var rectangleFrame:CGFloat = 50
    var rectangleConerRadius:CGFloat = 20

    var cardFrame:CGFloat = 300
}

struct ExpandedViewSizes{
    
    var minY:CGFloat = 300
    var shadowRadius:CGFloat = 10
    var cornerRadius:CGFloat = 10
    var headerFrame:CGFloat = 250
}

struct K {
    
    // MARK: - Colors
    static let primaryBlack = "#000000"
    static let primaryWhite = "#FFFFFF"
    static let primaryColor = "#1D9696"
    static let secondayColor = "#01A0A0"
    static let tertiaryColor = "#369C9C8C"
    
    static let dividerColor = "#A0A0A0"
    static let buttonBorders = "#A0A0A0"
    static let placeHolderColor = "#A0A0A0"
    
    static let purpple = "#7C8BE2"
    static let yellow = " #FCDB68"
    
    // MARK: - Asset Colors
    static let bg_white = "bg_white_color"
    static let btn_white = "btn_bg_white_color"
    static let btn_black = "btn_bg_black_color"
    static let txt_white = "txt_white_color"
    static let txt_black = "txt_black_color"
}
