//
//  LogoView.swift
//  AppExample
//
//  Created by slava on 21/04/2021.
//

import SwiftUI

public struct LogoView: View {
    var logo: String
    
    public var body: some View {
        
        HStack{
            Text(logo)
                .font(.title)
                .fontWeight(.light)
                .lineLimit(1)
            
            Spacer()
            
            Image(systemName: "info.circle.fill")
                .font(.title)
                .foregroundColor(.red)
        }.padding(.horizontal, -10)
    }
}

