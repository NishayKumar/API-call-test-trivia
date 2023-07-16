//
//  TriviaView.swift
//  TriviaGameDemo
//
//  Created by Nishay Kumar on 14/07/23.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    var body: some View {
        if triviaManager.reachEnd {
            ReachedEnd
        }else {
            QuestionView()
                .environmentObject(triviaManager)
        }
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView()
            .environmentObject(TriviaManager())
    }
}

extension TriviaView {
    var ReachedEnd: some View {
        VStack(spacing: 20) {
            Text("Trivia Game")
                .lilacTitle()
            
            Text("Congradulations, you have completed the game! 🥳")
                .multilineTextAlignment(.center)
            Text("You score \(triviaManager.score) out of \(triviaManager.length)")
            
            Button {
                Task.init {
                    await triviaManager.fetchTrivia()
                }
            } label: {
                PrimaryButton(text: "Play again", background: .accentColor)
            }
        }
        .foregroundColor(.accentColor)
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background((Color (red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118)))
    }
}
