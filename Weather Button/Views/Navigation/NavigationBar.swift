//
//  NavigationBar.swift
//  Weather Button
//
//  Created by Дмитрий Сенаторов on 23.04.2023.
//

import SwiftUI

struct NavigationBar: View {
    //Возвращение назад при нажатии на Weather
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(spacing: 8){
            HStack {
                // MARK: Back Button
                
                Button {
                    //Возвращение назад при нажатии на Weather
                    dismiss()
                    
                } label: {
                    // MARK: Back Button Icon
                    HStack (spacing: 5){
                        Image(systemName: "chevron.left")
                            .font(.system(size: 23).weight(.medium))
                        .foregroundColor(.secondary)
                        // MARK: Back Button Label
                        Text("Weather")
                            .font(.title)
                            .foregroundColor(.primary)
                    }
                    .frame(height: 55)
                }
                
                Spacer()
                
                // MARK: More Button
                Image(systemName: "ellipsis.circle")
                    .font(.system(size: 28))
                    .frame(width: 44, height: 44, alignment: .trailing)
                .foregroundColor(.secondary)
            }
            .frame(height: 52)
        }
        .frame(height: 106, alignment: .top)
        .padding(.horizontal, 16)
        .padding(.top, 49)
        .backgroundBlur(radius: 20, opaque: true)
        .background(Color.navBarBackground)
        //Отображение элемента наверху
        .frame(maxHeight: .infinity, alignment: .top)
        .ignoresSafeArea()
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
