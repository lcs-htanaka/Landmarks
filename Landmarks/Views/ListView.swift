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
            
            List {
                
                NavigationLink {
                    DetailView(item: sudburyNickel)
                } label: {
                    Text(sudburyNickel.name)
                }

                NavigationLink {
                    DetailView(item: niagaraFalls)
                } label: {
                    Text(niagaraFalls.name)
                }

                NavigationLink {
                    DetailView(item: cnTower)
                } label: {
                    Text(cnTower.name)
                }

                NavigationLink {
                    DetailView(item: rom)
                } label: {
                    Text(rom.name)
                }

                NavigationLink {
                    DetailView(item: wonderland)
                } label: {
                    Text(wonderland.name)
                }

                NavigationLink {
                    DetailView(item: kawarthas)
                } label: {
                    Text(kawarthas.name)
                }

                
            }
            .navigationTitle("Landmarks")
                        
        }
        
    }
}

#Preview {
    ListView()
}
