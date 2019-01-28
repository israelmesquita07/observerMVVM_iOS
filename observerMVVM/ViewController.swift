//
//  ViewController.swift
//  observerMVVM
//
//  Created by Israel Mesquita on 28/01/2019.
//  Copyright © 2019 israel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblCounter: UILabel!
    
    var counter:Counter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func changeCounter(_ sender: Any) {
        if let interatorCount = Int(lblCounter.text ?? "0") {
            counter = Counter(counter: interatorCount)
            counter.counter = interatorCount+1
            lblCounter.text = String(counter.counter)
        }
    }
    
}

