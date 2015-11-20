//
//  ViewController.swift
//  CharlesWoodson
//
//  Created by Omar Al-Hayderi on 11/16/15.
//  Copyright © 2015 testy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var validNumberField: UITextField!
    var numImagesRequested: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.yellowColor()
        
        let prompt: UITextView = UITextView()
        prompt.text = "How many Charles Woodsons do you want to see?"
        prompt.frame = CGRectMake(100,100,200,50)
        prompt.backgroundColor = UIColor.yellowColor()
        prompt.editable = false
        
        let button   = UIButton(type: UIButtonType.System) as UIButton
        button.frame = CGRectMake(175, 225, 50, 25)
        button.backgroundColor = UIColor.blackColor()
        button.setTitleColor(UIColor.grayColor(), forState: UIControlState.Normal)
        button.setTitle("Go!", forState: UIControlState.Normal)
        button.addTarget(self, action: "goButtonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.validNumberField = UITextField()
        self.validNumberField.frame = CGRectMake(175, 200, 50, 30)
        self.validNumberField.backgroundColor = UIColor.whiteColor()
        self.validNumberField.keyboardType = UIKeyboardType.NumberPad
        
        self.view.addSubview(prompt)
        self.view.addSubview(validNumberField)
        self.view.addSubview(button)
        
    }

    func goButtonAction(sender:UIButton!)
    {
//        if string.characters.count == 0 {
//            return true
//        }
//        let currentText:Int? = Int(textField.text!)
//        
//        return currentText <= 20
//        self.performSegueWithIdentifier("GoToViewController", sender:self)
        let wvc = WoodsonViewController()
        let numImagesString = self.validNumberField.text!
        wvc.numImages = Int(numImagesString)
        wvc.providesPresentationContextTransitionStyle = true
        wvc.modalPresentationStyle = .OverFullScreen
        self.presentViewController(wvc, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func userTappedBackground(sender: AnyObject) {
        view.endEditing(true)
    }
    
    // Dismiss the keyboard when the user taps the "Return" key or its equivalent
    // while editing a text field.
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
}
