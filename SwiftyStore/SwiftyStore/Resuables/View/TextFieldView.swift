//
//  TextFieldView.swift
//  SwiftyStore
//
//  Created by Varun on 29/05/23.
//

import SwiftUI

struct TextFieldView: View {
    var image: Image
    var placeholder: String
    @Binding var text: String
    var isPassword: Bool
    
    var body: some View {
        HStack(spacing: 12) {
            image
                .foregroundColor(AppColors.grey)
            setupTextField()
                .font(Font.custom("DMSans-Regular", fixedSize: 16))
                .foregroundColor(AppColors.darkGrey1)
        }
        .padding(.horizontal, 10)
        .frame(maxWidth: .infinity, maxHeight: 50)
        .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.white))
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1).foregroundColor(AppColors.grey))
    }
    
    @ViewBuilder
    func setupTextField() -> some View {
        if isPassword {
            SecureField(placeholder, text: $text, prompt: Text(placeholder).foregroundColor(AppColors.grey))
        } else {
            TextField(placeholder, text: $text, prompt: Text(placeholder).foregroundColor(AppColors.grey))
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(image: Image("ic_email"), placeholder: "Placeholder", text: .constant(""), isPassword: true)
    }
}
