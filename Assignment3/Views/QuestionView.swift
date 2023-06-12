//
//  ModelDetail.swift
//  Assignment3
//
//  Created by Wendy Barker on 6/11/23.
//

import SwiftUI

struct QuestionView: View {
    
    var question : ResultModel
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            VStack(spacing: 15) {
                VStack {
                    Text("Category:")
                    Text(question.category)
                }
                VStack {
                    Text("Type:")
                    Text(question.type)
                }
                VStack {
                    Text("Difficulty:")
                    Text(question.difficulty)
                }
            }
            
            Spacer()
            
            let questionText = question.question.replacingOccurrences(of: "&quot;", with: "\"", options: NSString.CompareOptions.literal, range:nil)
            let questionText2 = questionText.replacingOccurrences(of: "&#039;", with: "\'")
            let questionText3 = questionText2.replacingOccurrences(of: "&deg;", with: " Degrees ")
            Text(questionText3)
                .padding()
                .multilineTextAlignment(.center)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.blue, lineWidth: 2)
                }
                .font(.system(size: 24))
                .padding()
            Spacer()
            AnswersView(question: question)
        }
    }
}

