//
//  SegmentedControl.swift
//  Weather Button
//
//  Created by Дмитрий Сенаторов on 17.04.2023.
//

import SwiftUI

struct SegmentedControl: View {
    @Binding var selection: Int
    var body: some View {
        VStack(spacing: 5) {
            
            //MARK: Segmented Buttons
            HStack {
                Button {
                    selection = 0
                    
                } label: {
                    Text("Hourly Forecast")
                }
                
                .frame(minWidth: 0, maxWidth: .infinity)
                
                Button {
                    selection = 1
                    
                } label: {
                    Text("Weekly Forecast")
                }
                .frame(minWidth: 0, maxWidth: .infinity)
            }
            .font(.subheadline.weight(.semibold))
            .foregroundColor(.secondary)
            
        }
        .padding(.top, 25)
    }
}

struct SegmentedControl_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControl(selection: .constant(0))
    }
}
