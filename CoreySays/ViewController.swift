//
//  ViewController.swift
//  CoreySays
//
//  Created by COREY ATKINSON on 12/5/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var greenOutlet: UIButton!
    @IBOutlet weak var highscoreOutlet: UILabel!
    @IBOutlet weak var scoreOutlet: UILabel!
    @IBOutlet weak var redOutlet: UIButton!
    @IBOutlet weak var blueOutlet: UIButton!
    @IBOutlet weak var yellowOutlet: UIButton!
    
    var rando : [Int] = []
    var currentSpot = 0
    var full = 1
    var gameOn = false
    var blinking = false
    var score = 0
    var highscore = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        var i = 0
        while i < 100 {
               rando.append(Int.random(in: 1...4))
          //  rando.append(2)
            i = i + 1
        }
        var hi = 0
        while hi < rando.count
        {
            print(rando[hi])
            hi = hi + 1
        }
      
       // let seconds = 3.0
     //   DispatchQueue.main.asyncAfter(deadline: .now() + seconds) { [self] in
       
      //  }
        // Do any additional setup after loading the view.
    }

    @IBAction func redAction(_ sender: UIButton) {
     // blink(amount: 5, color: "")
        
        
        if rando[currentSpot] != 1
        {
            gameOn = false
            print("died")
        }
        else
        {
            currentSpot = currentSpot + 1
            print("right")
            score = score + 1
            scoreOutlet.text = "Score: \(score)"
       //     blink(amount: currentSpot + 1, color: "")
        }
        if currentSpot == full
        {
            full = full + 1
            blink(amount: full, color: "")
        }
    }
    
    @IBAction func greenAction(_ sender: UIButton) {
        if rando[currentSpot] != 2
        {
            gameOn = false
            print("died")
        }
        else
        {
            currentSpot = currentSpot + 1
            print("right")
            score = score + 1
            scoreOutlet.text = "Score: \(score)"
        }
        if currentSpot == full
        {
            full = full + 1
            blink(amount: full, color: "")
        }
    }
    
    @IBAction func yellowAction(_ sender: UIButton) {
        if rando[currentSpot] != 3
        {
            gameOn = false
            print("died")
            
        }
        else
        {
            currentSpot = currentSpot + 1
            print("right")
            score = score + 1
            scoreOutlet.text = "Score: \(score)"
        }
        if currentSpot == full
        {
            full = full + 1
            blink(amount: full, color: "")
        }
    }
    
    @IBAction func blueAction(_ sender: UIButton) {
        if rando[currentSpot] != 4
        {
            gameOn = false
            print("died")
        }
        else
        {
            currentSpot = currentSpot + 1
            print("right")
            score = score + 1
            scoreOutlet.text = "Score: \(score)"
        }
        if currentSpot == full
        {
            full = full + 1
            blink(amount: full, color: "")
            
        }
    }
    
    @IBAction func startAction(_ sender: UIButton) {
        gameOn = true
        blink(amount: full, color: "")
    }
    
    
    func blink(amount: Int, color: String) {
      currentSpot = 0
        
        redOutlet.isEnabled = false
        greenOutlet.isEnabled = false
        yellowOutlet.isEnabled = false
        blueOutlet.isEnabled = false
        var temp = 0
        if gameOn != false
        {
            // while(temp < amount)
            //    {
            //delay(2.0, closure: {})
            print("temp: \(temp)")
            print("curent num \(rando[temp])")
            Timer.scheduledTimer(withTimeInterval: 1.5, repeats: true) { [self] timer in
                
                if (temp == amount - 1) {
                    timer.invalidate()
                }
                
                
                // delay(2.0, closure: {})
                if rando[temp] == 1
                {
                    self.redOutlet.backgroundColor = UIColor.black
                    Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { [self] timer in
                        
                        redOutlet.backgroundColor = UIColor.red
                        
                    }
                    
                    
                    
                }
                if self.rando[temp] == 2
                {
                    self.greenOutlet.backgroundColor = UIColor.black
                    Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { [self] timer in
                        
                        greenOutlet.backgroundColor = UIColor.green
                        
                    }
                    
                    
                    
                    
                }
                if self.rando[temp] == 3
                {
                    self.yellowOutlet.backgroundColor = UIColor.black
                    
                    Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { [self] timer in
                        
                        yellowOutlet.backgroundColor = UIColor.yellow
                        
                    }
                    //  self.yellowOutlet.tintColor = UIColor.black
                    
                    //     let seconds = 1.0
                    //    DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    //        self.yellowOutlet.backgroundColor = UIColor.yellow
                    //        self.yellowOutlet.tintColor = UIColor.yellow
                    //    }
                }
                if self.rando[temp] == 4
                {
                    self.blueOutlet.backgroundColor = UIColor.black
                    
                    
                    Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { [self] timer in
                        
                        blueOutlet.backgroundColor = UIColor.blue
                        
                    }
                    //blueOutlet.tintColor = UIColor.black
                    //   let seconds = 1.0
                    //   DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    //      self.blueOutlet.backgroundColor = UIColor.blue
                    //   self.blueOutlet.tintColor = UIColor.blue
                    //   }
                }
                
                //  temp = temp + 1
                //   }
                temp = temp + 1
            }
            //       }
            
        }
        redOutlet.isEnabled = true
        greenOutlet.isEnabled = true
        yellowOutlet.isEnabled = true
        blueOutlet.isEnabled = true
    }
    }
    
    
    
    


