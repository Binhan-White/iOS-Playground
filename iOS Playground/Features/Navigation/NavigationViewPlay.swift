//
//  NavigationView.swift
//  iOS Playground
//
//  Created by hancock on 2024/12/15.
//

import SwiftUI

struct NavigationViewPlay: View {
    var body: some View {
            TabView {
                // 第一个Tab
                NavigationStack {
                    VStack {
                        Text("首页")
                            .font(.largeTitle)
                        NavigationLink("跳转到详情页面", destination: DetailView())
                    }
                    .navigationTitle("首页")
                }
                .tabItem {
                    Label("首页", systemImage: "house.fill")
                }
                
                // 第二个Tab
                NavigationStack {
                    VStack {
                        Text("设置")
                            .font(.largeTitle)
                        NavigationLink("跳转到设置详情", destination: DetailView())
                    }
                    .navigationTitle("设置")
                }
                .tabItem {
                    Label("设置", systemImage: "gearshape.fill")
                }
                
                NavigationStack {
                    List {
                        NavigationLink("Go to Detail", destination: DetailView())
                    }
                    .navigationDestination(for: String.self) { value in
                        Text(value)
                    }
                }
                .tabItem {
                    Label("设置", systemImage: "gearshape.fill")
                }
            }
        }
}

#Preview {
    NavigationViewPlay()
}
