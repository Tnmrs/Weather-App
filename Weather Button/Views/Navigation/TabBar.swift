//
//  TabBar.swift
//  Weather Button
//
//  Created by Дмитрий Сенаторов on 12.04.2023.
//

import SwiftUI

struct TabBar: View {
    var action: () -> Void
    
    var body: some View {
        ZStack {
            // MARK: Arc Shape
            Arc()
                .fill(Color.tabBarBackground)
                .frame(height: 88)
                .overlay{
                    // MARK: Arc Border
                    Arc()
                        .stroke(Color.tabBarBorder, lineWidth: 0.5)
                }
            
            // MARK: Tab Items
        HStack {
            // MARK: Expand Button
            Button {
                action()
            } label: {
                Image(systemName: "plus.circle")
                    .frame(width: 44, height: 44)
            }
            
            Spacer()
            // MARK: Navigation Button
            NavigationLink {
               
            } label: {
                Image(systemName: "list.star")
                    .frame(width: 44, height: 44)
            }

        }
        .font(.title2)
        .foregroundColor(.white)
        .padding(EdgeInsets(top: 20, leading: 32, bottom: 24, trailing: 32))
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(action: {}
                )
            .preferredColorScheme(.dark)
    }
}
