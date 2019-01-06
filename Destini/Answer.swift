//
//  Answer.swift
//  Destini
//
//  Created by Satish Kamatkar on 1/4/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class Answer {
    let text: String
    let nextStory: Story
    
    init(answerText: String, story: Story) {
        text = answerText
        nextStory = story
    }
}
