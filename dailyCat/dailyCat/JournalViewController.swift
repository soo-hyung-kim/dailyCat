//
//  JournalViewController.swift
//  dailyCat
//
//  Created by Sally Kim on 2023/11/05.
//

import UIKit

class JournalViewController: UIViewController {
    
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var overallMoodImage: UIImageView!
    
    @IBOutlet weak var waterIcon1: UIImageView!
    @IBOutlet weak var waterIcon2: UIImageView!
    @IBOutlet weak var waterIcon3: UIImageView!
    @IBOutlet weak var waterIcon4: UIImageView!
    @IBOutlet weak var waterIcon5: UIImageView!
    
    @IBOutlet weak var mealIcon1: UIImageView!
    @IBOutlet weak var mealIcon2: UIImageView!
    @IBOutlet weak var mealIcon3: UIImageView!
    
    @IBOutlet weak var moodIcon1: UIImageView!
    @IBOutlet weak var moodIcon2: UIImageView!
    @IBOutlet weak var moodIcon3: UIImageView!
    @IBOutlet weak var moodIcon4: UIImageView!
    @IBOutlet weak var moodIcon5: UIImageView!
    
    @IBOutlet weak var journalLabel: UILabel!
    
    var journal: Journal!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        dayLabel.text = journal.weekday + ", " + journal.day
        
        let water = journal.water
        waterIcon1.image = UIImage(systemName: "drop")
        waterIcon2.image = UIImage(systemName: "drop")
        waterIcon3.image = UIImage(systemName: "drop")
        waterIcon4.image = UIImage(systemName: "drop")
        waterIcon5.image = UIImage(systemName: "drop")
        if water > 1 {
            waterIcon1.image = UIImage(systemName: "drop.fill")
        }
        if water > 2 {
            waterIcon2.image = UIImage(systemName: "drop.fill")
        }
        if water > 3 {
            waterIcon3.image = UIImage(systemName: "drop.fill")
        }
        if water > 4 {
            waterIcon4.image = UIImage(systemName: "drop.fill")
        }
        if water == 5 {
            waterIcon5.image = UIImage(systemName: "drop.fill")
        }
        
        let meal = journal.meal
        mealIcon1.image = UIImage(systemName: "fork.knife.circle")
        mealIcon2.image = UIImage(systemName: "fork.knife.circle")
        mealIcon3.image = UIImage(systemName: "fork.knife.circle")
        if meal > 1 {
            mealIcon1.image = UIImage(systemName: "fork.knife.circle.fill")
        }
        if meal > 2 {
            mealIcon2.image = UIImage(systemName: "fork.knife.circle.fill")
        }
        if meal == 3 {
            mealIcon3.image = UIImage(systemName: "fork.knife.circle.fill")
        }
        
        let mood = journal.mood
        moodIcon1.image = UIImage(systemName: "heart")
        moodIcon2.image = UIImage(systemName: "heart")
        moodIcon3.image = UIImage(systemName: "heart")
        moodIcon4.image = UIImage(systemName: "heart")
        moodIcon5.image = UIImage(systemName: "heart")
        if mood > 1 {
            moodIcon1.image = UIImage(systemName: "heart.fill")
        }
        if mood > 2 {
            moodIcon2.image = UIImage(systemName: "heart.fill")
        }
        if mood > 3 {
            moodIcon3.image = UIImage(systemName: "heart.fill")
        }
        if mood > 4 {
            moodIcon4.image = UIImage(systemName: "heart.fill")
        }
        if mood == 5 {
            moodIcon5.image = UIImage(systemName: "heart.fill")
        }
        
        if journal.write == false {
            journalLabel.text = ""
        } else {
            journalLabel.text = journal.journal
        }
        
        if journal.overall >= 3 {
            overallMoodImage.image = UIImage(named: "happyMood")
        } else {
            overallMoodImage.image = UIImage(named: "sadMood")
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
