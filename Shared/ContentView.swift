//
//  ContentView.swift
//  Shared
//
//  Created by Prasannakumar Manikandan on 03/01/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var password = ""
    @State private var isNaviteOk = false
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .top) {
                    Color("LSBackGround")
                        .ignoresSafeArea(.all)
                    Group {
                        Circle()
                            .fill(Color("LSDandelion"))
                            .frame(width: 350, height: 400)
                            .offset(x: -230, y: -250)
                        Circle()
                            .fill(Color("LSLightOrange"))
                            .frame(width: 150, height: 150)
                            .offset(x: -180, y: 80)
                        Circle()
                            .fill(Color("LSDarkBlue"))
                            .frame(width: 80, height: 100)
                            .offset(x: -90, y: 100)
                        Capsule()
                            .fill(Color("LSCapsuleColor"))
                            .frame(width: 140, height: 200)
                            .offset(x: -45, y: -200)
                        Circle()
                            .fill(Color("LSTruquBlue"))
                            .frame(width: 100, height: 110)
                            .offset(x: -45, y: -30)
                        Circle()
                            .fill(Color("LSLightOrange"))
                            .frame(width: 130, height: 150)
                            .offset(x: -45, y: -120)
                        Circle()
                            .fill(Color("LSLightPink"))
                            .frame(width: 190, height: 200)
                            .offset(x: 130, y: -200)
                        customView()
                            .offset(x: 40, y: 60)
                        customRightView()
                            .offset(x: 180, y: 60)
                        Circle()
                            .fill(Color("LSDarkPink"))
                            .frame(width: 165, height: 250)
                            .offset(x: 120, y: -80)
                    }
                    VStack(spacing: 10) {
                        Spacer()
                        Group {
                            VStack(spacing: 0) {
                                Text("Welcome")
                                    .foregroundColor(.white)
                                    .font(.custom("Pacifico-Regular", size: 40))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .frame(height: 30)
                                Text("Back")
                                    .foregroundColor(.white)
                                    .font(.custom("Pacifico-Regular", size: 40))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            TextField("Name", text: $name)
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                            SecureField("PassWord", text: $password)
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                            Button(action: {
                                
                            }) {
                                Text("Forget password?")
                                    .font(.custom("Oswald-Regular", size: 18))
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                            }
                            Button(action: {
                                
                            }) {
                                Text("Login")
                                    .font(Font.system(size: 20, weight: .medium, design: .default))
                                    .frame(width: 120, height: 50)
                                    .foregroundColor(.white)
                                    .background(Color("LSButtonColour"))
                                
                            }.cornerRadius(20)
                        }
                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                        HStack {
                            Text("New User?")
                                .font(.custom("Oswald-Regular", size: 18))
                                .foregroundColor(.white)
                            NavigationLink(destination: SignUpView(), isActive: $isNaviteOk) {
                                Button(action: {
                                    self.isNaviteOk = true
                                }) {
                                    Text("Signup")
                                        .font(.custom("Oswald-Regular", size: 20))
                                        .foregroundColor(Color("LSButtonColour"))
                                    
                                }
                            }
                        }.padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 0))
                    }.textFieldStyle(LStextFieldStyle())
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
