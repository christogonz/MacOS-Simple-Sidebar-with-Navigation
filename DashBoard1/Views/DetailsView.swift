//
//  DetailsView.swift
//  DashBoard1
//
//  Created by Christopher Gonzalez on 2024-08-10.
//

import SwiftUI

enum Destination: Hashable {
    case home, settings, profile
}

struct DetailsView: View {
    var selectedView: Destination?
    
    var body: some View {
        Group {
            switch selectedView {
            case .home:
                    HomeView()
            case .settings:
                SettingsView()
            case .profile:
                ProfileView()
            case nil:
                Text("Select a View")
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    DetailsView()
}
