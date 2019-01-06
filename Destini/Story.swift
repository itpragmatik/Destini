//
//  Story.swift
//  Destini
//
//  Created by Satish Kamatkar on 1/4/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class Story {
    
    let text: String
    let answers: [Answer]
    
    init(content: String, possibleAnswers: [Answer]) {
        text = content
        answers = possibleAnswers
    }
}
