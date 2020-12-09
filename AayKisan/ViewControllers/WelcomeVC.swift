//
//  WelcomeVC.swift
//  AayKisan
//
//  Created by Sharjeel Nisar on 09/12/2020.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet weak var btnGetStarted: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func onBtnGetStartedPressed(_ sender: Any) {
        self.performSegue(withIdentifier: Segues.WelcomeToGrow.rawValue, sender: self)
    }
}
