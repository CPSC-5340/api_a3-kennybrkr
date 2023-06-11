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
                    
                    NavigationLink {
                        QuestionView(question: quiz)
                    } label: {
                        Text(quiz.question)
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
