//
//  ListCell.swift
//  ToDoListApp
//
//  Created by Anna Sumire on 09.12.23.
//

import SwiftUI

struct ListCell: View {
    
    // MARK: - Properties
    @Binding var task: Task
    
    // MARK: - Body
    var body: some View {
        HStack(spacing: 16) {
            VStack(alignment: .leading) {
                Text(task.name)
                    .font(Font.custom("Inter", size: 16))
                    .foregroundColor(.white)
                
                HStack {
                    Image(systemName: "calendar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 14, height: 14, alignment: .center)
                        .foregroundColor(.white)
                    
                    Text(task.date)
                        .font(Font.custom("Inter", size: 16))
                        .foregroundColor(.white)
                }
            }
            
            Spacer()
            
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
