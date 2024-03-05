//
//  ContentView.swift
//  TaskChatbot
//
//  Created by Luca Blanco Marchese on 05.03.24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = TaskChatViewViewModel()
    
    var body: some View {
        Spacer()
        ZStack{
            Button (){
                viewModel.showingTaskChatView = true
            } label: {
                ZStack {
                    Circle()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100).foregroundColor(.black)
                    
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                }
            }.sheet(isPresented: $viewModel.showingTaskChatView) { //isPresented erwartet ein boolschen Wert
                TaskChatView(newItemPresented: $viewModel.showingTaskChatView)
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}
