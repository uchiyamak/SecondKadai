//
//  ViewController.swift
//  Timer
//
//  Created by 内山和也 on 2018/07/27.
//  Copyright © 2018年 kazuya.uchiyama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer_sec: Float = 0
    var timer: Timer!

    @IBOutlet weak var timerLabel: UILabel!
    @IBAction func startTimer(_ sender: Any) {
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
        }

    }
    @IBAction func pauseTimer(_ sender: Any) {
        if self.timer != nil {
            self.timer.invalidate()
            self.timer = nil
        }
    }
    @IBAction func resetTimer(_ sender: Any) {
        self.timer_sec = 0
        self.timerLabel.text = String(format: "%.1f", self.timer_sec)
        
        if self.timer != nil {
            self.timer.invalidate()
            self.timer = nil
        }

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any addi  tional setup after loading the view, typically from a nib.
        
    }
    @objc func updateTimer(_ timer: Timer) {    //timerって必要？
        timer_sec += 0.1
        timerLabel.text = String(format: "%.1f", timer_sec)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

