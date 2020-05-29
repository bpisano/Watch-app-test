//
//  PickerView.swift
//  Watch app test WatchKit Extension
//
//  Created by Benjamin Pisano on 29/05/2020.
//  Copyright © 2020 Snopia. All rights reserved.
//

import SwiftUI

struct PickerView<T: Segmentable>: View {
    
    let title: String
    @Binding var selection: Int
    let items: [T]
        
    var body: some View {
        Section(header: Text(title)) {
            ForEach(items.indices) { index in
                self.cell(for: self.items[index], index: index)
            }
        }
    }
    
    private func cell(for item: T, index: Int) -> some View {
        print(title, item.title, items.map({ $0.title }))
        return Button(action: {
            self.selection = index
        }, label: {
            HStack {
                Text(item.title)
                Spacer()
                if index == self.selection {
                    Image(systemName: "checkmark")
                        .font(.headline)
                        .foregroundColor(.blue)
                }
            }
        })
    }
    
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView<ExponentSymbol>(title: "My Picker", selection: .constant(0), items: ExponentSymbol.allCases)
    }
}
