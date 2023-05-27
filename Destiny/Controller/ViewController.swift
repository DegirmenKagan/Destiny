//
//  ViewController.swift
//  Destiny
//
//  Created by Kağan Değirmen on 27.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var choiceButton1: UIButton!
    @IBOutlet weak var choiceButton2: UIButton!
    @IBOutlet weak var storyLabel: UILabel!
    
    var storyLogic = StoryLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyLogic.nextStory(userChoice: sender.currentTitle!)

        updateUI()
    }
    
    func updateUI(){
        storyLabel.text = storyLogic.getTitle()
        let choices = storyLogic.getChoices()
        choiceButton1.setTitle(choices[0], for: .normal)
        choiceButton2.setTitle(choices[1], for: .normal)
    }
}

