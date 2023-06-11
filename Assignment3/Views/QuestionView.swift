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
            HStack {
                Text(question.category)
                Text(question.type)
                Text(question.difficulty)
            }
            Text(question.question)
            AnswersView(question: question)
        }
    }
}

