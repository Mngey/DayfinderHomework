//
//  InfoViewController.swift
//  DayfinderHomework
//
//  Created by a.a.mitrofanova on 27/08/2020.
//  Copyright © 2020 mngey. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var appInfoLabel: UILabel!
    @IBOutlet weak var appDescLabel: UILabel!
    
    var infoText = String()
    let appDescText = "This app is a learning project \nof Xcode. It has a light and a dark mode."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appDescLabel.text = appDescText
        
        if !infoText.isEmpty{
            appInfoLabel.text = infoText
        }
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {self.dismiss(animated: true, completion: nil)
    }
    
  
}
