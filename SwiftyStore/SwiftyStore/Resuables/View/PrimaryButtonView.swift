//
//  PrimaryButtonView.swift
//  SwiftyStore
//
//  Created by Varun on 29/05/23.
//

import SwiftUI

struct PrimaryButtonView: View {
    var title: String
    var action: () -> Void
    var body: some View {
        Button(title, action: action)
            .foregroundColor(.white)
            .font(Font.custom("DMSans-Bold", fixedSize: 16))
            .padding(.horizontal, 10)
            .frame(maxWidth: .infinity, maxHeight: 50)
            .background(AppColors.primary)
            .cornerRadius(10)
    }
}

struct PrimaryButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButtonView(title: "Login", action: {
            
        })
    }
}
