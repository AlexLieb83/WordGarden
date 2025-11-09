//
//  ContentView.swift
//  WordGarden
//
//  Created by Alex Liebhaber on 11/8/25.
//

import SwiftUI

struct ContentView: View {
    @State private var wordsGuessed = 0
    @State private var wordsMissed = 0
    @State private var wordsToGuess = ["SWIFT", "DOG", "CAT"]
    @State private var gameStatusMessage = "How many guesses to uncover the hidden word?"
    @State private var currentWord = 0 //index in wordsToGuess for hidden word
    @State private var guessedLetter = ""
    @State private var imageName = "flower8"
    @State private var playAgainHidden = true
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("Words Guessed: \(wordsGuessed)")
                    Text("Words Missed: \(wordsMissed)")
                }
                
                Spacer()
                
                VStack {
                    Text(
                        "Words to Guess: \(wordsToGuess.count - (wordsGuessed + wordsMissed))"
                    )
                    Text("Words in Game: \(wordsToGuess.count)")
                }
            }
            .padding(.horizontal)
            
            Spacer()
            
            Text(gameStatusMessage)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            
            //TODO: Switch to wordsToGuess[currentWord]
            Text("_ _ _ _ _")
                .font(.title)
            
            if playAgainHidden {
                HStack {
                    TextField("", text: $guessedLetter)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 30)
                        .overlay {
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(.gray, lineWidth: 2)
                        }
                    
                    Button("Guess a Letter") {
                        //TODO: Guess a letter action here
                        playAgainHidden = false
                    }
                    .buttonStyle(.bordered)
                    .tint(.mint)
                }
            }else {
                Button("Another Word?") {
                    //TODO: Another Word Button Action Here
                    playAgainHidden = true
                }
                .buttonStyle(.glassProminent)
                .tint(.mint)
            }
            
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
            
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    ContentView()
}
