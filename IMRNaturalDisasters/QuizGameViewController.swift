//
//  QuizGameViewController.swift
//  IMRNaturalDisasters
//
//  Created by Amish Gupta on 9/22/23.
//

import UIKit

var quizStructure: [(
    question: String,
    answers: [String],
    correctAnswer: Int
)] = []

class QuizGameViewController: UIViewController {
    
    // This will store the current question we are working with
    var vQuestion: (question: String, answers: [String], correctAnswer: Int)!
    
    // amount of points user has
    var userScore: Int = 0
    
    var answerSelected: Int = -1
    

    // label keeping track of score
    @IBOutlet weak var scoreLabel: UILabel!
    // label displaying the question
    @IBOutlet weak var questionLabel: UILabel!
    // Label Display Quiz Title
    @IBOutlet weak var quizGameTitle: UILabel!
    // outlets to set answer text (on the buttons)
    @IBOutlet weak var answerAoutlet: UIButton!
    @IBOutlet weak var answerBoutlet: UIButton!
    @IBOutlet weak var answerCoutlet: UIButton!
    @IBOutlet weak var answerDoutlet: UIButton!
    
    @IBOutlet weak var nextQuestionButton: UIButton!
    @IBOutlet weak var Answer: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if Global.mainMenuSelection == 1 {
            quizGameTitle.text = "Quiz Game: Wildfires"
            quizStructure = wildFireQuizStructure
        }
        else if Global.mainMenuSelection == 2 {
            quizGameTitle.text = "Quiz Game: Flashfloods"
            quizStructure = flashFloodQuizStructure
        }
        else if Global.mainMenuSelection == 3 {
            quizGameTitle.text = "Quiz Game: Landslides"
            quizStructure = landSlidesQuizStructure
        }
        else if Global.mainMenuSelection == 4 {
            quizGameTitle.text = "Quiz Game: Hurricanes"
            quizStructure = hurricaneQuizStructure
        }
        else if Global.mainMenuSelection == 5 {
            quizGameTitle.text = "Quiz Game: Tornados"
            quizStructure = tornadoQuizStructure
        }
        else if Global.mainMenuSelection == 6 {
            quizGameTitle.text = "Quiz Game: Earhquakes"
            quizStructure = earthquakeQuizStructure
        }
        nextQuestionButton.isHidden = false;
        //Call the newquestion function
        newQuestion()

        // Set the numberOfLines property of the questionLabel to 0
        // to allow the label to use as many lines as needed to display its text
        questionLabel.numberOfLines = 0

        // Set the lineBreakMode property of the questionLabel to .byWordWrapping
        // to wrap the label's text by word instead of by character
        questionLabel.lineBreakMode = .byWordWrapping
        changeOptionButtonColor()

    }
    
    func changeOptionButtonColor() {
        answerAoutlet.backgroundColor = Global.initialColor
        answerBoutlet.backgroundColor = Global.initialColor
        answerCoutlet.backgroundColor = Global.initialColor
        answerDoutlet.backgroundColor = Global.initialColor
    }

    
    @IBAction func answerAclicked(_ sender: Any) {
        checkAnswer(selectedAnswer: 0)
    }
    
    @IBAction func answerBclicked(_ sender: Any) {
        checkAnswer(selectedAnswer: 1)
    }
    
    @IBAction func answerCclicked(_ sender: Any) {
        checkAnswer(selectedAnswer: 2)
    }
    
    @IBAction func answerDclicked(_ sender: Any) {
        checkAnswer(selectedAnswer: 3)
    }

    @IBAction func nextQuestion(_ sender: Any) {
        if answerSelected == -1 {
            Answer.textColor = UIColor.blue
            Answer.text = "Please select your Answer to Continue!"
        }
        else {
            newQuestion()
        }
        answerSelected = -1
    }
    

    
    // quiz data structure with question, answers, and corresponding correct answer
    // correctAnswer is the index in the answers for the correct answer
    var wildFireQuizStructure = [(
                    question: "What is a common human cause of Wildfires?",
                    answers: [
                        "Thunderstorms",
                        "Controlled burns",
                        "Hailstorms",
                        "Campfires left unattended"],
                    correctAnswer: 3
                ),
                (
                    question: "What is the recommended distance for creating a defensible space around your home to reduce the risk of wildfires?",
                    answers: [
                        "300 feet",
                        "50 feet",
                        "100 feet",
                        "250 feet"
                    ],
                    correctAnswer: 2
                ),
                (
                    question: "What should you include in an emergency kit in case of a wildfire evacuation?",
                    answers: [
                        "Extra Barbecue equipment",
                        "Important documents, medications, and non-perishable food",
                        "A change of clothes",
                        "Video Game Consoles"
                    ],
                    correctAnswer: 1
                ),
                (
                    question: "During a wildfire evacuation, what is the best way to receive emergency alerts and updates?",
                    answers: [
                        "Check social media posts from friends",
                        "Watching youtube",
                        "Taking to neigbours",
                        "Monitor local news, radio, sirens or official emergency sources"
                    ],
                    correctAnswer: 3
                ),
                (
                    question: "Which of the following is a recommended action to take if you're caught in your vehicle during a wildfire?",
                    answers: [
                        "Park your car under a tree for protection",
                        "Find an open area, park away from vegetation, close windows, and cover yourself with a blanket",
                        "Drive quickly through the flames to escape",
                        "Stay inside the car and wait for the fire to pass"
                    ],
                    correctAnswer: 1
                ),
                (
                    question: "What is the Ready, Set, Go! wildfire evacuation plan?",
                    answers: [
                        "A three-step process for individuals to be ready for evacuation, set to leave at a moment's notice, and to go quickly and safely",
                        "A strategy to prepare for a camping trip",
                        "A gardening technique for growing fire-resistant plants",
                        "A strategy to prepare for a camping trip"
                    ],
                    correctAnswer: 0
                ),
                (
                    question: "What is the primary factor that determines how fast a wildfire spreads?",
                    answers: [
                        "The time of day",
                        "Wind speed and direction",
                        "The type of trees in the forest",
                        "The altitude of the location"
                    ],
                    correctAnswer: 1
                ),
                (
                    question: "Which firefighting equipment is designed to drop water or fire retardant from the air to suppress wildfires?",
                    answers: [
                        "Chainsaws",
                        "Fire trucks",
                        "Leaf blowers",
                        "Aerial tankers"
                    ],
                    correctAnswer: 3
                ),
                (
                    question: "What is a firebreak?",
                    answers: [
                        "A designated area for controlled burns",
                        "A safety device worn by firefighters",
                        "A gap in vegetation or a cleared area to slow the spread of wildfires",
                        "A special type of BBQ grill"
                    ],
                    correctAnswer: 2
                ),
                
                (
                    question: "What should you do if you spot a wildfire in your area?",
                    answers: [
                        "Call emergency services to report the fire's location",
                        "Attempt to put out the fire with water from a garden hose",
                        "Take a picture and share it on social media",
                        "Attempt to put out the fire with water from a garden hose"
                    ],
                    correctAnswer: 0
                )
    ]
    
    var flashFloodQuizStructure = [(
                    question: "What is a flash flood?",
                    answers: [
                        "A slow-moving, predictable flood",
                        "A sudden and rapid flood of water",
                        "A flood caused by heavy snowfall",
                        "A flood that only occurs at night"],
                    correctAnswer: 1
                ),
                (
                    question: "Which weather condition is most likely to trigger a flash flood?",
                    answers: [
                        "Clear skies and gentle winds",
                        "Steady rainfall over several days",
                        "Thunderstorms with heavy rain",
                        "Fog and mist"
                    ],
                    correctAnswer: 2
                ),
                (
                    question: "Flash floods can occur in which of the following areas?",
                    answers: [
                        "Deserts and arid regions",
                        "Mountainous regions",
                        "Coastal areas",
                        "All of the above"
                    ],
                    correctAnswer: 3
                ),
                (
                    question: "What is one of the most dangerous aspects of flash floods?",
                    answers: [
                        "They are easy to predict",
                        "They can sweep away vehicles and people",
                        "They typically last for several days",
                        "They only happen in remote areas"
                    ],
                    correctAnswer: 1
                ),
                (
                    question: "Which of the following is NOT a recommended action during a flash flood warning?",
                    answers: [
                        "Stay indoors and avoid driving",
                        "Try to walk or swim through the floodwaters",
                        "Listen to emergency alerts and warnings",
                        "Seek higher ground if you're in a flood-prone area"
                    ],
                    correctAnswer: 1
                ),
                (
                    question: "What is the best way to receive flash flood alerts and warnings?",
                    answers: [
                        "Check social media for updates",
                        "Listen to your favorite radio station",
                        "Sign up for a weather alert system or app",
                        "Wait for a neighbor to inform you"
                    ],
                    correctAnswer: 2
                ),
                (
                    question: "Which type of terrain is more susceptible to flash floods?",
                    answers: [
                        "Flat plains",
                        "Hills and mountains",
                        "Urban areas",
                        "Forested regions"
                    ],
                    correctAnswer: 1
                ),
                (
                    question: "Flash floods can carry debris such as mud, rocks, and branches. What should you do if you encounter debris-filled floodwaters?",
                    answers: [
                        "Walk through it carefully",
                        "Swim through it as quickly as possible",
                        "Avoid it and find an alternate route",
                        "Collect the debris as souvenirs"
                    ],
                    correctAnswer: 2
                ),
                (
                    question: "What is the recommended way to prepare for potential flash floods?",
                    answers: [
                        "Stock up on canned food and candles",
                        "Have an emergency kit with essential supplies",
                        "Keep a collection of raincoats and umbrellas",
                        "Ignore the warnings and hope for the best"
                    ],
                    correctAnswer: 1
                ),
                (
                    question: "After a flash flood, what should you do when returning to your home or area?",
                    answers: [
                        "Drive through the flooded streets to check on neighbors",
                        "Immediately enter your home and assess the damage",
                        "Wait for authorities to declare it safe to return",
                        "Start cleaning up without waiting for guidance"
                    ],
                    correctAnswer: 2
                )
    ]
    
    var landSlidesQuizStructure = [(
                    question: "What is a landslide?",
                    answers: [
                        "A sudden eruption of a volcano",
                        "The movement of rock, soil, and debris down a slope",
                        "A heavy rainfall event",
                        "A meteorological phenomenon"],
                    correctAnswer: 1
                ),
                (
                    question: "Which of the following factors can trigger a landslide?",
                    answers: [
                        "Prolonged drought",
                        "Light rain",
                        "Planting trees",
                        "Earthquake or heavy rainfall"
                    ],
                    correctAnswer: 3
                ),
                (
                    question: "What type of terrain is most susceptible to landslides?",
                    answers: [
                        "Flat, open plains",
                        "Coastal regions",
                        "Steep slopes and hilly areas",
                        "Urban areas"
                    ],
                    correctAnswer: 2
                ),
                (
                    question: "What is a common early warning sign of an impending landslide?",
                    answers: [
                        "An increase in wildlife activity",
                        "Sudden temperature drop",
                        "Cracks appearing in the ground or structures",
                        "Frequent rainbow sightings"
                    ],
                    correctAnswer: 2
                ),
                (
                    question: "Which of the following activities can contribute to landslide risk?",
                    answers: [
                        "Properly grading and stabilizing slopes",
                        "Constructing retaining walls",
                        "Overloading the top of a slope with heavy equipment",
                        "Planting trees and vegetation"
                    ],
                    correctAnswer: 2
                ),
                (
                    question: "Which season is typically associated with an increased risk of landslides?",
                    answers: [
                        "Summer",
                        "Spring",
                        "Fall",
                        "Winter"
                    ],
                    correctAnswer: 3
                ),
                (
                    question: "What should you do if you suspect a landslide is imminent?",
                    answers: [
                        "Wait for it to happen and then take action",
                        "Evacuate the area and alert authorities",
                        "Continue with your daily activities as normal",
                        "Take photographs for social media"
                    ],
                    correctAnswer: 1
                ),
                (
                    question: "What is the main danger associated with landslides?",
                    answers: [
                        "Loss of property",
                        "Loss of wildlife",
                        "Loss of cell phone reception",
                        "Loss of human lives"
                    ],
                    correctAnswer: 3
                ),
                (
                    question: "What is the primary way to prevent landslides?",
                    answers: [
                        "Praying for good weather",
                        "Properly managing slope stability and drainage",
                        "Painting warning signs on hillsides",
                        "Avoiding outdoor activities in hilly areas"
                    ],
                    correctAnswer: 1
                ),
                (
                    question: "After a landslide, what is the safest course of action?",
                    answers: [
                        "Immediately return to your home",
                        "Wait for authorities to assess the situation",
                        "Go sightseeing to view the damage",
                        "Try to rescue trapped animals"
                    ],
                    correctAnswer: 1
                )
    ]
    
    var hurricaneQuizStructure = [(
                    question: "What is a hurricane?",
                    answers: [
                        "A severe thunderstorm",
                        "A type of tornado",
                        "A large, powerful tropical storm",
                        "A sudden drop in temperature"],
                    correctAnswer: 2
                ),
                (
                    question: "In which region do hurricanes typically form?",
                    answers: [
                        "Over landlocked countries",
                        "Over cold ocean waters",
                        "Over warm ocean waters",
                        "In mountainous areas"
                    ],
                    correctAnswer: 2
                ),
                (
                    question: "What is the primary energy source for hurricanes?",
                    answers: [
                        "Solar energy",
                        "Wind energy",
                        "Geothermal energy",
                        "Nuclear energy"
                    ],
                    correctAnswer: 0
                ),
                (
                    question: "What is the eye of a hurricane?",
                    answers: [
                        "The center of the storm with calm, clear skies",
                        "The area of the storm with the strongest winds",
                        "The outermost part of the storm",
                        "A type of tornado that forms during a hurricane"
                    ],
                    correctAnswer: 0
                ),
                (
                    question: "What is the Saffir-Simpson Hurricane Wind Scale used for?",
                    answers: [
                        "To measure the storm surge",
                        "To categorize hurricanes based on their wind speed and potential damage",
                        "To predict the duration of a hurricane",
                        "To track the path of a hurricane"
                    ],
                    correctAnswer: 1
                ),
                (
                    question: "Which category on the Saffir-Simpson Hurricane Wind Scale represents the most intense hurricanes with winds over 157 mph (252 km/h)?",
                    answers: [
                        "Category 1",
                        "Category 2",
                        "Category 3",
                        "Category 5"
                    ],
                    correctAnswer: 3
                ),
                (
                    question: "What is a storm surge?",
                    answers: [
                        "A sudden drop in atmospheric pressure",
                        "A rapid change in wind direction",
                        "An abnormal rise in sea level during a hurricane",
                        "The eye of the hurricane"
                    ],
                    correctAnswer: 2
                ),
                (
                    question: "Which safety precaution is recommended during a hurricane warning?",
                    answers: [
                        "Go outside to witness the storm",
                        "Stay indoors away from windows and glass doors",
                        "Drive around to assess the damage",
                        "Use candles for lighting during power outages"
                    ],
                    correctAnswer: 1
                ),
                (
                    question: "What is the hurricane season in the Atlantic Basin?",
                    answers: [
                        "January to April",
                        "May to August",
                        "June to November",
                        "September to December"
                    ],
                    correctAnswer: 2
                ),
                (
                    question: "What is the safest location to evacuate to during a hurricane?",
                    answers: [
                        "A beachfront resort",
                        "A sturdy, inland building or shelter",
                        "A rooftop",
                        "A boat in the ocean"
                    ],
                    correctAnswer: 1
                )
    ]
    
    var tornadoQuizStructure = [(
                    question: "What is a tornado?",
                    answers: [
                        "A type of tropical storm",
                        "A severe thunderstorm",
                        "A rapidly rotating column of air extending from a thunderstorm to the ground",
                        "A type of earthquake"],
                    correctAnswer: 2
                ),
                (
                    question: "Which scale is commonly used to measure the strength of tornadoes?",
                    answers: [
                        "Beaufort Scale",
                        "Richter Scale",
                        "Enhanced Fujita (EF) Scale",
                        "Saffir-Simpson Scale"
                    ],
                    correctAnswer: 2
                ),
                (
                    question: "What is the safest place to seek shelter during a tornado if you are in a house without a basement?",
                    answers: [
                        "In an attic",
                        "In a closet or small interior room on the lowest floor",
                        "Next to a window",
                        "In the garage"
                    ],
                    correctAnswer: 1
                ),
                (
                    question: "Which direction do most tornadoes in the Northern Hemisphere rotate?",
                    answers: [
                        "Clockwise",
                        "Counterclockwise",
                        "Randomly",
                        "They do not rotate"
                    ],
                    correctAnswer: 1
                ),
                (
                    question: "What is a tornado watch?",
                    answers: [
                        "A warning that a tornado has been spotted",
                        "A prediction that tornadoes are likely to occur in a given area",
                        "A notification that tornadoes have already caused damage",
                        "A tornado-related TV show"
                    ],
                    correctAnswer: 1
                ),
                (
                    question: "What should you do if you are caught in a vehicle during a tornado and cannot get to a shelter?",
                    answers: [
                        "Drive as fast as possible in the opposite direction",
                        "Park the car and hide in a ditch or low-lying area",
                        "Stay in the car with the windows up",
                        "Abandon the vehicle and run to the nearest building"
                    ],
                    correctAnswer: 1
                ),
                (
                    question: "What is a tornado's path of destruction?",
                    answers: [
                        "The path it takes while rotating in the sky",
                        "The path of wreckage left on the ground",
                        "The path of lightning that accompanies the tornado",
                        "The path followed by emergency responders"
                    ],
                    correctAnswer: 1
                ),
                (
                    question: "Which of the following is NOT a sign of an approaching tornado?",
                    answers: [
                        "Dark, greenish sky",
                        "Hail",
                        "Calm, clear weather",
                        "Frequent lightning"
                    ],
                    correctAnswer: 2
                ),
                (
                    question: "What is the purpose of a tornado siren?",
                    answers: [
                        "To warn of a nearby tornado touchdown",
                        "To signal the end of a tornado",
                        "To celebrate a local event",
                        "To scare birds away"
                    ],
                    correctAnswer: 0
                ),
                (
                    question: "Which U.S. state is known as Tornado Alley due to its frequent tornado activity?",
                    answers: [
                        "Florida",
                        "Texas",
                        "California",
                        "New York"
                    ],
                    correctAnswer: 1
                )
    ]
    
    var earthquakeQuizStructure = [(
                    question: "What causes earthquakes?",
                    answers: [
                        "Hurricanes",
                        "The shifting of tectonic plates",
                        "Heavy rainfall",
                        "Volcanic eruptions"],
                    correctAnswer: 1
                ),
                (
                    question: "Which of the following is NOT a primary type of seismic wave generated by an earthquake?",
                    answers: [
                        "Primary waves",
                        "Secondary waves",
                        "Amplitude waves",
                        "Surface waves"
                    ],
                    correctAnswer: 2
                ),
                (
                    question: "What is the instrument used to measure the magnitude of an earthquake?",
                    answers: [
                        "Richter Scale",
                        "Thermometer",
                        "Barometer",
                        "Wind vane"
                    ],
                    correctAnswer: 0
                ),
                (
                    question: "What is the name of the scale that measures the intensity of shaking and damage caused by an earthquake at a specific location?",
                    answers: [
                        "Richter Scale",
                        "Seismograph Scale",
                        "Mercalli Intensity Scale",
                        "Epicenter Scale"
                    ],
                    correctAnswer: 2
                ),
                (
                    question: "Where is the safest place to take cover during an earthquake indoors?",
                    answers: [
                        "In a basement",
                        "Under a sturdy table or desk",
                        "Next to a window",
                        "In an elevator"
                    ],
                    correctAnswer: 1
                ),
                (
                    question: "What should you do if you are outdoors during an earthquake?",
                    answers: [
                        "Run toward the nearest building",
                        "Lie flat on the ground",
                        "Stand still and cover your head",
                        "Find an open area away from buildings, trees, and power lines"
                    ],
                    correctAnswer: 3
                ),
                (
                    question: "Which of the following is a recommended earthquake preparedness action?",
                    answers: [
                        "Secure heavy objects and furniture",
                        "Ignore earthquake drills",
                        "Keep windows open during an earthquake",
                        "Store emergency supplies in a tall cabinet"
                    ],
                    correctAnswer: 0
                ),
                (
                    question: "What is an aftershock?",
                    answers: [
                        "A small earthquake that occurs before the main quake",
                        "A large earthquake that follows a smaller one",
                        "A series of smaller earthquakes that follow the main shock",
                        "An earthquake that happens underwater"
                    ],
                    correctAnswer: 2
                ),
                (
                    question: "What should you do after the shaking stops during an earthquake?",
                    answers: [
                        "Immediately leave your home or building",
                        "Check yourself and others for injuries",
                        "Open all windows to ventilate the area",
                        "Resume normal activities"
                    ],
                    correctAnswer: 1
                ),
                (
                    question: "Which region of the world is known as the Ring of Fire and is prone to frequent earthquakes and volcanic activity?",
                    answers: [
                        "The Sahara Desert",
                        "The Arctic Circle",
                        "The Pacific Ring of Fire",
                        "The Amazon Rainforest"
                    ],
                    correctAnswer: 2
                )
    ]
    // Assume that `questionLabel` is a UILabel object that has been configured
    // in your user interface and is connected to your view controller class
    // via an outlet.
    
    func checkAnswer(selectedAnswer: Int) {
        // Compare the selected answer to the correct answer
//        if (selectedAnswer != 0 || selectedAnswer != 1 || selectedAnswer != 2 || selectedAnswer != 3)  {
//            Answer.textColor = UIColor.blue
//            Answer.text = "Please select your Answer to Continue!"
//        }
//       else
        if selectedAnswer == vQuestion.correctAnswer {
            // If the selected answer is correct, display a message to the user
            let darkGreen = UIColor(red: 0.0, green: 0.5, blue: 0.0, alpha: 1.0)
            Answer.textColor = darkGreen
            Answer.text = "Correct Answer!"
            userScore += 5
            scoreLabel.text = "Your Score: \(userScore) / 50"
        } else {
            // If the selected answer is incorrect, display a message to the user
            Answer.textColor = UIColor.red
            Answer.text = "Incorrect. The correct answer is: \(vQuestion.answers[vQuestion.correctAnswer])"
        }
        scoreLabel.text = "Your Score: \(userScore) / 50"
        answerAoutlet.isEnabled = false
        answerBoutlet.isEnabled = false
        answerCoutlet.isEnabled = false
        answerDoutlet.isEnabled = false
        answerSelected = selectedAnswer
    }
    
    func newQuestion() {
        
        answerAoutlet.isEnabled = true
        answerBoutlet.isEnabled = true
        answerCoutlet.isEnabled = true
        answerDoutlet.isEnabled = true
        
        Answer.text = ""
        // update user score on app
    
        if !quizStructure.isEmpty {
            vQuestion = quizStructure.removeFirst()
            // Set the text of the questionLabel to the text of the random question
            questionLabel.text = vQuestion.question
            // set button titles with corresponding answers
            answerAoutlet.isHidden = false
            answerBoutlet.isHidden = false
            answerCoutlet.isHidden = false
            answerDoutlet.isHidden = false
            answerAoutlet.setTitle(vQuestion.answers[0], for: .normal)
            answerBoutlet.setTitle(vQuestion.answers[1], for: .normal)
            answerCoutlet.setTitle(vQuestion.answers[2], for: .normal)
            answerDoutlet.setTitle(vQuestion.answers[3], for: .normal)
            // Now you can safely use `currentQuestion` for your quiz logic
        } else {
            questionLabel.text = "Game Over!"
            if userScore == 50 {
                answerAoutlet.setTitle("Congratulations! You achieved a perfect score!", for: .normal)
            }
            else if (userScore > 30 && userScore < 50) {
                answerAoutlet.setTitle("Good job! You can improve your score by reviewing the 'About,' 'Before & After,' and 'Resources' sections!", for: .normal)
            }
            else
            {
                answerAoutlet.setTitle("Good Try! You can improve your score by reviewing the 'About,' 'Before & After,' and 'Resources' sections! ", for: .normal)
            }
            // set button titles with corresponding answers
            answerAoutlet.backgroundColor = UIColor.systemYellow
            answerBoutlet.isHidden = true
            answerCoutlet.isHidden = true
            answerDoutlet.isHidden = true
            nextQuestionButton.isHidden = true
        }
    }

}


