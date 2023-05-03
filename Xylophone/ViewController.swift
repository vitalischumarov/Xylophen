//
//  ViewController.swift
//  Xylophone
//
//  Created by Vitali Schumarov on 03.05.23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        var pressedKey = sender.currentTitle!
        playSound(key: pressedKey)
    }
    
    func playSound(key: String) {
        let url = Bundle.main.url(forResource: key, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    }
}

