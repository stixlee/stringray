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
        ZStack {
            OnboardingBackgroundView()
            PhoneView(phoneNumber: $phoneNumber)
            AuthenticationView()
        }
        .background(Color.clear.ignoresSafeArea())
    }
}

#Preview {
    SignupLoginView()
}
