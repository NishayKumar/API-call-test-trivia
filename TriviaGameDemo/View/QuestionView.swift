//
//  QuestionView.swift
//  TriviaGameDemo
//
//  Created by Nishay Kumar on 13/07/23.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        VStack(spacing: 40) {
            HStack {
                Text("Trivia Game")
                    .lilacTitle()
                Spacer()
                Text("1 out of 10")
                    .foregroundColor(.accentColor)
                    .fontWeight(.heavy)
                 
            }
            ProgressBar(progress: 35)
            VStack(alignment: .leading){
                Text("Who was the Roman god of fire?")
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.gray)
                
                AnswerRow(answer: Answers(text: "Vulcan", isCorrect: true))
                AnswerRow(answer: Answers(text: "Apollo", isCorrect: false))
                AnswerRow(answer: Answers(text: "Jupiter", isCorrect: false))
                AnswerRow(answer: Answers(text: "Mercury", isCorrect: false))
            }
            PrimaryButton(text: "Next")
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background((Color (red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118)))
        .navigationBarBackButtonHidden()
    }
    
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
