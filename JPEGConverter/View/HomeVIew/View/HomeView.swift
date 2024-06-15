//
//  HomeView.swift
//  JPEGConverter
//
//  Created by A_Mcflurry on 6/15/24.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject private var viewModel: HomeViewModel
    
    init(
        viewModel: HomeViewModel = HomeViewModel()
    ) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        Text("123")
    }
}

#Preview {
    HomeView()
}
