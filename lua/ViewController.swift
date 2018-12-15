//
//  ViewController.swift
//  Lua
//
//  Created by Kandy M on 12/14/18.
//  Copyright © 2018 Kandy M. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var a: Int = 0
    
    var motion: Int = 0
    
    
    

    @IBOutlet weak var Image01: UIImageView!
    
    let luaArray = ["01", "02", "03", "04" ,"05","06","07","08","09"]
    
  
   
    override func viewDidLoad() {
        
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake
        {
            updateimg()
        }
        
    }
    
    
   
    
   func updateimg()
   {
    a = a + 1
    Image01.image = UIImage(named: luaArray[a])
    print(a)
    if a == 9
    {
        a = 0
    }
    }
    
    

    @IBAction func nextbtn(_ sender: Any) {
        
        
        
      
            a = a + 1
            Image01.image = UIImage(named: luaArray[a])
            print(a)
            if a == 9
            {
                a = 0
            }
        
            
        

    }
    
    
    
    @IBAction func prev(_ sender: Any) {
        
        if a == 0
        {
            a = 9
        }
        
        Image01.image = UIImage(named: luaArray[a])
        print(a)
        a = a - 1
        
    }
    
    
    

}
