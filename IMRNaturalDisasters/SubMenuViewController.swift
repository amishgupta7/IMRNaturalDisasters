//
//  SubMenuViewController.swift
//  IMRNaturalDisasters
//
//  Created by Amish Gupta on 8/27/23.
//

import UIKit
class SubMenuViewController: UIViewController {

    
    
    @IBOutlet weak var bAbout: UIButton!
    @IBOutlet weak var bPlan: UIButton!
    @IBOutlet weak var bQuiz: UIButton!
    @IBOutlet weak var bImpact: UIButton!
    @IBOutlet weak var bEmergency: UIButton!
    @IBOutlet weak var lTitle: UILabel!
    @IBOutlet weak var bResource: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if Global.mainMenuSelection == 1 {
            Global.initialColor = UIColor.systemRed
            lTitle.text = "Wildfires"
            }
        else if Global.mainMenuSelection == 2 {
            Global.initialColor = UIColor.systemMint
            lTitle.text = "Flash Floods"
            }
        else if Global.mainMenuSelection == 3 {
            Global.initialColor = UIColor.systemGreen
            lTitle.text = "Landslides"
            }
        else if Global.mainMenuSelection == 4 {
            Global.initialColor = UIColor.systemGray
            lTitle.text = "Hurricanes"
            }
        else if Global.mainMenuSelection == 5 {
            Global.initialColor = UIColor.darkGray
            lTitle.text = "Tornados"
            }
        else if Global.mainMenuSelection == 6 {
            Global.initialColor = UIColor.systemBrown
            lTitle.text = "Earthquakes"
            }
        
        // Change this to your desired initial color
        updateButtonColor(Global.initialColor)
    }
    

       // Function to change the button's background color
    func updateButtonColor(_ color: UIColor) {
           bAbout.backgroundColor = color
           bPlan.backgroundColor = color
           bQuiz.backgroundColor = color
           bImpact.backgroundColor = color
           bEmergency.backgroundColor = color
           bResource.backgroundColor = color
    }

    

    
    
    
}
