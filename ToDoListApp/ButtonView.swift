//
//  ButtonView.swift
//  ToDoListApp
//
//  Created by Anna Sumire on 08.12.23.
//

import SwiftUI

struct ButtonView: View {
    @State var isChecked: Bool = false

    var body: some View {
        Button(action: {
            isChecked.toggle()
        }) {
            HStack {
                Image(systemName: isChecked ? "checkmark.circle.fill" : "circle")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .scaledToFit()
                    .foregroundColor(isChecked ? .purple : .purple)
            }
        }
    }
}


#Preview {
    ButtonView()
}
