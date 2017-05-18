//
//  MoveToTab.swift
//  SwiftyTabBar
//
//  Created by Maddy on 18/05/2017.
//  Copyright © 2017 Test. All rights reserved.
//

import UIKit

//Create a protocol
protocol controllerDismissed{
    func myVCDidFinish(status:Bool)
}

class MoveToTab: UIViewController {
    
    var delegate:controllerDismissed! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func moveToTab(_ sender: Any) {
        
        //1st way
        self.dismiss(animated: true, completion: nil)
        self.delegate!.myVCDidFinish(status: true)
        
        //2nd way
        //        self.dismiss(animated: true) {
        //            // if view is dismissed call the delegate
        //            self.delegate!.myVCDidFinish(status: true)
        //
        //        }
    }
    
}
