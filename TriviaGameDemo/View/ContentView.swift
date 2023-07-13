//
//  ContentView.swift
//  TriviaGameDemo
//
//  Created by Nishay Kumar on 13/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 40) {
                VStack(spacing: 20) {
                    Text("Trivia Game")
                        .lilacTitle()
                    
                    Text("Are you ready to test out your trivia skills?")
                        .foregroundColor(.accentColor)
                    
                }
                NavigationLink {
                    TriviaView()
                } label: {
                    PrimaryButton(text: "Let's go!")
                }

                
                    
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
        .background((Color (red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118)))
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
