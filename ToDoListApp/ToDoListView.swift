//
//  ToDoListView.swift
//  ToDoListApp
//
//  Created by Anna Sumire on 08.12.23.
//

import SwiftUI

struct CustomListCell: View {
    @Binding var task: Task
    
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
            
            Image(systemName: task.isDone ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 24, height: 24)
                .scaledToFit()
                .foregroundColor(task.isDone ? .purple : .purple)
                .onTapGesture {
                    task.isDone.toggle()
                }
        }
        .padding()
        .background(Color(red: 0.09, green: 0.09, blue: 0.09))
        .cornerRadius(10)
        .shadow(radius: 5)
        .frame(width: 360, height: 80)
    }
}



