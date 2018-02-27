//
//  ViewController.swift
//  TinkoffChat
//
//  Created by Vladislav on 21.02.18.
//  Copyright © 2018 Vladislav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = .magenta
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func viewWillAppear() {
        print("Calling \(#function)")
    }
    
    func viewDidAppear() {
        print("Calling \(#function)")
    }
    
    override func viewWillLayoutSubviews() {
        print("Calling \(#function)")
    }

    override func viewDidLayoutSubviews(){
        print("Calling \(#function)")
    }
    
    func viewWillDisappear() {
        print("Calling \(#function)")
    }
    
    func viewDidDisappear() {
        print("Calling \(#function)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

