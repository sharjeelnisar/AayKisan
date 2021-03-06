//
//  MoreVC.swift
//  AayKisan
//
//  Created by Sharjeel Nisar on 05/12/2020.
//

import UIKit

class MoreVC: UIViewController {

    @IBOutlet weak var vContainer: UIView!
    @IBOutlet weak var vProfile: UIView!
    @IBOutlet weak var vSettings: UIView!
    @IBOutlet weak var vTutorials: UIView!
    @IBOutlet weak var vAboutUs: UIView!
    @IBOutlet weak var vPrivacyPolicy: UIView!
    @IBOutlet weak var vTermsOfService: UIView!
    
    var isNetworkAvailable = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.configureLayout()
        self.configureData()
    }
    
    func configureLayout() {
        self.vProfile.applyCustomShadowEffectToView()
        self.vSettings.applyCustomShadowEffectToView()
        self.vTutorials.applyCustomShadowEffectToView()
        self.vAboutUs.applyCustomShadowEffectToView()
        self.vPrivacyPolicy.applyCustomShadowEffectToView()
        self.vTermsOfService.applyCustomShadowEffectToView()
    }
    
    func configureData() {
        
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
extension MoreVC: NetworkStatusListener {
    func networkStatusDidChange(status: Reachability.NetworkStatus) {
        switch status {
        case .notReachable:
            DispatchQueue.main.async {
                self.isNetworkAvailable = false
            }
        case .reachableViaWiFi:
            DispatchQueue.main.async {
                self.isNetworkAvailable = true
            }
        case .reachableViaWWAN:
            DispatchQueue.main.async {
                self.isNetworkAvailable = true
            }
        }
    }
}
