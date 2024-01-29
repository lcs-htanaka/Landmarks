//
//  ListItemView.swift
//  Landmarks
//
//  Created by 田中宏貴 on 2024-01-29.
//

import SwiftUI

struct ListItemView: View {
    let item: Landmark
    
    var body: some View {
        
        HStack {
                Image(item.image)
                    .resizable()
                    .frame(width: 75, height: 75, alignment: .center)
                    .scaledToFit()
                    .clipShape(
                        RoundedRectangle(cornerRadius: 15.0)
                    )
            
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                
                
                HStack {
                    Image(systemName: item.isRecommended == true ? "hand.thumbsup.fill" : "hand.thumbsdown")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 20)
                        .padding(5)
                    
                    Spacer()
                }
            }
            
        }
        
    }
}

#Preview {
    ListItemView(item: rom)
        .padding()
}
