//
//  ViewController.swift
//  DayfinderHomework
//
//  Created by a.a.mitrofanova on 25/08/2020.
//  Copyright © 2020 mngey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var dayTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
   }
    
    func handleCalculation(){
        let calendar = Calendar.current
        var dateComponent = DateComponents()
        dateComponent.day = Int(dayTextField.text!)
        dateComponent.month = Int(monthTextField.text!)
        dateComponent.year = Int(yearTextField.text!)
        
        let date = calendar.date(from: dateComponent)!
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "lv_LV")
        dateFormatter.dateFormat = "EEEE"
        let weekday = dateFormatter.string(from: date)
        
        resultLabel.text = weekday
        
        
    }
    
    @IBAction func findWeekDayTapped(_ sender: Any) {
        handleCalculation()
    }
    
}

