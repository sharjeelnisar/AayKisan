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
        
    }
    
    func configureData() {
        self.posts.append(contentsOf: DataManager.mockPosts)
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
        //cell.delegate = self
        cell.configureLayout()
        cell.configureData()
        return cell
    }
    
    
}

extension GrowVC: UITableViewDelegate {
    
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
