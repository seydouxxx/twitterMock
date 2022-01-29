//
//  MainTabView.swift
//  TwitterMock
//
//  Created by seydoux on 2022/01/29.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTabIndex = 0
    var body: some View {
        TabView(selection: $selectedTabIndex) {
            FeedView()
                .onTapGesture {
                    self.selectedTabIndex = 0
                }
                .tabItem {
                    Image(systemName: "house")
                }.tag(0)
            
            ExploreView()
                .onTapGesture {
                    self.selectedTabIndex = 1
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }.tag(1)
        
            NotificationView()
                .onTapGesture {
                    self.selectedTabIndex = 2
                }
                .tabItem {
                    Image(systemName: "bell")
                }.tag(2)
        
            MessagesView()
                .onTapGesture {
                    self.selectedTabIndex = 3
                }
                .tabItem {
                    Image(systemName: "envelope")
                }.tag(3)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
