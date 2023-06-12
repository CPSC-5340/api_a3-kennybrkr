//
// ContentView.swift : Assignment3
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct ContentView: View {
    @ObservedObject var quizvm = ViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(quizvm.Data) { quiz in
                    let questionText = quiz.question.replacingOccurrences(of: "&quot;", with: "\"", options: NSString.CompareOptions.literal, range:nil)
                    let questionText2 = questionText.replacingOccurrences(of: "&#039;", with: "\'")
                    let questionText3 = questionText2.replacingOccurrences(of: "&deg;", with: " Degrees ")
                    NavigationLink {
                        QuestionView(question: quiz)
                    } label: {
                        Text(questionText3)
                    }
                }
            }
            .onAppear {
                quizvm.fetchData()
            }
            .listStyle(.grouped)
            .navigationTitle("Questions")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
