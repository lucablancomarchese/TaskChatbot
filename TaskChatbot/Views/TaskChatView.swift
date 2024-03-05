//
//  TaskChatView.swift
//  TaskChatbot
//
//  Created by Luca Blanco Marchese on 05.03.24.
//

import SwiftUI

struct TaskChatView: View {
    @Binding var newItemPresented: Bool
    @State private var textInput: String = ""
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    Circle()
                        .frame(width: 70)
                    Image(systemName: "person")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                }
                
            }.padding()
            Divider()
            Spacer()
            Divider()
            HStack {
                ZStack {
                    Circle().stroke(Color.black, lineWidth: 1).frame(width: 40)
                    Image(systemName: "lines.measurement.vertical").resizable().scaledToFit().frame(width: 15, height: 15).padding()
                }.offset(x: 15)
                ZStack {
                    TextField("Write Your Task",text: $textInput).padding().background(RoundedRectangle(cornerRadius: 100).stroke(Color.black, lineWidth: 1).frame(width: 300, height: 40)).padding()
                    if textInput != "" {
                        ZStack {
                            RoundedRectangle(cornerRadius: 100)
                                .frame(width: 80, height: 35)
                            Text("Send").foregroundColor(.white)
                        }.offset(x: 108)
                        
                    }
                }
                
            }
            
        }
    }
}
#Preview {
    TaskChatView(newItemPresented: Binding(get: {return true}, set: {_ in }))
}
