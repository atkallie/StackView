//
//  ViewController.swift
//  StackView
//
//  Created by Ahmed T Khalil on 1/15/17.
//  Copyright © 2017 kalikans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //To create a stackview simply select what you wish to group and press the down arrow thing next to the AutoLayout button
    //To remove a stackview, select the stackview to be removed, hold down the option key, and then press the down arrow thing
    //Some useful things to note:
    //Distribution: 'Equal Spacing' is used to automatically redistribute the elements in the stackview on the axis of choice (i.e. Horizontal vs. Verical)
    
    //the following label starts off 'Hidden' (done in Attributes inspector for the label
    @IBOutlet var descriptionLabel: UILabel!
    
    //then the 'Show Description' button unhides it!
    
    @IBAction func showDescription(_ sender: Any) {
        let button = sender as! UIButton
        
        if button.titleLabel?.text == "Show Description" {
            UIView.animate(withDuration: 0.3, animations: { 
                self.descriptionLabel.isHidden = false
            })
            
            button.setTitle("Hide Description", for: .normal)
            
        }else{
            UIView.animate(withDuration: 0.3, animations: {
                self.descriptionLabel.isHidden = true
            })
            
            button.setTitle("Show Description", for: .normal)
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

