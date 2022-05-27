//
//  ViewController.swift
//  SwiftDemo
//
//  Created by Parul Jain on 04/10/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        doSomething()
        //setp 5
        findMaxFromArray!([100,300,754,222,44,432,535])
        iteration()
    }
   
    var findMaxFromArray: (([Int])-> Void)?
    func findMaxNumber(array:[Int], handler: @escaping ([Int])->Void) {
       //step 2
         handler(array)
       //setp 3
        findMaxFromArray = handler
    }
    func doSomething() {
       //setp 1
        findMaxNumber(array: [11,52,33,34,5,65,7,8,29,10]) {(result) in
          let maxNumber = result.max()!
          //step 4
           print("Max number from Array: \(maxNumber)")
        }
    }

    
    func iteration() {
        let names = ["John", "Alex" , "Alley"]
        
        var nameIterator = names.makeIterator()
        while let name =  nameIterator.next() {
            print("Name is \(name)")
        }
    }
    func msg1() {
        
    }
    func msg2() {
        
    }
    func msg3() {
        
    }
    func msg4() {
        
    }
}

