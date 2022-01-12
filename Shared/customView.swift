//
//  customView.swift
//  LogInAndSignUp
//
//  Created by Prasannakumar Manikandan on 03/01/22.
//

import SwiftUI

struct customView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(Color("LSWhiteColor"))
                .frame(width: 200, height: 200)
            Circle()
                .fill(Color("LSDarkPink"))
                .frame(width: 200, height: 200)
                .offset(x: 70, y: 90)
                .clipped()
        }
        .frame(width: 150, height: 150)
        .cornerRadius(100)
    }
}

struct customRightView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(Color("LSDandelion"))
                .frame(width: 200, height: 200)
            Circle()
                .fill(Color("LSDarkPink"))
                .frame(width: 200, height: 200)
                .offset(x: -70, y: 90)
                .clipped()
        }
        .frame(width: 150, height: 150)
        .cornerRadius(100)
    }
}

struct LStextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding()
            .font(.custom("Oswald-Regular", size: 20))
            .padding(10)
            .frame(height: 50)
            .background(Color("LStextFieldColour"))
            .cornerRadius(30)
            .foregroundColor(.white)
    }
}

struct LSCustomTextFieldForNumber: View {
    var placeHolder = ""
    @State private var text = ""
    var body: some View {
        ZStack(alignment: .leading) {
            TextField(placeHolder, text: $text)
                .padding()
                .font(.custom("Oswald-Regular", size: 20))
                .padding(.leading, 85)
                .frame(height: 50)
                .background(Color("LStextFieldColour"))
                .cornerRadius(20)
                .foregroundColor(.white)
            Button( action: {
                
            }) {
                Text("+44")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color("LSContactCode"))
            }
            .frame(width: 80)
            .cornerRadius(30)
        }
    }
}


struct customView_Previews: PreviewProvider {
    static var previews: some View {
        customView()
    }
}
