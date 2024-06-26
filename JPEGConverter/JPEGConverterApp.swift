//
//  JPEGConverterApp.swift
//  JPEGConverter
//
//  Created by A_Mcflurry on 6/5/24.
//

import SwiftUI

@main
struct JPEGConverterApp: App {
    var body: some Scene {
        WindowGroup {
            navigationWrapper
        }
    }
    
    @ViewBuilder
    var navigationWrapper: some View {
        if #available(iOS 16, *) {
            NavigationStack {
                firstNavigation
            }
        } else {
            NavigationView {
                firstNavigation
            }
        }
    }
    
    @ViewBuilder
    var firstNavigation: some View {
        if UserDefaultsManger.isFirstRun {
            OnboardingView()
        } else {
            TabbarView()
        }
    }
}
