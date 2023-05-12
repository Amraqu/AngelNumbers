//
//  RowView.swift
//  AngelNumbers
//
//  Created by Amra Kurtovic on 17. 4. 2023..
//

import SwiftUI


struct RowView: View {
    var title: String
    var body: some View {
        HStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 17, height: 17)
            
            Text(title)
                .font(.headline)
                .foregroundColor(Color("bgsiva"))
                .tracking(1)
                .fontWeight(.medium)
                .shadow(radius: 0.1)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .resizable()
                .frame(width: 5, height: 10)
                .foregroundColor(.gray)
        }
    }
}




					
