//
//  BudgetViewController.swift
//  dailyCat
//
//  Created by Sally Kim on 2023/11/05.
//

import UIKit

class BudgetViewController: UIViewController {
    
    
    @IBOutlet weak var animatedCountingLabel: UILabel!
    
    var circularProgressBarView: CircularProgressBarView!
    var circularViewDuration: TimeInterval = 2

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setUpCircularProgressBarView()
    }
    
    func setUpCircularProgressBarView() {
            // set view
            circularProgressBarView = CircularProgressBarView(frame: .zero)
            // align to the center of the screen
            circularProgressBarView.center = view.center
            // call the animation with circularViewDuration
            circularProgressBarView.progressAnimation(duration: circularViewDuration)
            // add this view to the view controller
            view.addSubview(circularProgressBarView)
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
