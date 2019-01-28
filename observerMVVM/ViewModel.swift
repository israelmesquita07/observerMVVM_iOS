//
//  ViewModel.swift
//  observerMVVM
//
//  Created by Israel Mesquita on 28/01/2019.
//  Copyright © 2019 israel. All rights reserved.
//

import Foundation


class ViewModel:NSObject {
    
    var counter: Counter
    var myContext:Int = 0
    
    init(counter: Counter) {
        self.counter = counter
        super.init()
        self.counter.addObserver(self, forKeyPath: #keyPath(Counter.counter), options: .new, context: &myContext)
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if context == &myContext {
            print("valor modificado")
            if let counterModified = change?[.newKey] as? String {
                print(counterModified)
            }
        }
    }
    
}
