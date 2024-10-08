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
