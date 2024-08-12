//
//  SidebarView.swift
//  DashBoard1
//
//  Created by Christopher Gonzalez on 2024-08-10.
//

import SwiftUI

//enum Destination: Hashable {
//    case home, settings, profile
//}

struct SidebarView: View {
    @Binding var selectedView: Destination?
    
    var body: some View {
        VStack {
            List(selection: $selectedView) {
                Label("Home", systemImage: "house")
                    .tag(Destination.home)
                    
                Label("Profile", systemImage: "person")
                    .tag(Destination.profile)
                
                Label("Settings", systemImage: "gear")
                    .tag(Destination.settings)
                Spacer()
            }
            Spacer()
            
            HStack {
                Image(systemName: "rectangle.portrait.and.arrow.forward")
                Text("Sign Out")
            }
            .padding(.vertical, 8)
            .padding(.horizontal)
            .background(.red)
            .clipShape(.rect(cornerRadius: 8))
            .onTapGesture {}
            
            
                
        }
        .padding(.vertical)
        
        
    }
}

//#Preview {
//    SidebarView(path: $path)
//}
