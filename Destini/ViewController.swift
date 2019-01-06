//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let allStories = StoryBank()
    
    @IBOutlet weak var restartButton: UIButton!
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!

    
    // TODO Step 5: Initialise instance variables here
    
    var currentStory: Story!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentStory = allStories.firstStory
        nextStory()
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
        // TODO Step 4: Write an IF-Statement to update the views
        if(sender.tag == 1) {
            currentStory = currentStory.answers[0].nextStory
        } else if(sender.tag == 2) {
           currentStory = currentStory.answers[1].nextStory
        }
        nextStory()
    }
    
    func nextStory() {
        storyTextView.text = currentStory.text
        if(currentStory.answers.isEmpty ) {
            topButton.isHidden = true
            bottomButton.isHidden = true
            restartButton.isHidden = false
        } else {
            topButton.setTitle(currentStory.answers[0].text, for: .normal)
            bottomButton.setTitle(currentStory.answers[1].text, for: .normal)
        }
    }
    
    @IBAction func restartButtonPressed(_ sender: Any) {
        topButton.isHidden = false
        bottomButton.isHidden = false
        restartButton.isHidden = true
        currentStory = allStories.firstStory
        nextStory()
    }
}

