//
//  LogoView.swift
//  AngelNumbers
//
//  Created by Amra Kurtovic on 19. 4. 2023..
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 1) {
            Text("ANGEL".uppercased())
                .font(.title3)
                .foregroundColor(Color("bgljubicasta"))
                .fontWeight(.black)
            
            
            Text("Numbers")
                .font(.title3)
                .foregroundColor(Color("bgsiva"))
                .fontWeight(.regular)
        }
    }
}






