//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 内山和也 on 2018/07/29.
//  Copyright © 2018年 kazuya.uchiyama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    var timer_sec: Float = 0
    var timer: Timer!
    
    //画像番号
    var imageNo: Int = 0
    let imageNameArr = ["01", "02", "03", "04", "05"]
    
    //停止０、再生中１
    var playing = 0
    
    @IBOutlet weak var label: UIButton!
    @IBAction func StartStop(_ sender: Any) {
        if playing == 0 {
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateImage(_:)), userInfo: nil, repeats: true)
            label.setTitle("停止", for: .normal)  //.って何？forは？
            StepBack.isEnabled = false
            MoveOn.isEnabled = false
            playing = 1
        } else {
            self.timer.invalidate()
            label.setTitle("再生", for: .normal)  //.って何？
            StepBack.isEnabled = true
            MoveOn.isEnabled = true
            playing = 0
        }
    }
    
    @IBOutlet weak var StepBack: UIButton!
    @IBAction func BackImg(_ sender: Any) {
    }
    
    @IBOutlet weak var MoveOn: UIButton!
    @IBAction func NextImg(_ sender: Any) {
        //updateImage(_:)       //なんで使えないの？
        testfunc()
    }
    
    func testfunc(){
        print("aaa")
    }
    @objc func updateImage(_ timer: Timer) {   //@objcってなに？ timer、必要？　_ timer: Timer
        //次の画像に切り替える
        if imageNo == 4 {
            imageNo = 0
        }
        else {
            imageNo += 1
        }
        //名前の取り出し
        let imgName = imageNameArr[imageNo]
        let showImg = UIImage(named: imgName)
        image.image = showImg
    }
    
    @IBAction func onTapImg(_ sender: Any) {
        //次の画面を表示
        performSegue(withIdentifier:"result", sender: nil)  //詳しくはわからんが、いったん成功
        //print("aaaaaaa")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のshowImgを取得する
        let sendImg:showImg = segue.destination as! showImg
        // 遷移先のshowImgで宣言しているimgNameに画像の名前を渡す
        sendImg.imgName = imageNameArr[imageNo]
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let showImg = UIImage(named: "01")
        image.image = showImg
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

