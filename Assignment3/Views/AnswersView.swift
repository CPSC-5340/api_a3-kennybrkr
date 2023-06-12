//
//  AnswersView.swift
//  Assignment3
//
//  Created by Wendy Barker on 6/11/23.
//

import SwiftUI

struct AnswersView: View {
    
    @State var colorWrong : Color = .blue
    @State var colorCorrect : Color = .blue
    
    var question : ResultModel
    
    var body: some View {
        
        
        VStack {
            Text(question.correct_answer)
                .padding()
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(colorCorrect, lineWidth: 2)
                }
                .onTapGesture {
                    colorWrong = .red
                    colorCorrect = .green
                }
            ForEach(question.incorrect_answers) { answer in
                Text(answer)
                    .padding()
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(colorWrong, lineWidth: 2)
                    }
                    .onTapGesture {
                        colorWrong = .red
                        colorCorrect = .green
                    }
            }
        }
    }
}
