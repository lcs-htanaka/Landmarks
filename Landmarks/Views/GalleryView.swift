//
//  GalleryView.swift
//  Landmarks
//
//  Created by 田中宏貴 on 2024-01-29.
//

import SwiftUI

struct GalleryView: View {
    
    // MARK: Stored properties
    let twoColumns = [
        GridItem(
            .adaptive(
                minimum: 100,
                maximum: 200
            ),
            alignment: .top
        ),
        GridItem(
            .adaptive(
                minimum: 100,
                maximum: 200
            ),
            alignment: .top
        ),
    ]
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationStack {
            ScrollView {
                
                LazyVGrid(
                    columns: twoColumns
                ) {
                    
                    ForEach(
                        allLandmarks
                    ) { currentLandmark in
                        
                        
                        NavigationLink {
                            DetailView(
                                item: currentLandmark
                            )
                        } label: {
                            GalleryItemView(
                                item: currentLandmark
                            )
                        }
                        .tint(.primary)
                    }
                }
            }
            .navigationTitle(
                "Landmarks"
            )
                        
        }
    }
}

#Preview {
    GalleryView()
}
