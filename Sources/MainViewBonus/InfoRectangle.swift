//
//  InfoRectangle.swift
//  AppExample
//
//  Created by slava on 21/04/2021.
//

import SwiftUI

public struct InfoRectangle: View {
    
    var quantity: Double
    var burningQuantity: Double
    var type: String
    var txtSize: CGFloat
    var txtColor: UIColor
    var headColor: UIColor
    var headTxtSize: CGFloat
    var dateforBurning: Date
    var bgColor: UIColor
    
    public var body: some View {
        ZStack{
            Color(bgColor)
            HStack{
                VStack{
                    HStack{
                        Text("\(quantity, specifier: "%.0f") бонусов")
                            .font(.system(size: headTxtSize))
                            .foregroundColor(Color(headColor))
                            .fontWeight(.bold)
                            .lineLimit(1)
                            .padding(.horizontal, 40)
                           
                        
                        Spacer()
                    }.padding()
                    
                    
                    HStack{
                        Text("\(dateforBurning.shortDate) сгорит")
                        .font(.system(size: txtSize))
                        .foregroundColor(Color(txtColor))
                        .lineLimit(1)
                        
                        Text("🔥")
                        
                        Text("\(burningQuantity, specifier: "%.0f") \(type) бонусов")
                        .font(.system(size: txtSize))
                        .foregroundColor(Color(txtColor))
                        .lineLimit(1)
                            
                    }
                }
                Image(systemName: "chevron.right.circle")
                    .foregroundColor(.red)
                    .font(.largeTitle)
                    .padding()
            }
        }
        .frame(width: UIScreen.main.bounds.width / 1.1, height: 0.32 * UIScreen.main.bounds.height / 2, alignment: .center)
        .cornerRadius(20)
        .shadow(color: .gray, radius: 10)
    }
}



