//
//  AboutDisasterViewController.swift
//  IMRNaturalDisasters
//
//  Created by Amish Gupta on 9/07/23.
//

import UIKit

class AboutDisasterViewController: UIViewController {

    @IBOutlet weak var tAbout: UILabel!
    @IBOutlet weak var Info: UITextView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        if Global.mainMenuSelection == 1 {
            Global.initialColor = UIColor.systemRed
            tAbout.text = "About: Wildfires"
            }
        else if Global.mainMenuSelection == 2 {
            Global.initialColor = UIColor.systemMint
            tAbout.text = "About: Flashfloods"
        }
        else if Global.mainMenuSelection == 3 {
            Global.initialColor = UIColor.systemGreen
            tAbout.text = "About: Landslides"
        }
        else if Global.mainMenuSelection == 4 {
            Global.initialColor = UIColor.systemGray2
            tAbout.text = "About: Hurricanes"
        }
        else if Global.mainMenuSelection == 5 {
            Global.initialColor = UIColor.darkGray
            tAbout.text = "About: Tornados"
        }
        else if Global.mainMenuSelection == 6 {
            Global.initialColor = UIColor.systemBrown
            tAbout.text = "About: Earthquakes"
        }

        //Populate About Natural Disaster UITextView Text
        AboutNaturalDisaster()
    }
    
    func AboutNaturalDisaster()
    {
        if Global.mainMenuSelection == 1 {
            
            //About Wildfires
            Global.aboutText = """
                    Certainly, wildfires are destructive and potentially devastating natural disasters that can cause significant damage to ecosystems, property, and human lives. Here's some detailed information about wildfires:

                    #Definition:
                    Wildfires, also known as forest fires or bushfires, are uncontrolled fires that rapidly spread through vegetation, such as forests, grasslands, and shrublands. These fires are often fueled by dry conditions, high temperatures, low humidity, and wind.

                    #Causes:
                    Wildfires can be triggered by both natural and human factors:
                    
                    ##Natural Causes:
                    Lightning strikes can ignite vegetation, especially in dry areas.
                    
                    ##Human Causes:
                    Activities like campfires, discarded cigarette butts, power lines, equipment use, and intentional acts of arson can also start wildfires.

                    #Key Features:
                    
                    ##Fire Triangle:
                    Wildfires require three main components to burn: fuel (vegetation), oxygen, and heat (ignition source). Removing any of these components can help control or prevent wildfires.
                    
                    ##Fire Behavior:
                    Wildfires can exhibit various behaviors, including crown fires (fires that spread through treetops), surface fires (fires that burn along the ground), and ground fires (fires that burn in the soil).
                    
                    ##Rapid Spread:
                    Wildfires can spread quickly, driven by wind and dry conditions. This rapid spread can make them difficult to contain and control.

                    #Impact:
                    
                    ##Ecosystems:
                    Wildfires play a natural role in certain ecosystems by clearing out dead vegetation and promoting new growth. However, severe wildfires can disrupt ecosystems, destroy habitats, and lead to soil erosion.
                    
                    ##Air Quality:
                    Wildfires release large amounts of smoke, particulate matter, and pollutants into the air, reducing air quality and posing health risks, especially for vulnerable populations.
                    
                    ##Property and Infrastructure:
                    Wildfires can destroy homes, businesses, and infrastructure, leading to significant economic losses.
                    
                    ##Human Safety:
                    Wildfires can threaten human lives, especially in areas where populations live near forested areas. Evacuations and firefighting efforts are critical to ensuring safety.

                    #Prevention and Preparedness:
                    
                    ##Fire Safety Measures:
                    Individuals should follow fire safety guidelines, such as using fire-resistant building materials, creating defensible space around homes, and properly extinguishing campfires.
                    
                    ##Firebreaks:
                    Creating firebreaks involves removing vegetation to create a barrier that can slow or stop the spread of a wildfire.
                    
                    ##Early Warning Systems:
                    Communities use weather forecasts, fire danger ratings, and early warning systems to alert residents about potential fire risks.
                    
                    ##Public Education:
                    Educating the public about wildfire risks, safety measures, and evacuation plans is crucial for minimizing harm.

                    #Firefighting and Control:
                    
                    ##Firefighters:
                    Trained firefighting personnel use various methods to suppress wildfires, including using water, fire retardants, and creating firebreaks.
                    
                    ##Aerial Support:
                    Aircraft, such as water-dropping helicopters and planes, can assist in firefighting efforts by dropping water or retardants from above.
                    
                    ##Containment:
                    Firefighters work to establish containment lines, boundaries where the spread of the fire is halted, to control the fire's movement.

                    #Recovery and Rehabilitation:
                    After a wildfire, efforts focus on rehabilitating ecosystems, preventing erosion, and promoting new growth of vegetation.
                    Community recovery involves rebuilding homes, businesses, and infrastructure, as well as addressing the mental health and well-being of affected individuals.

                    Wildfires are a complex natural phenomenon, and addressing them requires a combination of prevention, preparedness, firefighting, and rehabilitation efforts. Public awareness and responsible land management are essential in minimizing the risk and impact of wildfires.
                    """
            }
        
        //About Flash Floods
        else if Global.mainMenuSelection == 2 {
            Global.aboutText =  """
                    A flash flood is a sudden and rapid inundation of water into normally dry areas, typically occurring within a short period of time, usually six hours or less, after heavy rainfall or other factors that cause water accumulation. Flash floods can be extremely dangerous due to their swift onset and the sheer force of the water involved.

                    Here are some key points to understand about flash floods:

                    #Causes:
                    Flash floods are commonly caused by heavy rainfall, especially in areas with steep terrain, poor drainage systems, or urban environments where water cannot easily be absorbed into the ground. Other factors that can trigger flash floods include rapid snowmelt, dam or levee failures, and sudden release of water from reservoirs.

                    #Rapid Onset:
                    One of the defining characteristics of flash floods is their rapid onset. Within minutes or hours of heavy rainfall or a sudden water release, water levels can rise significantly, catching people and communities off guard.

                    #Force of Water:
                    The force of the water in a flash flood is immense and can sweep away vehicles, trees, and even buildings. The swift-moving water can erode the ground, destabilize structures, and cause significant damage.

                    #Danger to Life and Property:
                    Flash floods pose a serious threat to human life and property. They can result in drownings, injuries, and extensive property damage. People caught in flash floods may have little time to react or escape to higher ground.

                    #Prevention and Preparedness:
                    Since flash floods can strike suddenly, being prepared is crucial. Local authorities often issue flood warnings and advisories based on weather forecasts. Individuals and communities should have emergency plans in place, know evacuation routes, and avoid flood-prone areas during heavy rain events.

                    #Avoiding Risky Behavior:
                    It's important to avoid driving, walking, or swimming in floodwaters, as it's difficult to gauge the depth and strength of the water. Even a small amount of swiftly moving water can sweep a person or vehicle away.

                    #Monitoring and Communication:
                    Advances in technology, such as weather radars and early warning systems, have improved the ability to predict and monitor flash floods. Timely communication of alerts and warnings to the public is crucial for minimizing the impact of flash floods.

                    #Environmental Impact:
                    Flash floods can have significant environmental effects, including erosion, sediment deposition, and disruption of aquatic ecosystems. They can also lead to the spread of pollutants carried by floodwaters.

                    Flash floods are a serious natural disaster that require vigilance, preparedness, and proactive response measures to reduce their impact on communities and individuals. It's essential to stay informed about weather conditions and follow the guidance of local authorities during heavy rainfall events or flood warnings.
                    """
        }
        
        //About Landslides
        else if Global.mainMenuSelection == 3 {
            Global.aboutText  = """
                    A landslide, also known as a landslip, is a geological phenomenon involving the downward movement of rock, soil, and debris on a slope. Landslides can vary in size and severity, ranging from small soil movements to massive rock avalanches. They are often triggered by a combination of factors, including geological, meteorological, and human activities. Here's some important information about landslides:

                    #Causes:

                    ##Rainfall and Water:
                    Heavy rainfall can saturate the ground, making it more susceptible to landslides. The added weight of water can increase the pressure on slopes, reducing their stability and triggering movements.
                    
                    ##Earthquakes:
                    Earthquakes can shake and destabilize the ground, causing landslides, especially in areas with steep terrain or loose soil.
                    
                    ##Human Activities:
                    Construction, deforestation, mining, and other human activities can alter the natural stability of slopes, increasing the risk of landslides. Excavations, changes in water drainage patterns, and poor construction practices can all contribute to slope instability.

                    #Types of Landslides:

                    ##Rockfall:
                    Individual rocks or boulders detach from a steep rock face and fall to the ground below.
                    
                    ##Rockslide:
                    Larger sections of rock break loose and slide down a slope.
                    
                    ##Debris Flow:
                    A mixture of rock, soil, water, and vegetation flows down a slope like a fast-moving river.
                    
                    ##Mudslide:
                    Similar to a debris flow but with a higher proportion of water and fine-grained sediment.
                    
                    ##Lahar:
                    A type of volcanic mudflow that occurs when volcanic ash and debris mix with water.

                    #Impacts:

                    ##Damage:
                    Landslides can cause significant damage to infrastructure, buildings, roads, and other structures in their path.
                    
                    ##Loss of Life:
                    People living in or near landslide-prone areas are at risk of injury or death if caught in a landslide event.
                    
                    ##Environmental Impact:
                    Landslides can lead to habitat destruction, soil erosion, and sedimentation of water bodies, impacting ecosystems.

                    #Prevention and Mitigation:

                    ##Land Use Planning:
                    Identifying and avoiding landslide-prone areas during urban planning and construction can minimize the risk.
                    
                    ##Slope Stabilization:
                    Engineering techniques such as retaining walls, terracing, and soil reinforcement can help stabilize slopes.
                    
                    ##Vegetation:
                    Planting and maintaining vegetation on slopes can help prevent soil erosion and stabilize the ground.
                    
                    ##Monitoring:
                    Continuous monitoring of slopes using instruments like inclinometers and ground-penetrating radar can provide early warning signs of potential landslides.
                    
                    ##Early Warning Systems:
                    Developing and implementing systems to provide alerts about impending landslides can save lives and reduce damage.

                    Landslides are natural events that can also be exacerbated by human activities. Understanding the factors that contribute to landslides and taking appropriate preventive measures are essential for minimizing their impact on communities and the environment.
                    """
            
        }
           
        //About Hurricanes
        else if Global.mainMenuSelection == 4 {
            Global.aboutText  = """
                    A hurricane, also known as a typhoon or cyclone in different regions, is a powerful tropical storm characterized by strong winds, heavy rainfall, and low atmospheric pressure. Hurricanes are one of the most destructive natural disasters, capable of causing widespread devastation to coastal areas and beyond. Here are some key points about hurricanes:

                    #Formation:
                    Hurricanes form over warm ocean waters near the equator. The heat from the warm water fuels the storm's energy and moisture, causing it to intensify.
                    The basic ingredients for hurricane formation include warm ocean water (above 26.5°C or 80°F), moist air, converging winds, and a pre-existing weather disturbance.
                    Stages of Development:

                    ##Tropical Disturbance:
                    A cluster of thunderstorms begins to organize and show signs of circulation.
                    
                    ##Tropical Depression:
                    The organized system develops a closed circulation and sustained winds of up to 38 mph (62 km/h).

                    ##Tropical Storm:
                    When sustained winds reach 39 to 73 mph (63 to 117 km/h), the system is classified as a tropical storm and is given a name.

                    ##Hurricane:
                    A tropical storm becomes a hurricane when its sustained winds reach 74 mph (119 km/h) or higher. Hurricanes are categorized on the Saffir-Simpson Hurricane Wind Scale from Category 1 (weakest) to Category 5 (strongest).

                    #Components of a Hurricane:

                    ##Eye:
                    The center of a hurricane is known as the eye. It is a relatively calm area with clear skies and light winds.
                    
                    ##Eyewall:
                    The eyewall surrounds the eye and contains the strongest winds and heaviest rainfall in the storm.
                    
                    ##Rainbands:
                    These are bands of clouds and thunderstorms that spiral outward from the eyewall. They can produce intense rainfall and gusty winds.
                    
                    #Impacts:

                    ##Winds:
                    Hurricanes are known for their extremely powerful winds that can cause extensive damage to buildings, trees, and infrastructure.
                    
                    ##Rainfall:
                    Hurricanes can unleash heavy rainfall, leading to flooding and landslides. The combination of heavy rain and storm surges can cause coastal and inland flooding.
                    
                    ##Storm Surge:
                    The most deadly and destructive aspect of a hurricane is often the storm surge—a rapid rise in sea level due to the low pressure and strong winds of the storm, pushing a wall of water onto the coastline.
                    
                    ##Tornadoes:
                    Hurricanes can also spawn tornadoes, which add to the overall damage and destruction.
                    
                    #Preparation and Safety:
                    
                    ##Evacuation:
                    Residents in hurricane-prone areas are often advised to evacuate when a strong hurricane is forecasted. Evacuation plans and routes should be well-known in advance.
                    
                    ##Emergency Kits:
                    Having a well-stocked emergency kit with essentials like food, water, medications, and important documents is crucial.
                    
                    ##Monitoring:
                    Staying informed through reliable weather sources and official announcements helps in making informed decisions during a hurricane threat.
                    
                    #Naming Hurricanes:
                    Hurricanes are named to help simplify communication and raise awareness. Names are chosen from predetermined lists and alternate between male and female names.
                    Tracking and Forecasting:

                    Meteorological agencies use satellite imagery, weather models, and data from aircraft to track and forecast the path and intensity of hurricanes. These forecasts help communities prepare for the storm's impact.
                    Climate Change and Hurricanes:

                    While hurricanes have always been a natural phenomenon, there is evidence that climate change may contribute to their increased intensity and frequency in some regions. Warmer ocean waters can provide more energy for hurricanes to grow and intensify.
                    Hurricanes are complex and powerful weather systems that require vigilance, preparedness, and coordinated response efforts to minimize their impact on communities and infrastructure.
                    """
        }
        
        //About Tornoados
        else if Global.mainMenuSelection == 5 {
            Global.aboutText  =
                    """
                    A tornado is a violent and rapidly rotating column of air that extends from a thunderstorm to the ground. Tornadoes are one of the most destructive natural phenomena, capable of causing significant damage to structures, vehicles, and the environment. They are often associated with severe thunderstorms and are characterized by their strong winds and funnel-shaped appearance. Here are some key points about tornadoes:

                    #Formation:
                    Tornadoes form within strong thunderstorms known as supercells, which are characterized by rotating updrafts.
                    The interaction between warm, moist air from the Gulf of Mexico and cool, dry air from the Rocky Mountains can create the conditions necessary for tornado formation.

                    #Stages of Development:

                    ##Mesocyclone Formation:
                    Within a supercell thunderstorm, a rotating updraft called a mesocyclone develops. This rotation can become tilted due to wind shear, creating a rotating column of air.

                    ##Tornado Funnel Formation:
                    If the mesocyclone's rotation becomes strong enough and a downdraft of cold air is introduced, a visible funnel cloud can form. This funnel cloud extends downward from the storm cloud base.

                    ##Touchdown:
                    If the funnel cloud makes contact with the ground, the tornado is said to have "touched down." At this point, it becomes a tornado and can cause damage along its path.

                    #Characteristics:

                    ##Funnel Shape:
                    Tornadoes are often characterized by their funnel-shaped appearance, with a narrow, rotating column of air extending from the base of a thunderstorm to the ground.

                    ##Rotation:
                    Tornadoes rotate counterclockwise in the Northern Hemisphere and clockwise in the Southern Hemisphere. The intensity of the rotation can vary, with some tornadoes having multiple vortices within the main circulation.

                    ##Wind Speeds:
                    Tornado wind speeds can range from relatively weak (EF0 on the Enhanced Fujita scale) to extremely powerful (EF5), which can have winds exceeding 200 mph (322 km/h).

                    #Impacts:

                    ##Damage:
                    Tornadoes can cause catastrophic damage to buildings, infrastructure, and vegetation along their path. The intensity of the tornado and its duration can determine the extent of the destruction.

                    ##Debris:
                    Tornadoes pick up debris from the ground and can hurl it at high speeds, increasing the potential for injury and destruction.

                    ##Tornado Alley:
                    Certain regions, such as parts of the central United States (often referred to as Tornado Alley), are more prone to tornadoes due to the collision of warm, moist air from the Gulf of Mexico with cool, dry air from Canada.

                    #Safety and Preparedness:

                    ##Seek Shelter:
                    If a tornado warning is issued or if you spot a tornado, seek shelter immediately. The best places for shelter are basements, storm cellars, or small, windowless interior rooms on the lowest floor of a sturdy building.

                    ##Mobile Homes:
                    Mobile homes are especially vulnerable to tornadoes. Residents of mobile homes should seek safer shelter in a nearby building or designated storm shelter.

                    ##Stay Informed:
                    Stay updated on weather conditions through reliable sources such as weather apps, radio, or TV. Tornado watches indicate that conditions are favorable for tornadoes, while tornado warnings mean a tornado has been spotted or indicated by radar.

                    ##Emergency Kits:
                    Have an emergency kit with essentials like food, water, medications, and important documents in case of tornado-related power outages or displacement.

                    Tornadoes are unpredictable and potentially life-threatening events. Staying informed, having a plan, and knowing where to seek shelter are critical steps in minimizing the risk posed by tornadoes.
                    """
        }
        
        //About Earthquakes
        else if Global.mainMenuSelection == 6 {
            Global.aboutText  = """
                    An earthquake is a natural phenomenon caused by the sudden release of energy in the Earth's crust, resulting in the shaking or trembling of the ground. It is a complex geological event that can vary in magnitude and impact, from minor vibrations to devastating destruction. Here are some key points about earthquakes:

                    #Causes:
                    - Earthquakes are primarily caused by the movement of tectonic plates, which are large sections of the Earth's crust that float on the semi-fluid mantle beneath them. The boundaries where these plates interact are known as faults.
                    - The most common cause of earthquakes is the movement along faults due to the buildup of stress caused by the gradual movement of tectonic plates.
                    - Other causes include volcanic activity (volcanic earthquakes), human activities such as mining and reservoir-induced seismicity (human-induced earthquakes).

                    #Types of Faults and Movements:
                    
                    ##Normal Fault:
                    This occurs when two blocks of the Earth's crust pull apart, causing one block to drop down relative to the other.

                    ##Reverse Fault (Thrust Fault):
                    This happens when two blocks of the crust are pushed together, causing one block to be forced up and over the other.

                    ##Strike-Slip Fault:
                    In this case, two blocks of the crust move horizontally past each other.

                    #Magnitude and Intensity:
                    - The magnitude of an earthquake is a measure of the energy released at its source. It is quantified using the Richter scale or the moment magnitude scale (Mw).
                    - The intensity of an earthquake measures its effects on humans, structures, and the environment. The Modified Mercalli Intensity scale (MMI) is commonly used to assess intensity.

                    #Effects and Impact:
                    - The primary impact of earthquakes is ground shaking, which can lead to structural damage, landslides, and ground rupture.
                    - Secondary effects include tsunamis (large oceanic waves generated by undersea earthquakes), liquefaction (when saturated soil temporarily loses its strength and behaves like a liquid), and aftershocks (smaller earthquakes that follow the main shock).

                    #Earthquake-Prone Areas:
                    Earthquakes can occur anywhere in the world, but they are more common in regions located near tectonic plate boundaries. The "Ring of Fire" around the Pacific Ocean is a particularly seismically active area.

                    #Preparedness and Safety:
                    - Earthquake preparedness involves creating an emergency plan, securing heavy furniture and objects, and having an emergency kit with essentials like water, food, medications, and first aid supplies.
                    - During an earthquake, "Drop, Cover, and Hold On" is the recommended safety protocol. Drop to the ground, take cover under a sturdy piece of furniture, and hold on until the shaking stops.

                    #Structural Mitigation:
                    Building codes and engineering practices are designed to make structures more resilient to earthquakes. Flexible materials, shock absorbers, and reinforced construction techniques can help minimize damage.

                    #Monitoring and Early Warning:
                    Seismologists use networks of seismometers to monitor and detect earthquakes. Early warning systems can provide seconds to tens of seconds of advance notice before the more damaging shaking arrives, allowing people to take cover.

                    #Long-Term Implications:
                    Earthquakes can shape landscapes, influence geological processes, and contribute to the formation of mountains, valleys, and fault lines over millions of years.

                    Understanding earthquakes and their underlying causes is crucial for preparedness, mitigation, and the safety of communities living in earthquake-prone areas.
                    """
        }
        
        //Format Text for headings
        Info.boldHeadingsInText(Global.aboutText)
    }
}


extension UITextView {
    func boldHeadingsInText(_ text: String) {
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
