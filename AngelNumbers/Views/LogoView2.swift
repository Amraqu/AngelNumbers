//
//  LogoView2.swift
//  AngelNumbers
//
//  Created by Amra Kurtovic on 26. 4. 2023..
//

import SwiftUI

struct LogoView2: View {
    var body: some View {
        HStack(spacing: 1) {
            Text("ANGEL".uppercased())
                .font(.title3)
                .foregroundColor(.white)
                .fontWeight(.black)
            
            
            Text("Numbers")
                .font(.title3)
                .foregroundColor(.white)
                .fontWeight(.regular)
        }
    }
}
