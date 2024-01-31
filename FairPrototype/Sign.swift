//
//  Sign.swift
//  FairPrototype
//
//  Created by Vinicius Nadin on 30/01/24.
//

import SwiftUI

struct Sign: View {
    
    @State private var text: String = ""
    @State private var isEditing: Bool = false
    
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
                    .padding(.horizontal, 50)
                
                Spacer().frame(maxHeight: 50)
                VStack {
                    ZStack(alignment: .leading) {
                        Text("Email address")
                            .foregroundStyle(.secondary)
                            .offset(x: isEditing || !text.isEmpty ? -12 : 0, y: isEditing || !text.isEmpty ? -25 : 0)
                            .scaleEffect(isEditing || !text.isEmpty ? 0.8 : 1)
                            .animation(.spring(response: 0.4, dampingFraction: 0.9), value: isEditing || !text.isEmpty)
                        TextField("", text: $text, onEditingChanged: { isEditing in
                            self.isEditing = isEditing
                        })
                        .foregroundStyle(.black)
                        .padding(.top, isEditing || !text.isEmpty ? 20 : 0)
                        .autocorrectionDisabled()
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        
                    }
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                }
                .padding(.bottom, 10)
                
                Button(action: {
                    print("Botão pressionado")
                }) {
                    Text("Continue")
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 13)
                        .padding(.horizontal, 20)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(4)
                        .fontWeight(.regular)
                }
                
                HStack {
                    VStack {
                        Divider()
                    }
                    Text("or")
                        .foregroundStyle(.secondary)
                        .font(.custom("Roboto-Light", size: 15))
                    VStack {
                        Divider()
                    }
                }.padding(.vertical, 10)
                
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
                
                Text("By continuing you agree to our Terms & Conditions and Privacy Policy and to subscribe to emails for offers, alerts and services.")
                    .padding(.horizontal, 45)
                    .padding(.vertical, 10)
                    .font(.custom("Roboto-Light", size: 12))
                    .multilineTextAlignment(.center)
            }
            .onTapGesture {
                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            }
            .padding(.horizontal, 30)
        }
    }
}

#Preview {
    Sign()
}
