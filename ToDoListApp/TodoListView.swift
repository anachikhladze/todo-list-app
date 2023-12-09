//
//  TodoListView.swift
//  ToDoListApp
//
//  Created by Anna Sumire on 08.12.23.
//

import SwiftUI

struct TodoListView: View {
    @State private var taskList = TaskList.taskList
    
    private var todoListCount: Int {
        taskList.filter { !$0.isDone }.count
    }
    
    private var doneTasksCount: Int {
        taskList.count - todoListCount
    }
    
    private var progressValue: Float {
        Float(doneTasksCount) / Float(taskList.count)
    }
    
    private func completeAll() {
        for index in taskList.indices {
            taskList[index].isDone = true
        }
    }
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 10) {
                HStack(spacing: 100) {
                    Text("You have \(todoListCount) tasks \nto complete")
                        .font(
                            Font.custom("Roboto", size: 25)
                                .weight(.bold)
                        )
                        .foregroundColor(.white)
                    
                    ZStack(alignment: .bottomTrailing) {
                        Image("girlImage")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 44, height: 45)
                            .clipped()
                        
                        Image("Ellipse")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 16, height: 16)
                        
                        
                        Text("\(todoListCount)")
                            .font(Font.custom("Inter", size: 14))
                            .foregroundColor(.white)
                            .padding(.trailing, 4)
                    }
                }
                
                Button {
                    completeAll()
                } label: {
                    Text("Complete All")
                        .frame(width: 350, height: 50)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .background(
                            LinearGradient (gradient: Gradient(colors: [Color.buttonGradient1, Color.buttonGradient2]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
                Text("Progress")
                    .font(
                        Font.custom("Roboto", size: 22)
                            .weight(.bold)
                    )
                    .foregroundColor(.white)
                
                
                ZStack(alignment: .leading) {
                    Rectangle()
                        .fill(Color(red: 0.09, green: 0.09, blue: 0.09))
                        .frame(width: 350, height: 120)
                        .cornerRadius(8)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Daily Task")
                            .font(Font.custom("Inter", size: 20))
                            .foregroundColor(.white)
                        
                        Text("\(doneTasksCount)/6 Tasks Completed")
                            .font(Font.custom("Inter", size: 20))
                            .foregroundColor(.white)
                        
                        HStack(spacing: 180) {
                            Text("Keep Working")
                                .font(Font.custom("Inter", size: 16))
                                .foregroundColor(.gray)
                            
                            Text("\(Int(progressValue * 100))%")
                                .font(Font.custom("Inter", size: 18))
                                .foregroundColor(.white)
                        }
                        
                        ProgressView(value: progressValue)
                            .progressViewStyle(LinearProgressViewStyle(tint: .purple))
                            .frame(width: 320)
                    }
                    .padding()
                }
                
                Text("Completed Tasks")
                    .font(Font.custom("Inter", size: 22))
                    .foregroundColor(.white)
                    .padding()
                
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 8) {
                        ForEach($taskList) { $task in
                            ListCell(task: $task)
                        }
                    }
                }
            }
        }
    }
}


#Preview {
    TodoListView()
}
