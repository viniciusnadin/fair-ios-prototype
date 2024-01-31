//
//  Sign.swift
//  FairPrototype
//
//  Created by Vinicius Nadin on 30/01/24.
//

import SwiftUI

struct Sign: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer().frame(height: geometry.size.height / 7)
                Text("Fair")
                    .font(.custom("Roboto-Light", size: 100))
                Text("Some are born great, some achieve greatness.")
                    .font(.custom("Roboto-Light", size: 20))
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 100)
                
                Spacer().frame(maxHeight: 40)
                
                Button(action: {
                    print("Botão pressionado")
                }) {
                    Text("Email")
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 13)
                        .padding(.horizontal, 20)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(4)
                        .fontWeight(.regular)
                }
                .padding(.horizontal, 30)
                
                Button(action: {
                    print("Botão pressionado")
                }) {
                    Text("Continue with Apple")
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 13)
                        .padding(.horizontal, 20)
                        .foregroundColor(.black)
                        .cornerRadius(4)
                        .fontWeight(.regular)
                }.overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color.black, lineWidth: 1)
                )
                .padding(.horizontal, 30)
                
                Button(action: {
                    print("Botão pressionado")
                }) {
                    Text("Continue with Facebook")
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 13)
                        .padding(.horizontal, 20)
                        .foregroundColor(.black)
                        .cornerRadius(4)
                        .fontWeight(.regular)
                }.overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color.black, lineWidth: 1)
                )
                .padding(.horizontal, 30)
                
                Button(action: {
                    print("Botão pressionado")
                }) {
                    Text("Continue with Google")
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 13)
                        .padding(.horizontal, 20)
                        .foregroundColor(.black)
                        .cornerRadius(4)
                        .fontWeight(.regular)
                }.overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color.black, lineWidth: 1)
                )
                .padding(.horizontal, 30)
                
                Text("By continuing you agree to our Terms & Conditions and Privacy Policy and to subscribe to emails for offers, alerts and services.")
                    .padding(.horizontal, 30)
                    .padding(.vertical, 10)
                    .font(.custom("Roboto-Light", size: 13))
                    .multilineTextAlignment(.center)
            }
        }
    }
}

#Preview {
    Sign()
}
