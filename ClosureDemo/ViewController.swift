//
//  ViewController.swift
//  ClosureDemo
//
//  Created by Lisa Steele on 5/1/18.
//  Copyright © 2018 lisahsteele. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var volume = 240.0
    var newVolume = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var resultsLabel: UILabel!
    
    @IBAction func presentAlert(_ sender: UIButton) {
        let alert = UIAlertController(title: "Alert", message: "Volume is \(volume)", preferredStyle: .alert)
        
        let clearAction = UIAlertAction(title: "Clear", style: .destructive, handler: { (action) -> () in
            self.volume = 0
            self.resultsLabel.text = "Cleared"
        })
        
        let doubleAction = UIAlertAction(title: "Double", style: .default, handler: { (action) -> () in
            self.volume *= 2
            self.resultsLabel.text = "\(self.volume)"

        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) -> () in
            self.resultsLabel.text = "\(self.volume)"
        })
        
        alert.addAction(clearAction)
        alert.addAction(doubleAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true, completion: { () -> Void in
            print ("present Completed")
        })
        print ("Outside Handler")
        
        
    }
    
}

