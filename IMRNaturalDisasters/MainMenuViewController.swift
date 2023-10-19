//
//  MainMenuViewController.swift
//  IMRNaturalDisasters
//
//  Created by Amish Gupta on 8/27/23.
//

import UIKit

class MainMenuViewController: UIViewController{
    
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    
    @IBAction func WildFiresButtonTapped(_ sender: Any) {
        Global.mainMenuSelection = 1
    }
    
    @IBAction func FlashFloodsButtonTapped(_ sender: Any) {
        Global.mainMenuSelection = 2
        }
    
    @IBAction func LandslidesButtonTapped(_ sender: Any) {
        Global.mainMenuSelection = 3
    }
    
    @IBAction func HurricaneButtonPressed(_ sender: Any) {
        Global.mainMenuSelection = 4
    }
    
    @IBAction func TornadoButtonPressed(_ sender: Any) {
        Global.mainMenuSelection = 5
    }
    
    @IBAction func EarthquakeButtonPressed(_ sender: Any) {
        Global.mainMenuSelection = 6
    }
    
    
}
