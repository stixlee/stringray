//
//  AuthenticationView.swift
//  Stringray
//
//  Created by Michael Lee on 10/8/24.
//

import SwiftUI

struct AuthenticationView: View {
    var body: some View {
        VStack {
            HStack {
                Button(action: {
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
                Button(action: {
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
                Button(action: {
                    print("Google button tapped!")
                }) {
                    Image("google")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 60, height: 60)
                        .foregroundColor(.onboardingForeground)
                        .shadow(color: Color.black.opacity(0.3), radius: 4, x: 0, y: 2)
                }
                .buttonStyle(PlainButtonStyle())
            }
            .padding(.top, 550)
            .frame(maxWidth: .infinity)
            Spacer()
        }
        .padding(.horizontal, 72)
    }

}

#Preview {
    AuthenticationView()
}
