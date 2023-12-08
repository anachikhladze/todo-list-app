//
//  ToDoListView.swift
//  ToDoListApp
//
//  Created by Anna Sumire on 08.12.23.
//

import SwiftUI

struct CustomListCell: View {
    var title: String
    var subtitle: String
    
    var body: some View {
        HStack(spacing: 130) {
            VStack(alignment: .leading) {
                Text("Mobile App Research")
                    .font(Font.custom("Inter", size: 16))
                    .foregroundColor(.white)
                
                HStack {
                    Image(systemName: "calendar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 14, height: 14, alignment: .center)
                        .foregroundColor(.white)
                    
                    Text("4 Oct")
                        .font(Font.custom("Inter", size: 16))
                        .foregroundColor(.white)
                }
            }
            ButtonView()
        }
        .padding()
        .background(Color(red: 0.09, green: 0.09, blue: 0.09))
        .cornerRadius(10)
        .shadow(radius: 5)
        .frame(width: 360, height: 80)
    }
}


struct ToDoListView: View {
    let data = TaskList.taskList
    var body: some View {
        List {
            ForEach(data) { item in
                CustomListCell(title: item.name, subtitle: item.date)
            }
        }
        .listStyle(.inset)
        .background(Color.black)
        .colorScheme(.dark)
    }
}


#Preview {
    ToDoListView()
}
