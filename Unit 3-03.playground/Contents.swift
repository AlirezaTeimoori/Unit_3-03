//Created by: Alireza Teimoori
//Created on: 12 Oct 2017
//Created for: ICS3UR-1
//Lesson: Unit 3-03
//  This program plays rock paper scissor with the user


import UIKit
// comment out line below and one at bottom, to make code work in Xcode
import PlaygroundSupport
import Foundation
//for random number
class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    
    var instructionLabel : UILabel!
    var computerLabel : UILabel!
    var youLabel : UILabel!
    var userChoiceLabel : UILabel!
    var comChoiceLabel : UILabel!
    var RockButton : UIButton!
    var PaperButton : UIButton!
    var ScissorButton : UIButton!
    var answerLabel : UILabel!
    var comChoice:String!
    var userChoice:String!
    var winLoseLabel : UILabel!
    
    //generate random number and choose the element
    
    func generateRandomNumberAndChoose(){
        let randomNumber = arc4random_uniform(3)
        
        if randomNumber == 1 {
            comChoice = "Paper"
        }else if randomNumber == 2{
            comChoice = "Scissor"
        }else if randomNumber == 0{
            comChoice = "Rock"
        }
        
        comChoiceLabel = UILabel(frame: CGRect(x: 350, y: 150, width: 500, height: 50))
        comChoiceLabel.text = String(comChoice)
        view.addSubview(comChoiceLabel)
    }
    
    // decide who wins
    
    func decideWhoWins(){
        if userChoice == comChoice {
            winLoseLabel = UILabel(frame: CGRect(x: 350, y: 250, width: 500, height: 50))
            winLoseLabel.text = "TIE!!!"
            view.addSubview(winLoseLabel)
        }else if userChoice == "Rock"{
            if comChoice == "Scissor"{
                winLoseLabel = UILabel(frame: CGRect(x: 350, y: 250, width: 500, height: 50))
                winLoseLabel.text = "YOU WIN!!!"
                view.addSubview(winLoseLabel)
            }else if comChoice == "Paper" {
                winLoseLabel = UILabel(frame: CGRect(x: 350, y: 250, width: 500, height: 50))
                winLoseLabel.text = "YOU LOSE!!!"
                view.addSubview(winLoseLabel)
            }
        }else if userChoice == "Paper"{
            if comChoice == "Scissor"{
                winLoseLabel = UILabel(frame: CGRect(x: 350, y: 250, width: 500, height: 50))
                winLoseLabel.text = "YOU LOSE!!!"
                view.addSubview(winLoseLabel)
            }else if comChoice == "Rock"{
                winLoseLabel = UILabel(frame: CGRect(x: 350, y: 250, width: 500, height: 50))
                winLoseLabel.text = "YOU WIN!!!"
                view.addSubview(winLoseLabel)
            }
        }else if userChoice == "Scissor"{
            if comChoice == "Paper"{
                winLoseLabel = UILabel(frame: CGRect(x: 350, y: 250, width: 500, height: 50))
                winLoseLabel.text = "YOU WIN!!!"
                view.addSubview(winLoseLabel)
            }else if comChoice == "Rock"{
                winLoseLabel = UILabel(frame: CGRect(x: 350, y: 250, width: 500, height: 50))
                winLoseLabel.text = "YOU LOSE!!!"
                view.addSubview(winLoseLabel)
            }
        }
    }
    
    @objc func rockFunction(){
        userChoiceLabel = UILabel(frame: CGRect(x: 350, y: 350, width: 500, height: 50))
        userChoiceLabel.text = "Rock"
        view.addSubview(userChoiceLabel)
        
        generateRandomNumberAndChoose()
        
        userChoice = "Rock"
        
        decideWhoWins()
        
        
    }
    
    @objc func paperFunction(){
        userChoiceLabel = UILabel(frame: CGRect(x: 350, y: 350, width: 500, height: 50))
        userChoiceLabel.text = "Paper"
        view.addSubview(userChoiceLabel)
        
        generateRandomNumberAndChoose()
        
        userChoice = "Paper"
        
        decideWhoWins()
        
    }
    
    @objc func scissorFunction(){
        userChoiceLabel = UILabel(frame: CGRect(x: 350, y: 350, width: 500, height: 50))
        userChoiceLabel.text = "Scissor"
        view.addSubview(userChoiceLabel)
        
        generateRandomNumberAndChoose()
        
        userChoice = "Scissor"
        
        decideWhoWins()
        
    }
    
    override func viewDidLoad() {
        // create the UIView
        
        let view = UIView()
        view.backgroundColor = UIColor.white
        self.view = view
        
        
        // random number generator and chooser func
        
        
        
        // create all the UIElement
        
        instructionLabel = UILabel(frame: CGRect(x: 300, y: 444, width: 500, height: 50))
        instructionLabel.text = "touch your choice to start playing"
        view.addSubview(instructionLabel)
        
        computerLabel = UILabel(frame: CGRect(x: 400, y: 15, width: 500, height: 50))
        computerLabel.text = "COMPUTER"
        view.addSubview(computerLabel)
        
        
        youLabel = UILabel(frame: CGRect(x: 400, y: 500, width: 500, height: 50))
        youLabel.text = "YOU"
        view.addSubview(youLabel)
        
        
            //Rock Button
        RockButton = UIButton(frame: CGRect(x: 200, y: 400, width: 100, height: 50))
        RockButton.setTitle("Rock", for: UIControlState.normal)
        RockButton.setTitleColor(UIColor.blue, for: UIControlState.normal)
        RockButton.addTarget(self, action: #selector(rockFunction), for: UIControlEvents.touchUpInside)
        view.addSubview(RockButton)
        
            //Paper Button
        PaperButton = UIButton(frame: CGRect(x: 400, y: 400, width: 100, height: 50))
        PaperButton.setTitle("Paper", for: UIControlState.normal)
        PaperButton.setTitleColor(UIColor.blue, for: UIControlState.normal)
        PaperButton.addTarget(self, action: #selector(paperFunction), for: UIControlEvents.touchUpInside)
        view.addSubview(PaperButton)
        
        
            //Scissor Button
        ScissorButton = UIButton(frame: CGRect(x: 600, y: 400, width: 100, height: 50))
        ScissorButton.setTitle("Scissor", for: UIControlState.normal)
        ScissorButton.setTitleColor(UIColor.blue, for: UIControlState.normal)
        ScissorButton.addTarget(self, action: #selector(scissorFunction), for: UIControlEvents.touchUpInside)
        view.addSubview(ScissorButton)
        
        
        
        answerLabel = UILabel(frame: CGRect(x: 50, y: 350, width: 500, height: 50))
        answerLabel.text = nil
        view.addSubview(answerLabel)
        
    }
    
    // this is for when code is moved to Xcode, the Status bar will be removed
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// need to also comment this out to make work in Xcode
PlaygroundPage.current.liveView = ViewController()

