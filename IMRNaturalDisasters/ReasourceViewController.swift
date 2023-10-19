//
//  ReasourceViewController.swift
//  IMRNaturalDisasters
//
//  Created by Amish Gupta on 09/15/23.
//

import UIKit

class ReasourceViewController: UIViewController {
    
    @IBOutlet weak var rLabel: UILabel!
    @IBOutlet weak var rInfo: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if Global.mainMenuSelection == 1 {
            Global.initialColor = UIColor.systemRed
            rLabel.text = "Wildfires Resources"
        }
        else if Global.mainMenuSelection == 2 {
            Global.initialColor = UIColor.systemMint
            rLabel.text = "Flashflood Resources"
        }
        else if Global.mainMenuSelection == 3 {
            Global.initialColor = UIColor.systemGreen
            rLabel.text = "Landslide Resources"
        }
        else if Global.mainMenuSelection == 4 {
            Global.initialColor = UIColor.systemGray2
            rLabel.text = "Hurricane Resources"
        }
        else if Global.mainMenuSelection == 5 {
            Global.initialColor = UIColor.darkGray
            rLabel.text = "Tornado Reasources"
        }
        else if Global.mainMenuSelection == 6 {
            Global.initialColor = UIColor.systemBrown
            rLabel.text = "Earthquake Resources"
        }
        Resources()
       // rInfo.attributedText = attributedText

        // Make sure links are clickable
        rInfo.isSelectable = true
        rInfo.isEditable = false
        rInfo.dataDetectorTypes = .link

    }
    

    
    func Resources()
    {
        if Global.mainMenuSelection == 1
        {
            //About Wildfires
            Global.resourceText = """
                #1. National Interagency Fire Center (NIFC):
                   - Website: https://www.nifc.gov/
                   - NIFC is a U.S. government agency that provides comprehensive wildfire information, including current fire activity, incident reports, and resources for fire management.
                
                #2. United States Forest Service (USFS):
                   - Website: https://www.fs.fed.us/managing-land/fire
                   - The USFS offers information on wildfire prevention, fire management, and resources for the public. They also provide updates on wildfires in national forests.
                
                #3. Cal Fire (California Department of Forestry and Fire Protection):
                   - Website: https://www.fire.ca.gov/
                   - Cal Fire is responsible for wildfire management in California. Their website provides wildfire alerts, preparedness tips, and information on current fires in the state.
                
                #4. Ready.gov - Wildfires:
                   - Website: https://www.ready.gov/wildfires
                   - Ready.gov, a FEMA initiative, offers wildfire preparedness and safety information, including steps to create an emergency plan and build a wildfire emergency kit.
                
                #5. National Fire Protection Association (NFPA):
                   - Website: https://www.nfpa.org/Public-Education/Fire-causes-and-risks/Wildfire
                   - NFPA provides resources on wildfire safety, including guidelines for creating defensible spaces around homes and wildfire risk assessments.
                
                #6. InciWeb - Incident Information System:
                   - Website: https://inciweb.nwcg.gov/
                   - InciWeb is an interagency incident information system that provides information about wildfires, prescribed burns, and other incidents. It offers updates on ongoing incidents, maps, and incident management details.
                
                #7. Your Local Fire Department and Emergency Management Agency:
                   - Contact your local fire department and emergency management agency for region-specific wildfire information, evacuation routes, and emergency contact details.
                
                #8. National Geographic - Wildfires:
                   - Website: https://www.nationalgeographic.com/environment/natural-disasters/wildfires/
                   - National Geographic offers articles, maps, and educational content about wildfires, their causes, and their impact on the environment.
                
                #9. Wildfire and Disaster Response Organizations:
                   - Consider exploring the websites of organizations such as the American Red Cross, The Wildland Firefighter Foundation, and The Wildfire Research Center for additional resources and information.
                
                #10. State and Provincial Government Websites:
                    - Many state and provincial governments offer wildfire preparedness and response resources tailored to their specific regions.
                
                #11. Meteorological and Environmental Agencies:
                    - Websites of national meteorological and environmental agencies often provide weather forecasts, fire danger ratings, and other relevant information related to wildfires.
                
                #12. Educational Institutions and Research Centers:
                    - Universities and research centers may offer wildfire-related resources, studies, and educational materials on their websites.
                
                Remember that wildfire preparedness and response should be tailored to your specific location and the level of wildfire risk in your area. Always refer to trusted sources for the most up-to-date and accurate information.
                
                """
        }
        
        //About Flash Floods
        else if Global.mainMenuSelection == 2 {
            Global.resourceText =  """
                #1. National Weather Service (NWS):
                   - Website: https://www.weather.gov/safety/flood-flash
                   - The NWS provides flash flood alerts, safety tips, and educational resources. They offer real-time updates and warnings for flash flood events.
                
                #2. Federal Emergency Management Agency (FEMA):
                   - Website: https://www.ready.gov/floods
                   - FEMA offers guidance on flood and flash flood preparedness, mitigation, and recovery. Their website includes checklists, emergency kit information, and flood insurance details.
                
                #3. U.S. Geological Survey (USGS):
                   - Website: https://www.usgs.gov/mission-areas/water-resources
                   - The USGS provides data on water resources, river flow, and flood monitoring. Their website offers access to river and stream gauges and flood risk assessments.
                
                #4. Ready.gov - Floods:
                   - Website: https://www.ready.gov/floods
                   - Ready.gov, a FEMA initiative, provides flood and flash flood preparedness and safety information, including evacuation planning and communication strategies.
                
                #5. Local Government and Emergency Management Agencies:
                   - Contact your local government and emergency management agencies for region-specific flash flood information, evacuation routes, and emergency contact details.
                
                #6. American Red Cross - Flood Safety:
                   - Website: https://www.redcross.org/get-help/how-to-prepare-for-emergencies/types-of-emergencies/flood.html
                   - The American Red Cross offers flood and flash flood preparedness tips, safety checklists, and resources for those affected by floods.
                
                #7. Educational Institutions and Research Centers:
                   - Universities and research centers with expertise in hydrology and weather science often provide flash flood-related resources, studies, and educational materials on their websites.
                
                #8. Meteorological and Environmental Agencies:
                   - National meteorological and environmental agencies typically offer weather forecasts, flood and flash flood warnings, and safety information on their websites.
                
                #9. News Outlets:
                   - Major news organizations provide coverage of flash flood events, including live updates, articles, and videos.
                
                #10. Social Media and Mobile Apps:
                    - Follow official social media accounts and mobile apps of the NWS, FEMA, and local emergency agencies for real-time flash flood alerts and information.
                
                #11. International Resources:
                    - Consider exploring resources from international organizations such as the World Meteorological Organization (WMO) for global flood and flash flood information.
                
                Remember to stay informed through multiple sources, have an emergency plan in place, and follow the guidance of local authorities during flash flood events. Always refer to trusted sources for the most up-to-date and accurate information.
                
                """
        }
        
        //About Landslides
        else if Global.mainMenuSelection == 3 {
            Global.resourceText  = """
                #1. United States Geological Survey (USGS):
                   - Website: https://www.usgs.gov/natural-hazards/landslide-hazards
                   - The USGS offers comprehensive information on landslides, including real-time monitoring, research, and educational resources.
                
                #2. Federal Emergency Management Agency (FEMA):
                   - Website: https://www.fema.gov/landslide-safety
                   - FEMA provides guidance on landslide preparedness, mitigation, and recovery. Their website includes safety tips and resources.
                
                #3. National Weather Service (NWS):
                   - Website: https://www.weather.gov/safety/landslide
                   - NWS provides information on landslide risks and safety precautions. They offer resources for recognizing landslide-prone areas.
                
                #4. International Consortium on Landslides (ICL):
                   - Website: https://icl.iplhq.org/
                   - ICL is a global organization dedicated to landslide research and education. Their website offers landslide reports, publications, and information on international initiatives.
                
                #5. Geological Survey Organizations:
                   - Check with your country's geological survey organization for landslide-related information and resources. These organizations often provide maps and reports on landslide-prone areas.
                
                #6. Ready.gov - Landslides:
                   - Website: https://www.ready.gov/landslides
                   - Ready.gov, a FEMA initiative, offers landslide preparedness and safety information, including steps to create an emergency plan and recognize landslide warning signs.
                
                #7. Your Local Government and Emergency Management Agency:
                   - Contact your local government and emergency management agency for region-specific landslide information, evacuation routes, and emergency contact details.
                
                #8. Educational Institutions and Research Centers:
                   - Universities and research centers may offer landslide-related resources, studies, and educational materials on their websites.
                
                #9. Landslide and Disaster Response Organizations:
                   - Explore the websites of organizations involved in landslide and disaster response for additional resources and information.
                
                #10. Meteorological and Environmental Agencies:
                    - Websites of national meteorological and environmental agencies often provide weather-related landslide risk assessments and early warning information.
                
                #11. International Resources:
                    - For global landslide information, consider organizations like the International Association of Engineering Geology and the Environment (IAEG) and the United Nations Office for Disaster Risk Reduction (UNDRR).
                
                Remember that landslide preparedness and response should be tailored to your specific location and the level of landslide risk in your area. Always refer to trusted sources for the most up-to-date and accurate information.
                
                
                """
            
        }
        
        //About Hurricanes
        else if Global.mainMenuSelection == 4 {
            Global.resourceText  = """
                #1. National Hurricane Center (NHC):
                   - Website: https://www.nhc.noaa.gov/
                   - The NHC is part of the National Oceanic and Atmospheric Administration (NOAA) and provides up-to-date information on hurricanes and tropical storms, including forecasts, storm tracking, and safety tips.
                
                #2. Federal Emergency Management Agency (FEMA):
                   - Website: https://www.ready.gov/hurricanes
                   - FEMA offers guidance on hurricane preparedness, evacuation planning, and recovery resources. Their website includes checklists and emergency kit information.
                
                #3. The Weather Channel - Hurricanes:
                   - Website: https://weather.com/storms/hurricane
                   - The Weather Channel provides comprehensive coverage of hurricanes, including tracking maps, live updates, and educational content.
                
                #4. National Weather Service (NWS):
                   - Website: https://www.weather.gov/safety/hurricane
                   - NWS offers hurricane safety information, storm surge forecasts, and real-time alerts. They provide resources to help individuals and communities prepare for hurricanes.
                
                #5. Ready.gov - Hurricanes:
                   - Website: https://www.ready.gov/hurricanes
                   - Ready.gov, a FEMA initiative, provides hurricane preparedness and safety information, including evacuation planning and communication strategies.
                
                #6. Hurricane Research Organizations:
                   - Organizations like the Hurricane Research Division of NOAA conduct research on hurricanes. Their websites often feature educational materials and scientific data.
                
                #7. State and Local Emergency Management Agencies:
                   - Contact your state and local emergency management agencies for region-specific hurricane information, evacuation routes, and emergency contact details.
                
                #8. American Red Cross - Hurricane Safety:
                   - Website: https://www.redcross.org/get-help/how-to-prepare-for-emergencies/types-of-emergencies/hurricane.html
                   - The American Red Cross offers hurricane preparedness tips, safety checklists, and resources for those affected by hurricanes.
                
                #9. Educational Institutions and Research Centers:
                   - Universities and research centers with meteorological programs often provide hurricane-related resources, studies, and educational materials on their websites.
                
                #10. Social Media and Mobile Apps:
                    - Follow official social media accounts and mobile apps of NOAA, FEMA, and local emergency agencies for real-time updates and alerts.
                
                #11. Meteorological and Environmental Agencies:
                    - National meteorological and environmental agencies typically offer weather forecasts, hurricane tracking, and safety information on their websites.
                
                #12. News Outlets:
                    - Major news organizations provide hurricane coverage, including live updates, articles, and videos.
                
                #13. Hurricane Preparedness Books and Publications:
                    - Look for books and publications on hurricane preparedness available in local libraries or online bookstores.
                
                Remember to stay informed through multiple sources, have an emergency plan in place, and follow the guidance of local authorities during hurricane events. Always refer to trusted sources for the most up-to-date and accurate information.
                
                """
        }
        
        //About Tornoados
        else if Global.mainMenuSelection == 5 {
            Global.resourceText  =
                """
                #1. National Weather Service (NWS):
                   - Website: https://www.weather.gov/safety/tornado
                   - The NWS provides tornado alerts, safety tips, and educational resources. They offer real-time tornado warnings and storm tracking.
                
                #2. Federal Emergency Management Agency (FEMA):
                   - Website: https://www.ready.gov/tornadoes
                   - FEMA offers guidance on tornado preparedness, mitigation, and recovery. Their website includes checklists, emergency kit information, and tornado drill resources.
                
                #3. The Storm Prediction Center (SPC):
                   - Website: https://www.spc.noaa.gov/
                   - The SPC, part of the NWS, provides tornado forecasts, severe weather outlooks, and detailed information on tornado watches and warnings.
                
                #4. Ready.gov - Tornadoes:
                   - Website: https://www.ready.gov/tornadoes
                   - Ready.gov, a FEMA initiative, offers tornado preparedness and safety information, including tornado warning signs and shelter options.
                
                #5. Local Weather Authorities:
                   - Keep an eye on local weather forecasts and alerts provided by television stations, radio, and official weather websites for tornado warnings specific to your area.
                
                #6. Emergency Alert Systems (EAS):
                   - Stay tuned to EAS broadcasts on TV and radio for emergency alerts, including tornado warnings.
                
                #7. Storm Chasing Organizations:
                   - Some storm chasing organizations and meteorologists share real-time tornado updates and videos on social media platforms.
                
                #8. Tornado Research Organizations:
                   - Explore websites of organizations dedicated to tornado research and meteorology for in-depth information and scientific studies.
                
                #9. Local Government and Emergency Management Agencies:
                   - Contact your local government and emergency management agencies for region-specific tornado information, evacuation routes, and emergency contact details.
                
                #10. American Red Cross - Tornado Safety:
                    - Website: https://www.redcross.org/get-help/how-to-prepare-for-emergencies/types-of-emergencies/tornado.html
                    - The American Red Cross provides tornado preparedness tips, safety checklists, and resources for those affected by tornadoes.
                
                #11. Educational Institutions and Research Centers:
                    - Universities and research centers with meteorological programs often provide tornado-related resources, studies, and educational materials on their websites.
                
                #12. News Outlets:
                    - Major news organizations provide coverage of tornado events, including live updates, articles, and videos.
                
                #13. Social Media and Mobile Apps:
                    - Follow official social media accounts and mobile apps of the NWS, FEMA, and local emergency agencies for real-time tornado alerts and information.
                
                #14. International Resources:
                    - For global tornado information, consider exploring resources from international meteorological organizations.
                
                Remember to stay informed through multiple sources, have an emergency plan in place, and seek shelter immediately in a safe location when tornado warnings are issued. Always refer to trusted sources for the most up-to-date and accurate information.
                
                """
        }
        
        //About Earthquakes
        else if Global.mainMenuSelection == 6 {
            Global.resourceText  = """
                
                #1. United States Geological Survey (USGS):
                
                Website: https://earthquake.usgs.gov/
                The USGS offers comprehensive information on earthquakes, including real-time earthquake monitoring, earthquake maps, educational resources, and earthquake preparedness tips.
                
                #2.Federal Emergency Management Agency (FEMA):
                
                Website: https://www.fema.gov/earthquake-safety
                FEMA provides guidance on earthquake preparedness, mitigation, and recovery. Their website includes earthquake safety tips and resources.
                
                #3.International Seismological Centre (ISC):
                
                Website: http://www.isc.ac.uk/
                The ISC is a global organization that maintains a comprehensive earthquake catalog. Their website provides earthquake data and research resources.
                
                #4. Earthquake Country Alliance:
                
                Website: https://www.earthquakecountry.org/
                This organization focuses on earthquake preparedness in California but offers valuable information applicable to earthquake-prone regions worldwide. Their site includes guides, videos, and resources.
                
                #5. National Earthquake Information Center (NEIC):
                
                Website: https://earthquake.usgs.gov/monitoring/neic/
                NEIC, part of the USGS, provides in-depth earthquake monitoring and data. Their website offers access to earthquake catalogs, seismicity reports, and more.
                
                #6. Ready.gov - Earthquakes:
                
                Website: https://www.ready.gov/earthquakes
                Ready.gov, a FEMA initiative, provides earthquake preparedness and safety information, including steps to create an emergency plan and build a disaster kit.
                
                #7. Your Local Emergency Management Agency:
                
                Check with your local government or emergency management agency for region-specific earthquake information, evacuation routes, and emergency contact details.
                
                #8. Educational Institutions and Geology Departments:
                
                Many universities and geology departments offer earthquake-related resources, research papers, and educational materials on their websites.
                
                #9. National Geographic - Earthquakes:
                
                Website: https://www.nationalgeographic.com/environment/natural-disasters/earthquakes/
                National Geographic provides articles, maps, and educational content about earthquakes and their impact on the environment.
                
                #10. Seismological Societies:
                
                Consider exploring the websites of national and regional seismological societies, which often publish research and educational materials related to earthquakes.
                
                Remember that earthquake preparedness and response should be tailored to your specific location and the level of earthquake risk in your area. Always refer to trusted sources for the most up-to-date and accurate information.
                
                
                
                """
        }
        
        //Format Text for headings
        rInfo.resourceBoldHeadingsInText(Global.resourceText)
    }
}




extension UITextView {
    func resourceBoldHeadingsInText(_ text: String) {
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
