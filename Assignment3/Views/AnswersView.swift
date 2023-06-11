//
//  AnswersView.swift
//  Assignment3
//
//  Created by Wendy Barker on 6/11/23.
//

import SwiftUI

struct AnswersView: View {
    
    var question : ResultModel
    
    var body: some View {
        VStack {
            Text(question.correct_answer)
            ForEach(question.incorrect_answers) { answer in
                Text(answer)
            }
        }
    }
}
