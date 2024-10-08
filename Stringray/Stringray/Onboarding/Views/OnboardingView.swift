//
//  OnboardingView.swift
//  Stringray
//
//  Created by Michael Lee on 10/7/24.
//

import SwiftUI

struct OnboardingView: View {
    
    @State private var showSignupLogin = false
    @State private var showLaunch = false

    var body: some View {
        ZStack {
            // First View
            OnboardingBackgroundView()
                .opacity(showLaunch ? 1 : 0)
            Text(tagline)
                .font(.system(size: 24))
                .italic()
                .foregroundStyle(.onboardingForeground)
                .padding(.top, 75)
            
            // Second View
            SignupLoginView()
                .opacity(showSignupLogin ? 1 : 0)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.onboardingBackground.ignoresSafeArea())
        .onAppear {
            withAnimation(.easeInOut(duration: 0.5)) {
                showLaunch.toggle()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                withAnimation(.easeInOut(duration: 1)) {
                    showSignupLogin.toggle()
                }
            }
        }
    }}

#Preview {
    OnboardingView()
}
