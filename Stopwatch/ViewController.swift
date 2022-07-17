//
//  ViewController.swift
//  Stopwatch
//
//  Created by Selman ADANİR on 17.07.2022.
//

import UIKit

class ViewController: UIViewController {

    var time = 0
    var timer = Timer()
    
    @IBOutlet weak var timerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startButton(_ sender: Any) {
        
        timerLabel.text = String(time)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(stopWatchTimerSelector), userInfo: nil, repeats: true)
    }
    
    @IBAction func stopButton(_ sender: Any) {
        
        timer.invalidate()
    }

    @IBAction func resetButton(_ sender: Any) {
        timer.invalidate()
        time = 0
        timerLabel.text = String(time)
        
    }
    
    @objc func stopWatchTimerSelector(){
        
        timerLabel.text = String(time)
        time += 1
    }
}
