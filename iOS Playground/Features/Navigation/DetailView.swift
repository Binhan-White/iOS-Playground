//
//  DetailView.swift
//  iOS Playground
//
//  Created by hancock on 2024/12/15.
//

import SwiftUI

struct DetailView: View {
    @State private var hideTabBar = false

    var body: some View {
        Text("This is the detail view")
            .onAppear {
                withAnimation(.easeInOut) {
                    hideTabBar = true
                }
            }
            .onDisappear {
                withAnimation(.easeInOut) {
                    hideTabBar = false
                }
            }
            .toolbar(hideTabBar ? .hidden : .visible, for: .tabBar)
            .navigationTitle("Detail")
    }
}

#Preview {
    DetailView()
}
