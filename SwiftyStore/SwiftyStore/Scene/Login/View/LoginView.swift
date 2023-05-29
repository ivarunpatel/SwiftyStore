//
//  LoginView.swift
//  SwiftyStore
//
//  Created by Varun on 28/05/23.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    private let backgroundLinearGradient = LinearGradient(colors: [Color(red: 18/255, green: 80/255, blue: 56/255), Color(red: 18/255, green: 80/255, blue: 56/255), AppColors.darkGrey1], startPoint: .top, endPoint: .bottom)
    
    private var signUpString: AttributedString {
        var attributedString = AttributedString("Sign Up")
        attributedString.font = Font.custom("DMSans-Bold", fixedSize: 14)
        attributedString.foregroundColor = AppColors.primary
        attributedString.underlineStyle = Text.LineStyle(pattern: .solid, color: AppColors.primary)
        return attributedString
    }
    var body: some View {
        VStack {
            VStack(spacing: 10) {
                Text("Swifty Store")
                    .font(Font.custom("DMSans-Regular", fixedSize: 51))
                Text("A simple SwiftUI app built using Fake API")
                    .font(Font.custom("DMSans-Regular", fixedSize: 14))
            }
            .foregroundColor(.white)
            .padding(.top, 60)
            
            Spacer()
            VStack(spacing: 20) {
                TextFieldView(image: Image.email, placeholder: "Email", text: $email, isPassword: false)
                TextFieldView(image: Image.password, placeholder: "Password", text: $password, isPassword: true)
            }
            
            VStack {
                PrimaryButtonView(title: "Sign In") {
                    
                }
            }
            .padding(.top, 50)
            HStack {
                Text("Don't have an account?")
                    .font(Font.custom("DMSans-Regular", fixedSize: 14))
                Button(action: {
                    
                }, label: {
                    Text(signUpString)
                })
            }
            .padding(.top, 20)
            .padding(.bottom, 60)
        }
        .padding(.horizontal, 10)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(alignment: .top) {
            Color.black
                .ignoresSafeArea()
            Image.mainBG
                .resizable()
                .scaledToFit()
                .opacity(0.4)
            backgroundLinearGradient
                .opacity(0.5)
                .ignoresSafeArea()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
