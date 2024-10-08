//
//  LaunchView.swift
//  Stringray
//
//  Created by Michael Lee on 10/7/24.
//

import SwiftUI

struct LaunchView: View {
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("logo")
                    .renderingMode(.template)
                    .resizable()
                    .frame(width: 148.07, height: 253)
                    .foregroundColor(.onboardingForeground)
                Spacer()
            }
//            .padding(.top, 50)
//            TextField("enter your phone number", text: $phoneNumber)
//                            .padding()
//                            .frame(height: 60)
//                            .background(Color.white)
//                            .cornerRadius(10)
//                            .shadow(color: Color.black.opacity(0.1), radius: 5)
//                            .padding() // Padding around the TextField
//                            .keyboardType(.phonePad)
            Spacer()
        }
        .padding(.top, 118)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.onboardingBackground.ignoresSafeArea())
    }
}

//#Preview {
//    LaunchView()
//}
