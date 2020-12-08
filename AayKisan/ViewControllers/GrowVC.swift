//
//  GrowVC.swift
//  AayKisan
//
//  Created by Sharjeel Nisar on 05/12/2020.
//

import UIKit

class GrowVC: UIViewController {

    @IBOutlet weak var tblVPosts: UITableView!
    
    let cellReuseIdentifier = "PostTableViewCell"
    var isNetworkAvailable = true
    var posts = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.configureLayout()
        self.configureData()
    }
    
    func configureLayout() {
        self.tblVPosts.dataSource = self
        self.tblVPosts.delegate = self
    }
    
    func configureData() {
        self.posts.append(contentsOf: DataManager.mockPosts)
    }

    func presentOptions() {
        
    }
    
    func callHelpline() {
        if let url = URL(string: HelpLineNumbers.AgricultureDepartment.rawValue), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func onBtnCallPressed(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: nil, message: "", preferredStyle: .actionSheet)

        let urdu = UIAlertAction(title: HelpLanguage.Urdu.rawValue, style: .default, handler: { (alert: UIAlertAction!) -> Void in
            self.callHelpline()
        })

        let pothohari = UIAlertAction(title: HelpLanguage.Pothohari.rawValue, style: .default, handler: { (alert: UIAlertAction!) -> Void in
            self.callHelpline()
        })
        
        let punjabi = UIAlertAction(title: HelpLanguage.Punjabi.rawValue, style: .default, handler: { (alert: UIAlertAction!) -> Void in
            self.callHelpline()
        })
        
        let sindhi = UIAlertAction(title: HelpLanguage.Sindhi.rawValue, style: .default, handler: { (alert: UIAlertAction!) -> Void in
            self.callHelpline()
        })
        
        let balochi = UIAlertAction(title: HelpLanguage.Balochi.rawValue, style: .default, handler: { (alert: UIAlertAction!) -> Void in
            self.callHelpline()
        })
        
        let pashto = UIAlertAction(title: HelpLanguage.Pashto.rawValue, style: .default, handler: { (alert: UIAlertAction!) -> Void in
            self.callHelpline()
        })
        
        let kashmiri = UIAlertAction(title: HelpLanguage.Kashmiri.rawValue, style: .default, handler: { (alert: UIAlertAction!) -> Void in
            self.callHelpline()
        })
        
        let balti = UIAlertAction(title: HelpLanguage.Balti.rawValue, style: .default, handler: { (alert: UIAlertAction!) -> Void in
            self.callHelpline()
        })
        
        let sariki = UIAlertAction(title: HelpLanguage.Sariki.rawValue, style: .default, handler: { (alert: UIAlertAction!) -> Void in
            self.callHelpline()
        })
        
        let hindko = UIAlertAction(title: HelpLanguage.Hindko.rawValue, style: .default, handler: { (alert: UIAlertAction!) -> Void in
            self.callHelpline()
        })
        
        let brahvi = UIAlertAction(title: HelpLanguage.Brahvi.rawValue, style: .default, handler: { (alert: UIAlertAction!) -> Void in
            self.callHelpline()
        })
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        {   (result : UIAlertAction) -> Void in
            alertController.dismiss(animated: true, completion: nil)
        }
        
        
        alertController.addAction(urdu)
        alertController.addAction(pothohari)
        alertController.addAction(punjabi)
        alertController.addAction(sindhi)
        alertController.addAction(balochi)
        alertController.addAction(pashto)
        alertController.addAction(kashmiri)
        alertController.addAction(balti)
        alertController.addAction(sariki)
        alertController.addAction(hindko)
        alertController.addAction(brahvi)
        alertController.addAction(cancel)
        
        if let popoverController = alertController.popoverPresentationController {
            popoverController.backgroundColor = .white
            popoverController.barButtonItem = sender
        }
        self.present(alertController, animated: true, completion: nil)
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

extension GrowVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:PostTableViewCell = self.tblVPosts.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! PostTableViewCell
        
        let post = self.posts[indexPath.row]
        cell.post = post
        cell.currentIndexPath = indexPath
        cell.delegate = self
        cell.configureLayout()
        cell.configureData()
        return cell
    }
}

extension GrowVC: UITableViewDelegate {
    
}

extension GrowVC: PostCellDelegate {
    func onBtnCommentPressed(indexPath: IndexPath, comment: String) {
        self.posts[indexPath.row].comments.append(comment)
        self.tblVPosts.reloadData()
    }
}

extension GrowVC: NetworkStatusListener {
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
