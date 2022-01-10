//
//  SwiftUIView.swift
//  LogInAndSignUp
//
//  Created by Prasannakumar Manikandan on 03/01/22.
//

import SwiftUI

struct SignUpView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var selectCentre = ""
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
            ZStack(alignment: .top) {
                Color("LSBackGround")
                        .ignoresSafeArea(.all)
                VStack {
                    Group {
                        Spacer()
                            .frame(height: 35)
                        Text("Hello...!")
                            .foregroundColor(.white)
                            .font(.custom("Pacifico-Regular", size: 30))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        TextField("FirstName", text: $firstName)
                        TextField("LastName", text: $lastName)
                        TextField("email", text: $email)
                    }
                    .textFieldStyle(LStextFieldStyle())
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 15, trailing: 20))
                    LSCustomTextFieldForNumber(placeHolder: "Phone Number")
                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 15, trailing: 20))
                    Group {
                        TextField("Select Centre", text: $selectCentre)
                    }
                    .textFieldStyle(LStextFieldStyle())
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 15, trailing: 20))
                    Button(action: {

                    }) {
                        Text("SignUp")
                            .font(Font.system(size: 20, weight: .medium, design: .default))
                            .frame(width: 120, height: 50)
                            .foregroundColor(.white)
                            .LSBackGround(Color("LSButtonColour"))
                        
                    }.cornerRadius(20)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                    Spacer()
                    HStack {
                        Text("Already Have Accout?")
                            .font(.custom("Oswald-Regular", size: 15))
                            .foregroundColor(.white)
                        Spacer()
                            .frame(width: 2)
                        Button(action: {
                            dismiss()
                        }) {
                            Text("Login")
                                .font(.custom("Oswald-Regular", size: 20))
                                .foregroundColor(Color("LSButtonColour"))
                            }
                        }
                }
                Circle()
                    .fill(Color("LSDandelion"))
                    .frame(width: 150, height: 200)
                    .offset(x: 200, y: 710)
                Circle()
                    .fill(Color("LSLightOrange"))
                    .frame(width: 150, height: 150)
                    .offset(x: -200, y: 700)
            }
            .navigationBarHidden(true)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
