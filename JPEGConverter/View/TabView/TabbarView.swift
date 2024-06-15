//
//  TabView.swift
//  JPEGConverter
//
//  Created by A_Mcflurry on 6/15/24.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            homeView
            settingView
        }
    }
    
    private var homeView: some View {
        HomeView()
            .tabItem {
                Label(
                    title: { Text("Home") },
                    icon: { Image(systemName: "house") }
                )
            }
    }
    
    private var settingView: some View {
        SettingView()
            .tabItem {
                Label(
                    title: { Text("Setting") },
                    icon: { Image(systemName: "gear") }
                )
            }
    }
}
