//
//  Gradient.swift
//  AppExample
//
//  Created by slava on 21/04/2021.
//

import SwiftUI

public struct GradientForRectangle: View {
    public var body: some View {
        let firstColor = Color.init(.sRGB, red: 0.8317651153, green: 0.2315244675, blue: 0.2525245845, opacity: 1)
        let secondColor = Color.init(.sRGB, red: 0.9188605547, green: 0.2683638334, blue: 0.3081387281, opacity: 1)
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [firstColor, secondColor]), startPoint: .top, endPoint: .bottom)
            
        }.frame(width: UIScreen.main.bounds.width, height: 148)
    }
}

