//
//  loginSheet.swift
//  bronsReusableComponent
//
//  Created by Bronwyn dos Santos on 2023/03/15.
//

import SwiftUI

struct loginSheet: View {
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
  
            ZStack() {
                VStack(){
                    Spacer()
                    HeadingText(headingText: "LogIn")
                        .padding(.bottom, 20)
                    LogInTextField(fiedlText:  $email, isPasswordProtected: false, headingText: "Email", descriptiveText: "Mandatory", placeholderText: "Username")
                    LogInTextField(fiedlText: $password, isPasswordProtected: true, headingText: "Password", descriptiveText: "Mandatory", placeholderText: "Password")
                    Spacer()
                    ButtonView(title: "Continue")
                        .padding()
                    Spacer()
                    Spacer()
                    
                }
            }
            .frame(maxWidth: 350, maxHeight: 400)
            .background(Color(.white))
            .cornerRadius(20)
            .shadow(radius: 5)
            .onAppear(){
                email = ""
                password = ""
            }
        
    }
}

struct loginSheet_Previews: PreviewProvider {
    static var previews: some View {
        loginSheet(email: "wmail", password: "password")
    }
}

struct HeadingText: View {
    @Environment(\.dismiss) var dismiss
    fileprivate var headingText: String
    var body: some View {
        HStack() {
            Text(headingText)
                .font(.system(size: 35))
                .bold()
                .padding(.leading, 20)
            Spacer()
            Image(systemName: "x.circle.fill")
                .foregroundStyle(.black.gradient)
                .font(.system(size: 25))
                .padding()
                .onTapGesture {
                    dismiss()
                }
          
        }
    }
}

struct LogInTextField: View {
    @Binding var fiedlText: String
    fileprivate var isPasswordProtected: Bool
    fileprivate var headingText: String
    fileprivate var descriptiveText: String
    fileprivate var placeholderText: String
 
    
    
    var body: some View {
        VStack() {
            HStack() {
             
                Text(headingText)
                    .font(.system(size: 25))
                    .padding(.leading,20)
                Spacer()
                Spacer()
                Spacer()
                Text(descriptiveText)
                    .font(.system(size: 20))
                    .foregroundColor(.secondary)
                Spacer()
            }
            HStack() {
                if isPasswordProtected {
                    VStack() {
                        SecureField(placeholderText, text: $fiedlText)
                            .textFieldStyle(.roundedBorder)
                            .submitLabel(.go)
                            .padding(.leading, 20)
                            .padding(.trailing, 40)
                        HStack() {
                            Spacer()
                            Text("Forgot your password?")
                                .foregroundColor(.secondary)
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                        }
                    }
                } else {
                    TextField(placeholderText, text: $fiedlText)
                        .textFieldStyle(.roundedBorder)
                        .submitLabel(.go)
                        .padding(.leading, 20)
                        .padding(.trailing, 40)
                }
                
            }
           
        }
    }
}

struct ButtonView: View {
    fileprivate var title: String
    var body: some View {
        VStack() {
            Button(title) {
                print("your action here")
            }
            .foregroundColor(.white)
            .frame(width: 250, height: 50)
            .background(Color(.black).gradient)
            .cornerRadius(20)
        }
        .contentShape(Rectangle())
        .frame(width: 250, height: 50)
        .cornerRadius(20)
        .onTapGesture {
            print("tapp Action")
        }
    }
}
