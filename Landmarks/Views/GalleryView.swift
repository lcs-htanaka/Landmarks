//
//  GalleryView.swift
//  Landmarks
//
//  Created by 田中宏貴 on 2024-01-29.
//

import SwiftUI

struct GalleryView: View {
        
    var body: some View {
        
        NavigationStack {
            
            List(allLandmarks) { currentLandmark in
                
                NavigationLink {
                    DetailView(item: currentLandmark)
                } label: {
                    GalleryItemView(item: currentLandmark)
                }
                
            }
            .navigationTitle("Landmarks")
                        
        }
    }
}

#Preview {
    GalleryView()
}
