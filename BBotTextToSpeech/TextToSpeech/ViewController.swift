//
//  ViewController.swift
//  TextToSpeech
//
//  Created by Abi Sayuti on 11/29/17.
//  Copyright © 2017 Abi Sayuti. All rights reserved.
//

import UIKit
import AVFoundation



class ViewController: UIViewController {

    @IBOutlet weak var lblkata: UITextView!
    let synth = AVSpeechSynthesizer()
    var myuttarance = AVSpeechUtterance(string: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func btnspeak(_ sender: Any) {
        myuttarance = AVSpeechUtterance(string: lblkata.text)
        myuttarance.rate = 0.3
        synth.speak(myuttarance)
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

