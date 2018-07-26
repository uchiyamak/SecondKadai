//
//  ResultViewController.swift
//  segue
//
//  Created by 内山和也 on 2018/07/25.
//  Copyright © 2018年 kazuya.uchiyama. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    //２画面目のlabelをStorybordでこのViewContorollerにIBOutletとして接続しておく
    @IBOutlet weak var label: UILabel!
    
    var x:Int = 0
    var y:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let result = x + y
        label.text = "結果は \(result) です"
        
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
