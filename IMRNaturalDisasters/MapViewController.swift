//
//  SafetyCheckinViewController.swift
//  IMRNaturalDisasters
//
//  Created by Amish Gupta on 10/03/23.
//

import UIKit
import WebKit

class MapViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var tMap: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if Global.mainMenuSelection == 1 {
            Global.initialColor = UIColor.systemRed
            tMap.text = "Wildfire Map"
            if let url = URL(string: "https://experience.arcgis.com/experience/caebb09ac0fb44799609b440fa320280") {
                let request = URLRequest(url: url)
                webView.load(request)
            }
        }
        else if Global.mainMenuSelection == 2 {
            Global.initialColor = UIColor.systemMint
            tMap.text = "Flashflood Map"
            if let url = URL(string: "https://www.americangeosciences.org/critical-issues/maps/flood-conditions-united-states") {
                let request = URLRequest(url: url)
                webView.load(request)
            }
        }
        else if Global.mainMenuSelection == 3 {
            Global.initialColor = UIColor.systemGreen
            tMap.text = "Landslides Map"
            if let url = URL(string: "https://usgs.maps.arcgis.com/apps/webappviewer/index.html?id=ae120962f459434b8c904b456c82669d") {
                let request = URLRequest(url: url)
                webView.load(request)
            }
        }
        else if Global.mainMenuSelection == 4 {
            Global.initialColor = UIColor.systemGray2
            tMap.text = "Hurricanes Map"
            if let url = URL(string: "https://experience.arcgis.com/experience/203f772571cb48b1b8b50fdcc3272e2c") {
                let request = URLRequest(url: url)
                webView.load(request)
            }
        }
        else if Global.mainMenuSelection == 5 {
            Global.initialColor = UIColor.darkGray
            tMap.text = "Tornados Map"
            if let url = URL(string: "https://www.arcgis.com/apps/View/index.html?appid=01672085b139432e8fe1296a743f67d7") {
                let request = URLRequest(url: url)
                webView.load(request)
            }
        }
        else if Global.mainMenuSelection == 6 {
            Global.initialColor = UIColor.systemBrown
            tMap.text = "Earthquakes Map"
            if let url = URL(string: "https://earthquake.usgs.gov/earthquakes/map/?extent=17.89511,-137.19727&extent=54.41893,-52.82227") {
                let request = URLRequest(url: url)
                webView.load(request)
            }
        }
        
        

        
    }

}
