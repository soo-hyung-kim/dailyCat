//
//  JournalCell.swift
//  dailyCat
//
//  Created by Sally Kim on 2023/11/05.
//

import UIKit

class JournalCell: UITableViewCell {
    
    @IBOutlet weak var dayLabel: UILabel!
    
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
    
    @IBOutlet weak var journalIcon: UIImageView!
    
    @IBOutlet weak var overallMoodImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
