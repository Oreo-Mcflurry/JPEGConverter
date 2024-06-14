//
//  OnboardingView.swift
//  JPEGConverter
//
//  Created by A_Mcflurry on 6/8/24.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView {
            Color.black
            Color.red
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    OnboardingView()
}
