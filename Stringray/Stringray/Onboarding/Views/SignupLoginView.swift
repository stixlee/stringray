//
//  SignupLoginView.swift
//  Stringray
//
//  Created by Michael Lee on 10/7/24.
//

import SwiftUI

struct SignupLoginView: View {
    
    @State var phoneNumber: String = ""

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
            Spacer()
            HStack {
                Spacer()
                TextField("enter your phone number", text: $phoneNumber)
                    .padding()
                    .frame(height: 60)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.1), radius: 5)
                    .padding()
                    .keyboardType(.phonePad)
                    .padding(.bottom, 160)
                    .padding(.top, 40)
                Spacer()
            }
            HStack {
                // Left Image
                Button(action: {
                    // Action to perform when button is tapped
                    print("Apple button tapped!")
                }) {
                    Image("apple")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 60, height: 60)
                        .foregroundColor(.onboardingForeground)
                        .shadow(color: Color.black.opacity(0.3), radius: 4, x: 0, y: 2) // Apply drop shadow
                }
                .buttonStyle(PlainButtonStyle())
                Spacer()
                // Center Image
                Button(action: {
                    // Action to perform when button is tapped
                    print("Facebook button tapped!")
                }) {
                    Image("facebook")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 60, height: 60)
                        .foregroundColor(.onboardingForeground)
                        .shadow(color: Color.black.opacity(0.3), radius: 4, x: 0, y: 2) // Apply drop shadow
                }
                .buttonStyle(PlainButtonStyle())
                Spacer()
                // Right Image
                Button(action: {
                    // Action to perform when button is tapped
                    print("Google button tapped!")
                }) {
                    Image("google")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 60, height: 60)
                        .foregroundColor(.onboardingForeground)
                        .shadow(color: Color.black.opacity(0.3), radius: 4, x: 0, y: 2) // Apply drop shadow
                }
                .buttonStyle(PlainButtonStyle())
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 72)
            .padding(.bottom, 150)
            Spacer()
        }
        .padding(.top, 118)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.onboardingBackground.ignoresSafeArea())
    }
}

#Preview {
    SignupLoginView()
}
