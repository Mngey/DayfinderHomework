//
//  AppearanceViewController.swift
//  DayfinderHomework
//
//  Created by a.a.mitrofanova on 27/08/2020.
//  Copyright © 2020 mngey. All rights reserved.
//

import UIKit

class AppearanceViewController: UIViewController {
   
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
setLabelText()
    
    }
    
    @IBAction func openSettingsTapped(_ sender: Any) {
        guard let settingsURL = URL(string: UIApplication.openSettingsURLString) else {
            return
        }
        
        if UIApplication.shared.canOpenURL(settingsURL){
            UIApplication.shared.open(settingsURL, options: [:]) { (success) in
                print(success)
            }
        }
    }
    
    func setLabelText(){
        var text = "Oops, don't recognize style"
        
        if self.traitCollection.userInterfaceStyle == .dark {
            text = "Dark mode on. \nGo to settings if you want \nto change to light"
        }else{
            text = "Light mode on. \nGo to settings if you want \nto change to dark"
        }
        textLabel.text = text
    }
}//class end

extension AppearanceViewController {
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setLabelText()
    }
}
