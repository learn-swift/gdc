//
//  ViewController.swift
//  gdc
//
//  Created by Nguyen Ngoc Duc on 1/8/16.
//  Copyright © 2016 ND NINJA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        printLoop()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func printLoop(){
        let queue: dispatch_queue_t = dispatch_queue_create("xyz.ndninja.myqueue", DISPATCH_QUEUE_CONCURRENT)
        
        for i in 0..<100{
            dispatch_async(queue, {
                print("\(i) - \(NSThread.currentThread())")
                sleep(1)
            })
        }
    }
    
}

