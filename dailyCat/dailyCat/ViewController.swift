//
//  ViewController.swift
//  dailyCat
//
//  Created by Sally Kim on 2023/11/04.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "JournalCell", for: indexPath) as! JournalCell

        let journal = journals[indexPath.row]
        
        cell.dayLabel.text = journal.weekday + ", " + journal.day
        
        let water = journal.water
        cell.waterIcon1.image = UIImage(systemName: "drop")
        cell.waterIcon2.image = UIImage(systemName: "drop")
        cell.waterIcon3.image = UIImage(systemName: "drop")
        cell.waterIcon4.image = UIImage(systemName: "drop")
        cell.waterIcon5.image = UIImage(systemName: "drop")
        if water > 1 {
            cell.waterIcon1.image = UIImage(systemName: "drop.fill")
        }
        if water > 2 {
            cell.waterIcon2.image = UIImage(systemName: "drop.fill")
        }
        if water > 3 {
            cell.waterIcon3.image = UIImage(systemName: "drop.fill")
        }
        if water > 4 {
            cell.waterIcon4.image = UIImage(systemName: "drop.fill")
        }
        if water == 5 {
            cell.waterIcon5.image = UIImage(systemName: "drop.fill")
        }
        
        let meal = journal.meal
        cell.mealIcon1.image = UIImage(systemName: "fork.knife.circle")
        cell.mealIcon2.image = UIImage(systemName: "fork.knife.circle")
        cell.mealIcon3.image = UIImage(systemName: "fork.knife.circle")
        if meal > 1 {
            cell.mealIcon1.image = UIImage(systemName: "fork.knife.circle.fill")
        }
        if meal > 2 {
            cell.mealIcon2.image = UIImage(systemName: "fork.knife.circle.fill")
        }
        if meal == 3 {
            cell.mealIcon3.image = UIImage(systemName: "fork.knife.circle.fill")
        }
        
        let mood = journal.mood
        cell.moodIcon1.image = UIImage(systemName: "heart")
        cell.moodIcon2.image = UIImage(systemName: "heart")
        cell.moodIcon3.image = UIImage(systemName: "heart")
        cell.moodIcon4.image = UIImage(systemName: "heart")
        cell.moodIcon5.image = UIImage(systemName: "heart")
        if mood > 1 {
            cell.moodIcon1.image = UIImage(systemName: "heart.fill")
        }
        if mood > 2 {
            cell.moodIcon2.image = UIImage(systemName: "heart.fill")
        }
        if mood > 3 {
            cell.moodIcon3.image = UIImage(systemName: "heart.fill")
        }
        if mood > 4 {
            cell.moodIcon4.image = UIImage(systemName: "heart.fill")
        }
        if mood == 5 {
            cell.moodIcon5.image = UIImage(systemName: "heart.fill")
        }
        
        if journal.write == false {
            cell.journalIcon.image = UIImage(systemName: "square.and.pencil.circle")
        } else {
            cell.journalIcon.image = UIImage(systemName: "square.and.pencil.circle.fill")
        }
        
        if journal.overall >= 3 {
            cell.overallMoodImage.image = UIImage(named: "happyMood")
        } else {
            cell.overallMoodImage.image = UIImage(named: "sadMood")
        }
        
        return cell
    }
    
    @IBOutlet weak var journalTableView: UITableView!
    
    private var journals: [Journal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        writeEntries()
        
        journalTableView.dataSource = self
    }
    
    func writeEntries() {
        let sun = Journal(weekday: "Sunday", day: "Oct 29, 2023", water: 3, meal: 1, mood: 2, write: false, journal: "", overall: 3)
        
        let mon = Journal(weekday: "Monday", day: "Oct 30, 2023", water: 2, meal: 2, mood: 1, write: true, journal: "My 8:30 am class was rough but the second class was fun", overall: 2)
        
        let tue = Journal(weekday: "Tuesday", day: "Oct 31, 2023", water: 0, meal: 3, mood: 2, write: true, journal: "Feeling tired... Have to go to classes, office hours, and then dinner", overall: 2)
        
        let wed = Journal(weekday: "Wednesday", day: "Nov 1, 2023", water: 0, meal: 2, mood: 3, write: false, journal: "", overall: 2)
        
        let thu = Journal(weekday: "Thursday", day: "Nov 2, 2023", water: 1, meal: 2, mood: 1, write: true, journal: "I went to MIT for my class and I got boba yum", overall: 1)
        
        let fri = Journal(weekday: "Friday", day: "Nov 3, 2023", water: 4, meal: 1, mood: 4, write: false, journal: "", overall: 3)
        
        let sat = Journal(weekday: "Saturday", day: "Nov 4, 2023", water: 5, meal: 3, mood: 5, write: true, journal: "It's the weekend! Slept in but my piled up psets :(", overall: 5)
        
        self.journals = [sun, mon, tue, wed, thu, fri, sat]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let selectedIndexPath = journalTableView.indexPathForSelectedRow else { return }
        
        let selectedEntry = journals[selectedIndexPath.row]
        
        guard let journalViewController = segue.destination as? JournalViewController else { return }
        
        journalViewController.journal = selectedEntry
    }


}

