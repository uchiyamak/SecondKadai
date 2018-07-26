//
//  showName.swift
//  SecondKadaiApp
//
//  Created by 内山和也 on 2018/07/26.
//  Copyright © 2018年 kazuya.uchiyama. All rights reserved.
//

import UIKit

class showName: UIViewController {

    @IBOutlet weak var back: UIButton!
    @IBOutlet weak var showText: UILabel!
    
    var name:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let result = name
        showText.text = "こんにちは、\(result) さん"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
