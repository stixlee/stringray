//
//  PhoneView.swift
//  Stringray
//
//  Created by Michael Lee on 10/8/24.
//

import SwiftUI

struct PhoneView: View {
    
    @Binding var phoneNumber: String
    
    var body: some View {
        VStack {
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
                Spacer()
            }
            .padding(.top, 390)
            Spacer()
        }
    }
}

//#Preview {
//    PhoneView()
//}
