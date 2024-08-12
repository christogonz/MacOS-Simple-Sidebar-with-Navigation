//
//  ContentView.swift
//  DashBoard1
//
//  Created by Christopher Gonzalez on 2024-08-10.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedView: Destination? = .home
    
    
    
    var body: some View {
        NavigationSplitView {
            SidebarView(selectedView: $selectedView )
        } detail: {
            DetailsView(selectedView: selectedView)
        }
        .frame(minWidth: 600, minHeight: 400)
    }
}

#Preview {
    ContentView()
}
