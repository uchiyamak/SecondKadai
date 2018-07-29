//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 内山和也 on 2018/07/26.
//  Copyright © 2018年 kazuya.uchiyama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inName: UITextField!
    @IBAction func unwind(_ segue: UIStoryboardSegue) {     //←これ何？　_
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {     //←これ何？
        let show:showName = segue.destination as! showName
        
        //let printName = inName.text
        //show.name = printName!
        show.name = inName.text!     //なぜ！が必要？textfieldがnilになりうるから？
    }

}

