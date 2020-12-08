//
//  DemandVC.swift
//  AayKisan
//
//  Created by Sharjeel Nisar on 08/12/2020.
//

import UIKit

class DemandVC: UIViewController {

    @IBOutlet weak var vContainer: UIView!
    @IBOutlet weak var lblPrompt: UILabel!
    @IBOutlet weak var pVGrade: UITextField!
    @IBOutlet weak var pVQuantity: QuickPickerView!
    @IBOutlet weak var pVUnit: QuickPickerView!
    @IBOutlet weak var pVProductName: QuickPickerView!
    @IBOutlet weak var tVNotes: UITextView!
    
    var isNetworkAvailable = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.configureLayout()
        self.configureData()
    }
    
    func configureLayout() {
        self.pVGrade.applyBorderToView()
        self.pVQuantity.applyBorderToView()
        self.pVUnit.applyBorderToView()
        self.pVProductName.applyBorderToView()
        self.tVNotes.applyBorderToView()
    }
    
    func configureData() {
        
    }

    func resetData() {
        self.pVProductName.text = PlaceHolders.emptyString.rawValue
        self.pVGrade.text = PlaceHolders.emptyString.rawValue
        self.pVQuantity.text = PlaceHolders.emptyString.rawValue
        self.pVUnit.text = PlaceHolders.emptyString.rawValue
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func onBtnCancelPressed(_ sender: Any) {
        self.resetData()
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func onBtnSubmitPressed(_ sender: Any) {
        self.resetData()
        self.dismiss(animated: true, completion: nil)
    }
    
}
extension DemandVC: NetworkStatusListener {
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
