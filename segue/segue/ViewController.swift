//
//  ViewController.swift
//  segue
//
//  Created by 内山和也 on 2018/07/23.
//  Copyright © 2018年 kazuya.uchiyama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ValueX: UITextField!
    @IBOutlet weak var ValueY: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewController を取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewContorollerで宣言しているx, yに値を代入して渡す
        //let inX:Int? = Int(self.ValueX.text!)
        //let inY:Int? = Int(self.ValueY.text!)
        //resultViewController.x = inX!
        //resultViewController.y = inY!
        resultViewController.x = Int(self.ValueX.text!)!
        resultViewController.y = Int(self.ValueY.text!)!
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }


}

