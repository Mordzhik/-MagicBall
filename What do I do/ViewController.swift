//
//  ViewController.swift
//  What do I do
//
//  Created by tse on 1/28/21.
//  Copyright © 2021 marzhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var callBallArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    @IBOutlet weak var ballImgView: UIImageView!
    
   @IBAction func askButon(_ sender: Any) {
       newBallImg()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       newBallImg()
        // Do any additional setup after loading the view.
    }
    
    func newBallImg(){
        let randomImgBall = Int(arc4random_uniform(5))
        ballImgView.image = UIImage(named: callBallArray[randomImgBall])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImg()
    }

}

