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
            LaunchView()
                .opacity(showLaunch ? 1 : 0)
            
            // Second View
            SignupLoginView()
                .opacity(showSignupLogin ? 1 : 0)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.onboardingBackground.ignoresSafeArea())
        .onAppear {
            withAnimation(.easeInOut(duration: 1)) {
                showLaunch.toggle()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation(.easeInOut(duration: 1)) {
                    showSignupLogin.toggle()
                }
            }
        }
    }}

#Preview {
    OnboardingView()
}
