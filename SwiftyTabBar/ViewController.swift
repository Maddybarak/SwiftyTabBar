//
//  ViewController.swift
//  SwiftyTabBar
//
//  Created by Maddy on 18/05/2017.
//  Copyright © 2017 Test. All rights reserved.
//

import UIKit

class ViewController: UIViewController,controllerDismissed {
    
    
    //Implement the delegate method and performed required action
    func myVCDidFinish(status: Bool) {
        self.tabBarController?.selectedIndex = 2
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "mySegue" {
            let vc = segue.destination as! MoveToTab
            vc.delegate = self
        }
        
    }
    
    
    
    
    
    
}

