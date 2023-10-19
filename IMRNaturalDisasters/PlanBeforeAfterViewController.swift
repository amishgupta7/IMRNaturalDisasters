//
//  PlanBeforeAfterViewController.swift
//  IMRNaturalDisasters
//
//  Created by Amish Gupta on 9/12/23.
//

import UIKit

class PlanBeforeAfterViewController: UIViewController {
    
    @IBOutlet weak var tPlantitle: UILabel!
    @IBOutlet weak var tPlaninfo: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if Global.mainMenuSelection == 1 {
            Global.initialColor = UIColor.systemRed
            tPlantitle.text = "Safety Plan: Wildfires"
        }
        else if Global.mainMenuSelection == 2 {
            Global.initialColor = UIColor.systemMint
            tPlantitle.text = "Safety Plan: Flashfloods"
        }
        else if Global.mainMenuSelection == 3 {
            Global.initialColor = UIColor.systemGreen
            tPlantitle.text = "Safety Plan: Landslides"
        }
        else if Global.mainMenuSelection == 4 {
            Global.initialColor = UIColor.systemGray2
            tPlantitle.text = "Safety Plan: Hurricanes"
        }
        else if Global.mainMenuSelection == 5 {
            Global.initialColor = UIColor.darkGray
            tPlantitle.text = "Safety Plan: Tornados"
        }
        else if Global.mainMenuSelection == 6 {
            Global.initialColor = UIColor.systemBrown
            tPlantitle.text = "Safety Plan: Earthquakes"
        }
        
        PlanBeforeAndAfter()
    }
    
    func PlanBeforeAndAfter()
    {
        if Global.mainMenuSelection == 1 {
            //Wildfires Plan
            Global.planText = """
                    #Before a Wildfire:
                    
                    ##1. Create a Defensible Space:
                       - Step 1: Clear vegetation and flammable materials around your home, creating a buffer zone to slow the fire's advance.
                       - Step 2: Maintain the defensible space regularly and ensure it remains clear of debris and overgrowth.
                    
                    ##2. Develop an Emergency Plan:
                       - Step 1: Create a family emergency plan, including evacuation routes and meeting points.
                       - Step 2: Ensure all family members understand the plan and can follow it quickly during an emergency.
                    
                    ##3. Assemble an Emergency Kit:
                       - Step 1: Prepare an emergency kit with essential supplies, including food, water, clothing, first aid, and important documents.
                       - Step 2: Keep the kit up to date and easily accessible.
                    
                    ##4. Install Fire-Resistant Roofing and Siding:
                       - Step 1: Consider using fire-resistant building materials for your home's exterior.
                       - Step 2: Regularly inspect and maintain these materials.
                    
                    ##5. Maintain a Water Source:
                       - Step 1: Have a water supply, such as a swimming pool or large water tank, for firefighting purposes.
                       - Step 2: Ensure the water source is accessible and functional.
                    
                    ##6. Stay Informed:
                       - Step 1: Sign up for emergency alerts and stay updated on local wildfire conditions.
                       - Step 2: Continuously monitor updates during a wildfire event.
                    
                    ##7. Safeguard Important Documents:
                       - Step 1: Store important documents (birth certificates, insurance policies, etc.) in a fireproof safe or digitally in a secure cloud storage.
                       - Step 2: Ensure these documents are easily retrievable in an evacuation scenario.
                    
                    ##8. Create a "Go Bag":
                       - Step 1: Pack a "go bag" with essential items you can grab quickly in case of evacuation.
                       - Step 2: Keep the "go bag" in an easily accessible location.
                    
                    #After a Wildfire:
                    
                    ##1. Safety First:
                       - Step 1: Ensure everyone's safety during evacuation.
                       - Step 2: Be cautious when returning home, as hazards like hotspots and unstable structures may exist.
                    
                    ##2. Contact Loved Ones:
                       - Step 1: Have a communication plan for contacting family and friends during and after the wildfire.
                       - Step 2: Let loved ones know you are safe and your whereabouts.
                    
                    ##3. Register with Authorities:
                       - Step 1: Consider registering with local authorities or emergency services to help them locate you during evacuations.
                       - Step 2: Report your safe return to the appropriate authorities if necessary.
                    
                    ##4. Assess Damage:
                       - Step 1: Document your home and property for insurance purposes.
                       - Step 2: Assess the damage and contact your insurance company as soon as possible.
                    
                    ##5. Cleanup and Recovery:
                       - Step 1: Be prepared for post-fire cleanup efforts.
                       - Step 2: Follow local guidelines for debris removal and rebuilding.
                    
                    ##6. Seek Support:
                       - Step 1: Know where to find support services and shelters.
                       - Step 2: Utilize available resources for recovery and emotional support.
                    
                    ##7. Learn from the Experience:
                       - Step 1: Stay informed and educate yourself about wildfire preparedness.
                       - Step 2: Reflect on your experience to improve your future wildfire preparedness efforts.
                    
                    """
        }
        
        //Flash Floods Plan
        else if Global.mainMenuSelection == 2 {
            Global.planText =  """
                    #Before a Flash Flood:

                    ##1. Stay Informed:
                       - Step 1: Monitor weather forecasts and alerts regularly.
                       - Step 2: Continue to receive updates during heavy rainfall or flood warnings.

                    ##2. Create an Emergency Kit:
                       - Step 1: Prepare an emergency kit with essentials such as non-perishable food, water, first-aid supplies, flashlight, batteries, and important documents.
                       - Step 2: Ensure the kit is accessible and contains up-to-date supplies.

                    ##3. Develop an Emergency Plan:
                       - Step 1: Create a family emergency plan that includes evacuation routes and meeting points.
                       - Step 2: Review and practice the plan with family members.

                    ##4. Know Elevation Levels:
                       - Step 1: Be aware of the elevation of your home and its susceptibility to flooding.
                       - Step 2: Evacuate to higher ground if your area is at risk.

                    ##5. Secure Your Property:
                       - Step 1: Elevate utilities and appliances, secure hazardous materials, and install flood barriers if necessary.
                       - Step 2: Inspect your property for damage and take appropriate action for repairs.

                    ##6. Monitor Rivers and Streams:
                       - Step 1: Know the proximity of rivers and streams to your location.
                       - Step 2: Stay away from swollen or rapidly flowing water bodies.

                    ##7. Heed Evacuation Orders:
                       - Step 1: Understand local evacuation procedures.
                       - Step 2: Follow evacuation orders without hesitation.

                    #After a Flash Flood:
                    
                    ##1. Stay Safe:
                       - Step 1: Ensure the safety of family members during evacuation.
                       - Step 2: Avoid returning to flooded areas until authorities declare it safe.

                    ##2. Check for Injuries:
                       - Step 1: Include first-aid supplies in your emergency kit.
                       - Step 2: Administer first aid if needed and seek medical attention for injuries.

                    ##3. Communicate:
                       - Step 1: Establish a communication plan with family members.
                       - Step 2: Let loved ones know your status and whereabouts.

                    ##4. Avoid Floodwaters:
                       - Step 1: Understand the danger of floodwaters.
                       - Step 2: Stay away from floodwaters, as they may be contaminated and pose risks.

                    ##5. Check Your Property:
                       - Step 1: Secure and elevate valuables and utilities.
                       - Step 2: Inspect your property for damage and contact relevant authorities or insurance companies.

                    ##6. Be Cautious at Night:
                       - Step 1: Include flashlights and batteries in your emergency kit.
                       - Step 2: Use lights to navigate during nighttime flooding.

                    ##7. Assist Neighbors:
                       - Step 1: Encourage community preparedness.
                       - Step 2: Check on neighbors, especially those who may need assistance.

                    ##8. Listen to Authorities:
                       - Step 1: Understand local emergency protocols.
                       - Step 2: Follow instructions from emergency responders and authorities.

                    ##9. Prepare for Power Outages:
                       - Step 1: Include backup power sources in your emergency kit.
                       - Step 2: Be prepared for power outages and stay safe in the dark.

                    ##10. Document Damage:
                        - Step 1: Maintain records of your property.
                        - Step 2: Document flood damage with photographs for insurance claims.

                    """
        }
        
        //Landslides Plan
        else if Global.mainMenuSelection == 3 {
            Global.planText  = """
                    #Before a Landslide:

                    ##1. Stay Informed:
                       - Step 1: Monitor weather conditions, especially prolonged rainfall, and listen to landslide warnings.
                       - Step 2: Continue to monitor conditions during heavy rainfall or landslide warnings.

                    ##2. Evaluate Your Property:
                       - Step 1: Assess the risk of landslides on or near your property.
                       - Step 2: Take preventive measures if your property is at risk, such as installing retaining walls or drainage systems.

                    ##3. Create an Emergency Kit:
                       - Step 1: Prepare an emergency kit with essential supplies, including food, water, first-aid items, flashlight, batteries, and important documents.
                       - Step 2: Ensure the kit is accessible and contains up-to-date supplies.

                    ##4. Develop an Emergency Plan:
                       - Step 1: Create a family emergency plan that includes evacuation routes and meeting points.
                       - Step 2: Review and practice the plan with family members.

                    ##5. Stay Away from Hazardous Areas:
                       - Step 1: Identify potential landslide-prone areas and avoid building or living in them.
                       - Step 2: Evacuate immediately if you suspect a landslide is imminent.

                    ##6. Monitor Slopes:
                       - Step 1: Keep an eye on hillsides and slopes for signs of soil erosion or cracking.
                       - Step 2: Report any unusual slope changes to local authorities.

                    ##7. Heed Evacuation Orders:
                       - Step 1: Understand local evacuation procedures.
                       - Step 2: Follow evacuation orders without hesitation.

                    #After a Landslide:

                    ##1. Stay Safe:
                       - Step 1: Ensure the safety of family members during evacuation.
                       - Step 2: Avoid returning to landslide-affected areas until authorities declare it safe.

                    ##2. Check for Injuries:
                       - Step 1: Include first-aid supplies in your emergency kit.
                       - Step 2: Administer first aid if needed and seek medical attention for injuries.

                    ##3. Communicate:
                       - Step 1: Establish a communication plan with family members.
                       - Step 2: Let loved ones know your status and whereabouts.

                    ##4. Avoid Additional Landslides:
                       - Step 1: Stay away from known landslide-prone areas.
                       - Step 2: Stay clear of affected areas and report any ongoing instability.

                    ##5. Check Your Property:
                       - Step 1: Secure and elevate valuables and utilities.
                       - Step 2: Inspect your property for damage and contact relevant authorities or insurance companies.

                    ##6. Be Cautious at Night:
                       - Step 1: Include flashlights and batteries in your emergency kit.
                       - Step 2: Use lights to navigate during the nighttime in landslide-affected areas.

                    ##7. Assist Neighbors:
                       - Step 1: Encourage community preparedness.
                       - Step 2: Check on neighbors, especially those who may need assistance.

                    ##8. Listen to Authorities:
                       - Step 1: Understand local emergency protocols.
                       - Step 2: Follow instructions from emergency responders and authorities.

                    ##9. Document Damage:
                       - Step 1: Maintain records of your property.
                       - Step 2: Document landslide-related damage with photographs for insurance claims.

                    ##10. Seek Professional Assessment:
                        - Step 1: Know professionals or agencies responsible for assessing and mitigating landslide risks in your area.
                        - Step 2: Contact them for evaluation and recommendations for future safety measures.
                    """
            
        }
           
        //Hurricanes Plan
        else if Global.mainMenuSelection == 4 {
            Global.planText  = """
                    #Before a Hurricane:

                    ##1. Stay Informed:
                       - Step 1: Monitor weather forecasts, hurricane advisories, and evacuation orders.
                       - Step 2: Continue to receive updates as the hurricane approaches and during its passage.

                    ##2. Create an Emergency Kit:
                       - Step 1: Prepare an emergency kit with essentials such as non-perishable food, water, first-aid supplies, flashlight, batteries, and important documents.
                       - Step 2: Ensure the kit is accessible and contains up-to-date supplies.

                    ##3. Develop an Emergency Plan:
                       - Step 1: Create a family emergency plan that includes evacuation routes, a communication strategy, and meeting points.
                       - Step 2: Review and practice the plan with family members.

                    ##4. Evacuation Plan:
                       - Step 1: Know your local evacuation routes and shelters.
                       - Step 2: Follow evacuation orders promptly and go to designated shelters if necessary.

                    ##5. Secure Your Home:
                       - Step 1: Reinforce your home's structure and secure outdoor items.
                       - Step 2: Inspect your property for damage and take appropriate action.

                    ##6. Protect Windows:
                       - Step 1: Install hurricane shutters or board up windows with plywood.
                       - Step 2: Check for broken windows and make temporary repairs if needed.

                    ##7. Stay Informed About Storm Surge:
                       - Step 1: Understand the potential for storm surge in your area.
                       - Step 2: Evacuate if storm surge threatens your safety.

                    ##8. Prepare for Power Outages:
                       - Step 1: Include backup power sources in your emergency kit.
                       - Step 2: Be prepared for power outages and use generators safely.

                    ##9. Secure Important Documents:
                       - Step 1: Store important documents (birth certificates, insurance policies, etc.) in a waterproof container.
                       - Step 2: Ensure these documents are easily retrievable in an evacuation scenario.

                    ##10. Fuel and Transportation:
                        - Step 1: Keep your vehicles fueled and in good condition.
                        - Step 2: Use vehicles to evacuate if necessary, but do so safely.

                    #After a Hurricane:

                    ##1. Stay Safe:
                       - Step 1: Ensure the safety of family members during evacuation.
                       - Step 2: Avoid returning to hurricane-affected areas until authorities declare it safe.

                    ##2. Check for Injuries:
                       - Step 1: Include first-aid supplies in your emergency kit.
                       - Step 2: Administer first aid if needed and seek medical attention for injuries.

                    ##3. Communicate:
                       - Step 1: Establish a communication plan with family members.
                       - Step 2: Let loved ones know your status and whereabouts.

                    ##4. Avoid Floodwaters:
                       - Step 1: Understand the danger of floodwaters.
                       - Step 2: Stay away from floodwaters, as they may be contaminated and pose risks.

                    ##5. Check Your Property:
                       - Step 1: Secure and elevate valuables and utilities.
                       - Step 2: Inspect your property for damage and contact relevant authorities or insurance companies.

                    ##6. Be Cautious at Night:
                       - Step 1: Include flashlights and batteries in your emergency kit.
                       - Step 2: Use lights to navigate during the nighttime in hurricane-affected areas.

                    ##7. Assist Neighbors:
                       - Step 1: Encourage community preparedness.
                       - Step 2: Check on neighbors, especially those who may need assistance.

                    ##8. Listen to Authorities:
                       - Step 1: Understand local emergency protocols.
                       - Step 2: Follow instructions from emergency responders and authorities.

                    ##9. Document Damage:
                       - Step 1: Maintain records of your property.
                       - Step 2: Document hurricane-related damage with photographs for insurance claims.

                    ##10. Rebuild and Recover:
                        - Step 1: Know the process for rebuilding and recovering after a hurricane.
                        - Step 2: Begin necessary repairs and collaborate with local authorities and disaster relief organizations.
                    """
        }
        
        //Tornoados Plan
        else if Global.mainMenuSelection == 5 {
            Global.planText  =
                    """
                    #Before a Tornado:

                    ##1. Stay Informed:
                       - Step 1: Monitor weather forecasts and tornado watches.
                       - Step 2: Continue to receive updates during tornado warnings.

                    ##2. Create an Emergency Kit:
                       - Step 1: Prepare an emergency kit with essentials such as non-perishable food, water, first-aid supplies, flashlight, batteries, and important documents.
                       - Step 2: Ensure the kit is accessible and contains up-to-date supplies.

                    ##3. Develop an Emergency Plan:
                       - Step 1: Create a family emergency plan that includes a tornado shelter location, evacuation routes, and a communication strategy.
                       - Step 2: Review and practice the plan with family members.

                    ##4. Identify Shelter:
                       - Step 1: Know the safest places in your home for shelter (e.g., basement, storm cellar, or interior room on the lowest floor).
                       - Step 2: Seek shelter immediately when a tornado warning is issued.

                    ##5. Secure Your Property:
                       - Step 1: Reinforce your home's structure and secure outdoor items that could become projectiles.
                       - Step 2: Assess and address any damage to your property promptly.

                    ##6. Stay Informed About Tornado Alley:
                       - Step 1: If you live in a tornado-prone area like Tornado Alley, be especially prepared.
                       - Step 2: Be vigilant and follow local tornado warnings and advisories.

                    ##7. Monitor Storm Development:
                       - Step 1: Watch for signs of severe weather and tornado formation.
                       - Step 2: Stay indoors and monitor weather conditions during a tornado watch.

                    #After a Tornado:

                    ##1. Stay Safe:
                       - Step 1: Ensure the safety of family members during evacuation.
                       - Step 2: Avoid returning to tornado-damaged areas until authorities declare it safe.

                    ##2. Check for Injuries:
                       - Step 1: Include first-aid supplies in your emergency kit.
                       - Step 2: Administer first aid if needed and seek medical attention for injuries.

                    ##3. Communicate:
                       - Step 1: Establish a communication plan with family members.
                       - Step 2: Let loved ones know your status and whereabouts.

                    ##4. Avoid Additional Tornadoes:
                       - Step 1: Stay informed about ongoing weather developments.
                       - Step 2: Stay aware of the possibility of more tornadoes and take shelter if necessary.

                    ##5. Check Your Property:
                       - Step 1: Secure and elevate valuables and utilities.
                       - Step 2: Inspect your property for damage and contact relevant authorities or insurance companies.

                    ##6. Be Cautious at Night:
                       - Step 1: Include flashlights and batteries in your emergency kit.
                       - Step 2: Use lights to navigate during the nighttime in tornado-damaged areas.

                    ##7. Assist Neighbors:
                       - Step 1: Encourage community preparedness.
                       - Step 2: Check on neighbors, especially those who may need assistance.

                    ##8. Listen to Authorities:
                       - Step 1: Understand local emergency protocols.
                       - Step 2: Follow instructions from emergency responders and authorities.

                    ##9. Document Damage:
                       - Step 1: Maintain records of your property.
                       - Step 2: Document tornado-related damage with photographs for insurance claims.

                    ##10. Rebuild and Recover:
                        - Step 1: Know the process for rebuilding and recovering after a tornado.
                        - Step 2: Begin necessary repairs and collaborate with local authorities and disaster relief organizations.

                    """
        }
        
        //Earthquakes Plan
        else if Global.mainMenuSelection == 6 {
            Global.planText  = """
                    #Before an Earthquake:

                    ##1. Earthquake Preparedness Kit:
                       - Step 1: Assemble an earthquake preparedness kit with essentials such as water, non-perishable food, first-aid supplies, flashlight, batteries, a multi-tool, and important documents.
                       - Step 2: Ensure the kit is accessible and contains up-to-date supplies.

                    ##2. Develop an Emergency Plan:
                       - Step 1: Create a family emergency plan that includes communication strategies, evacuation routes, and a designated meeting point.
                       - Step 2: Review and practice the plan with family members.

                    ##3. Secure Your Home:
                       - Step 1: Identify and mitigate potential hazards in your home such as securing heavy objects, anchoring bookshelves, and retrofitting if necessary.
                       - Step 2: Assess and address any structural damage promptly.

                    ##4. Drop, Cover, and Hold On:
                       - Step 1: Educate yourself and family members on the "Drop, Cover, and Hold On" technique for personal safety during an earthquake.
                       - Step 2: Implement this technique during an earthquake to protect yourself from falling objects.

                    ##5. Know Safe Spots:
                       - Step 1: Identify safe spots in each room, such as under sturdy furniture or against interior walls away from windows.
                       - Step 2: Use these safe spots during an earthquake to avoid falling debris.

                    ##6. Secure Hazardous Materials:
                       - Step 1: Store hazardous materials in a secure and safe manner.
                       - Step 2: Check for spills or leaks and follow safety guidelines.

                    ##7. Stay Informed:
                       - Step 1: Monitor earthquake alerts and updates from local authorities.
                       - Step 2: Continue to receive updates and information about aftershocks or emergency measures.

                    ##8. Know Utility Shut-Offs:
                       - Step 1: Learn how to turn off gas, water, and electricity in your home.
                       - Step 2: Turn off utilities if there's a risk of gas leaks or electrical fires.

                    ##9. Secure Important Documents:
                       - Step 1: Store essential documents in a waterproof container.
                       - Step 2: Ensure these documents are easily accessible after an earthquake.

                    ##10. Educate Yourself:
                        - Step 1: Learn about earthquake risks in your region and building codes.
                        - Step 2: Follow local safety guidelines and building inspections after a significant earthquake.

                    #After an Earthquake:

                    ##1. Stay Safe:
                       - Step 1: Ensure the safety of family members during the earthquake.
                       - Step 2: Check for injuries and provide first aid as necessary.

                    ##2. Assess Damage:
                       - Step 1: Educate yourself on common types of earthquake damage.
                       - Step 2: Inspect your property for damage and assess its structural integrity.

                    ##3. Communicate:
                       - Step 1: Establish a communication plan with family members.
                       - Step 2: Let loved ones know your status and whereabouts.

                    ##4. Be Cautious:
                       - Step 1: Educate yourself on post-earthquake hazards.
                       - Step 2: Stay alert for aftershocks and be cautious about damaged buildings or infrastructure.

                    ##5. Listen to Authorities:
                       - Step 1: Understand local emergency protocols.
                       - Step 2: Follow instructions from emergency responders and authorities.

                    ##6. Assist Neighbors:
                       - Step 1: Encourage community preparedness.
                       - Step 2: Check on neighbors, especially those who may need assistance.

                    ##7. Document Damage:
                       - Step 1: Maintain records of your property.
                       - Step 2: Document earthquake-related damage with photographs for insurance claims.

                    ##8. Rebuild and Recover:
                       - Step 1: Know the process for rebuilding and recovering after an earthquake.
                       - Step 2: Begin necessary repairs and collaborate with local authorities and disaster relief organizations.
                    """
        }
        tPlaninfo.boldHeadingsInPlanText(Global.planText)
    }
    
}

extension UITextView {
    func boldHeadingsInPlanText(_ text: String) {
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
