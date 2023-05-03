//
//  ViewController.swift
//  Xylophone
//
//  Created by Vitali Schumarov on 03.05.23.
//

import UIKit
// AVFoundation muss importiert werden
import AVFoundation

class ViewController: UIViewController {
//    Player muss erstellt werden
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        var pressedKey = sender.currentTitle!
        playSound(key: pressedKey)
    }
    
    func playSound() {
//      Eine Verbindung zum Bundle erstellen. Titel und Endung als String eingeben
        let url = Bundle.main.url(forResource: "titel", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    }
}

