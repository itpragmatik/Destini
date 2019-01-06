//
//  StoryBank.swift
//  Destini
//
//  Created by Satish Kamatkar on 1/4/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class StoryBank {
    var firstStory: Story
    
    let story4 = Story(content: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?", possibleAnswers: [])
    
    let story5 = Story(content: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in." , possibleAnswers:[])
    
    let story6 = Story(content: "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\"", possibleAnswers: [])
    
   
    
    init() {
        let answer3a = Answer(answerText: "I love Elton John! Hand him the cassette tape.", story: story6)
        
        let answer3b = Answer(answerText: "It\'s him or me! You take the knife and stab him.", story: story5)
        
        let story3 = Story(content: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",possibleAnswers:[answer3a,answer3b])
        
        let answer2a = Answer(answerText: "At least he\'s honest. I\'ll climb in.", story: story3)
        
        let answer2b = Answer(answerText: "Wait, I know how to change a tire.", story: story4)
        
        
        let story2 = Story(content: "He nods slowly, unphased by the question.", possibleAnswers: [answer2a,answer2b])
        
        
        
        let answer1a = Answer(answerText: "I\'ll hop in. Thanks for the help!", story: story3)
        let answer1b = Answer(answerText: "Better ask him if he\'s a murderer first.", story: story2)
        
        let story1 = Story(content:"Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\".", possibleAnswers: [answer1a,answer1b] )
        firstStory = story1
    }
}
