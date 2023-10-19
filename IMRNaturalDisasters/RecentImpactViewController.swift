//
//  RecentImpactViewController.swift
//  IMRNaturalDisasters
//
//  Created by Amish Gupta on 10/03/23.
//

import UIKit

class RecentImpactViewController: UIViewController {
    
    @IBOutlet weak var recentTitle: UILabel!
    @IBOutlet weak var impactText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if Global.mainMenuSelection == 1 {
            Global.initialColor = UIColor.systemRed
            recentTitle.text = "Wildfire Impacts"
        }
        else if Global.mainMenuSelection == 2 {
            Global.initialColor = UIColor.systemMint
            recentTitle.text = "Flashflood Impacts"
        }
        else if Global.mainMenuSelection == 3 {
            Global.initialColor = UIColor.systemGreen
            recentTitle.text = "Landslide Impacts"
        }
        else if Global.mainMenuSelection == 4 {
            Global.initialColor = UIColor.systemGray2
            recentTitle.text = "Hurricane Impacts"
        }
        else if Global.mainMenuSelection == 5 {
            Global.initialColor = UIColor.darkGray
            recentTitle.text = "Tornado Impacts"
        }
        else if Global.mainMenuSelection == 6 {
            Global.initialColor = UIColor.systemBrown
            recentTitle.text = "Earthquake Impacts"
        }
        
        RecentImpact()
    }
    
    func RecentImpact()
    {
        if Global.mainMenuSelection == 1 {
            //This for Wildfires
            Global.impactText = """
                    #Maui Lahaina Wildfire(2023):
                    A wildfire in Maui destroyed the historic town of Lahaina and killed at least 115 people, making it the worst natural disaster in state history and the deadliest U.S. wildfire in over a century.
                     
                    #California Fire Siege (2020):
                    More than 8,600 wildfires burned across California in 2020, scorching some 4.2 million acres — a state record — and killing 33 people Officials described 2020 as a "fire siege" because it saw 18 of the state's 20 most destructive fires on record.

                    #Camp Fire (2018):
                    The Camp Fire in California's Butte County in November 2018 was one of the most destructive and deadly wildfires in California history. It killed 85 people and destroyed thousands of homes.

                    #Station Nightclub Fire (2003):
                    A fire at the Station nightclub in West Warwick, Rhode Island, in February 2003, resulted in the deaths of 100 people and injured over 200 others. The fire was caused by pyrotechnics used by the band.

                    #Oakland Hills Firestorm (1991):
                    In October 1991, a firestorm swept through the Oakland Hills area of California, killing 25 people, destroying nearly 3,000 homes, and causing extensive damage.

                    #Texas City Disaster (1947):
                    While not a fire in the traditional sense, a massive explosion of ammonium nitrate fertilizer in the port of Texas City, Texas, caused fires and killed at least 581 people. It's considered one of the deadliest industrial accidents in U.S. history.
                    """
        }
        
        else if Global.mainMenuSelection == 2 {
            Global.impactText =  """
                    #Ellicott City Flash Flood (2018):
                    In May 2018, Ellicott City, Maryland, experienced a deadly flash flood. This event marked the second major flash flood to hit the historic town in less than two years, resulting in the tragic deaths of two people.

                    #Louisiana Flooding (2016):
                    In August 2016, historic rainfall led to widespread flooding in southern Louisiana, including the Baton Rouge area. The flooding claimed the lives of 13 people and damaged tens of thousands of homes.

                    #Hildale-Colorado City Flash Flood (2015):
                    In September 2015, a flash flood struck the communities of Hildale, Utah, and Colorado City, Arizona. It resulted in the deaths of 20 people, many of whom were in a group of vehicles caught in the flood.

                    #Big Thompson Canyon Flood (1976):
                    Mentioned previously, the Big Thompson Canyon flood in Colorado occurred in July 1976. It killed 144 people and caused extensive damage.

                    #Rapid City Flood (1972):
                    Also mentioned earlier, the Rapid City, South Dakota, flood of June 1972 killed 238 people and was one of the deadliest flash floods in U.S. history.

                    #Black Hills Flood (1972):
                    In addition to the Rapid City flood, other parts of the Black Hills in South Dakota were affected in the same event, resulting in a total death toll of over 270 people.

                    #Austin Flash Flood (1921):
                    In September 1921, Austin, Texas, experienced a flash flood that claimed the lives of at least 38 people. It was one of the deadliest flash floods in Texas history.


                    """
        }
        //This is about Landslides
        else if Global.mainMenuSelection == 3 {
            Global.impactText  = """
                    #Mud Creek Landslide (2017):
                    In May 2017, a major landslide occurred along California's Highway 1 at Mud Creek, near Big Sur. Millions of tons of rock and debris buried a quarter-mile stretch of the highway. While there were no fatalities, it resulted in a long-term road closure and significant transportation disruptions.

                    #Oso Landslide (2014):
                    The Oso Landslide occurred in Oso, Washington, in March 2014. A massive landslide, triggered by heavy rainfall, engulfed a neighborhood, resulting in the deaths of 43 people and the destruction of numerous homes.

                    #Thistle Landslide (1983):
                    The Thistle landslide in Utah in April 1983 blocked the Spanish Fork River, flooding the town of Thistle. The landslide led to the abandonment of the town and the rerouting of the river. Fortunately, there were no fatalities, but the town was severely impacted.

                    #Hope Slide (1965):
                    The Hope Slide occurred in British Columbia, Canada, but is included here because of its proximity to the U.S. border. In January 1965, a massive landslide buried a section of Highway 3 in the Cascade Mountains. Four people were killed in the incident.

                    #Madison River Canyon Earthquake Landslide (1959):
                    While not solely a landslide, the 1959 Hebgen Lake earthquake in Montana triggered a massive landslide that blocked the Madison River and formed Earthquake Lake. This event resulted in 28 fatalities.

                    #Gros Ventre Landslide (1925):
                    The Gros Ventre landslide occurred in Wyoming in 1925 when a massive portion of a mountain collapsed into the Gros Ventre River valley. The landslide formed a natural dam that ultimately failed, resulting in flooding and the deaths of at least 6 people.

                    """
            
        }
           
        //This is about Hurricanes
        else if Global.mainMenuSelection == 4 {
            Global.impactText  = """
                    #Hurricane Maria (2017):
                    Hurricane Maria struck Puerto Rico and the U.S. Virgin Islands in September 2017. While Puerto Rico was most severely affected, it's also considered one of the deadliest hurricanes in U.S. history, with an estimated death toll of around 2,975.

                    #Hurricane Katrina (2005):
                    One of the most devastating hurricanes in U.S. history, Hurricane Katrina struck the Gulf Coast in  August 2005. The storm surge and levee failures caused catastrophic flooding in New Orleans and resulted in more than 1,800 deaths.

                    #Hurricane Andrew (1992):
                    Hurricane Andrew hit South Florida in August 1992 and caused significant destruction. It resulted in 65 direct fatalities and is one of the costliest hurricanes in U.S. history.

                    #Okeechobee Hurricane (1928):
                    The Okeechobee Hurricane made landfall in Florida in September 1928. The hurricane caused Lake Okeechobee to overflow, leading to widespread flooding and approximately 2,500 fatalities.

                    #Galveston Hurricane (1900):
                    The Galveston Hurricane, also known as the Great Storm of 1900, made landfall in Galveston, Texas, in September 1900. It remains the deadliest natural disaster in U.S. history, with an estimated 6,000 to 12,000 fatalities.

                    """
        }
        
        //This is About Tornoados
        else if Global.mainMenuSelection == 5 {
            Global.impactText  =
                    """
                    #Moore, Oklahoma Tornado (2013):
                    On May 20, 2013, an EF5 tornado struck Moore, Oklahoma, and neighboring areas. It resulted in 24 fatalities and caused extensive damage, including the destruction of two elementary schools.

                    #Joplin, Missouri Tornado (2011):
                    The Joplin tornado occurred on May 22, 2011, in Joplin, Missouri. It was an EF5 tornado and one of the deadliest in U.S. history, claiming 161 lives and causing widespread destruction.

                    #Super Outbreak Tornadoes (1974):
                    The Super Outbreak of April 3-4, 1974, produced numerous tornadoes across several states, with multiple EF4 and EF5 tornadoes. In total, it resulted in 330 fatalities and thousands of injuries.

                    #Tri-State Tornado (1925):
                    The Tri-State Tornado on March 18, 1925, remains the deadliest tornado in U.S. history. It traveled through parts of Missouri, Illinois, and Indiana, causing 695 fatalities and extensive damage along its path.

                    #Natchez, Mississippi Tornado (1840):
                    On May 7, 1840, a devastating tornado struck Natchez, Mississippi. Although historical records are less detailed, it is estimated that this tornado killed hundreds of people, making it one of the deadliest in U.S. history.


                    """
        }
        
        //This is about Earthquakes
        else if Global.mainMenuSelection == 6 {
            Global.impactText  = """
                    #1994 Northridge Earthquake:
                    This earthquake occurred on January 17, 1994, in Northridge, California. It had a magnitude of 6.7 and resulted in 57 deaths.

                    #1989 Loma Prieta Earthquake:
                    This earthquake struck the San Francisco Bay Area on October 17, 1989, with a magnitude of 6.9. It resulted in 63 deaths.

                    #1933 Long Beach Earthquake:
                    The Long Beach earthquake occurred on March 10, 1933, in Southern California and had a magnitude of 6.4. It caused significant damage and resulted in 115 deaths.

                    #1906 San Francisco Earthquake:
                    The 1906 San Francisco earthquake, as mentioned earlier, struck on April 18, 1906, with a magnitude estimated at 7.9. It caused widespread destruction and resulted in over 3,000 deaths.

                    #1868 Hayward Earthquake:
                    The 1868 Hayward earthquake occurred in the San Francisco Bay Area on October 21, 1868. It had a magnitude estimated at 6.8 and caused significant damage and loss of life.


                    """
        }
        impactText.boldHeadingsInImpactText(Global.impactText)
    }
    
}

extension UITextView {
    func boldHeadingsInImpactText(_ text: String) {
        let normalFont = UIFont.systemFont(ofSize: UIFont.labelFontSize - 3)
        let attributedText = NSMutableAttributedString(string: text, attributes: [NSAttributedString.Key.font: normalFont])

        let pattern = "(#+)(.*)"
        do {
            let regex = try NSRegularExpression(pattern: pattern, options: [])
            let matches = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))

            for match in matches.reversed() {
                if let _ = Range(match.range(at: 2), in: text) { // Ignore heading content
                    let headingLevel = match.range(at: 1).length // Count of hash symbols
                    let fontSize = headingLevel == 1 ? UIFont.labelFontSize : UIFont.labelFontSize - 3 // Adjust font size based on heading level
                    let boldFont = UIFont.boldSystemFont(ofSize: CGFloat(fontSize))
                    let attributes: [NSAttributedString.Key: Any] = [
                        NSAttributedString.Key.font: boldFont,
                        NSAttributedString.Key.foregroundColor: UIColor.black // Set the desired text color
                    ]
                    attributedText.addAttributes(attributes, range: match.range(at: 2))

                    attributedText.replaceCharacters(in: match.range(at: 1), with: "") // Remove #
                }
            }
        } catch {
            print("Error creating regex: \(error)")
        }

        self.attributedText = attributedText
    }
}
