//
//  ListView.swift
//  Landmarks
//
//  Created by 田中宏貴 on 2024-01-29.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        
        NavigationStack {
            
            List(allLandmarks) { currentLandmark in
                
                NavigationLink {
                    DetailView(item: currentLandmark)
                } label: {
                    ListItemView(item: currentLandmark)
                }
                
            }
            .navigationTitle("Landmarks")
                        
        }
        
    }
}

#Preview {
    ListView()
}
