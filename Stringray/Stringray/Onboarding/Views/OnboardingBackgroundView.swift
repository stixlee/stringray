//
//  OnboardingBackgroundView.swift
//  Stringray
//
//  Created by Michael Lee on 10/8/24.
//

import SwiftUI

struct OnboardingBackgroundView: View {
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
        }
        .padding(.top, 90)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.onboardingBackground.ignoresSafeArea())
    }
}

#Preview {
    OnboardingBackgroundView()
}
