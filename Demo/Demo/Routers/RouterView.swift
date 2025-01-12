//
//  RouterView.swift
//  Demo
//
//  Created by Wisanu Paunglumjeak on 12/1/2568 BE.
//

import SwiftUI

struct RouterView: View {
    
    @ObservedObject var router = Router()
    
    var body: some View {
        NavigationStack(path: $router.navPath) {
            ContentView()
                .navigationDestination(for: Destination.self) { destination in
                    switch destination {
                    case .item:
                        CalendarItemView()
                    case .horizontal_paging:
                        CalendarHorizontalPagingView()
                    }
                }
        }
        .environmentObject(router)
    }
}

#Preview {
    RouterView()
}
