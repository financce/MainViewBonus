//
//  MainViewswift.swift
//  AppExample
//
//  Created by slava on 21/04/2021.
//

import SwiftUI

public struct MainViewswift: View {
    
    var logo: String = ""
    
    //MARK: Bonus property
    var type = ""
    var quantity: Double = 0
    var burningQuantity: Double = 0
    var dateforBurning: Date
    
    //MARK: Font and color property
    var txtSize: CGFloat
    var txtColor: UIColor
    var headColor: UIColor
    var headTxtSize: CGFloat
    var bgColor: UIColor
    
    
    
    
    public init(logo: String, type: String, quantity: Double, burningQuantity: Double, dateforBurning: Date, txtSize: CGFloat, txtColor: UIColor, headColor: UIColor, headTxtSize: CGFloat, bgColor: UIColor) {
        self.logo = logo
        self.type = type
        self.quantity = quantity
        self.burningQuantity = burningQuantity
        self.dateforBurning = dateforBurning
        self.txtSize = txtSize
        self.txtColor = txtColor
        self.headColor = headColor
        self.headTxtSize = headTxtSize
        self.bgColor = bgColor
        
    }
    
    public var body: some View {
        ScrollView{
            VStack{
                LogoView(logo: logo)
                    .padding(.horizontal, 50)
                    .padding(.top, 50)
                
                ZStack{
                    
                    GradientForRectangle()
                    InfoRectangle(quantity: quantity, burningQuantity: burningQuantity, type: type, txtSize: txtSize, txtColor: txtColor, headColor: headColor, headTxtSize: headTxtSize, dateforBurning: dateforBurning, bgColor: bgColor)
                        .offset(y: -100)
                    
                 }.padding(.top, 100)
              }
            
            Spacer()
            
        }
    }
}


