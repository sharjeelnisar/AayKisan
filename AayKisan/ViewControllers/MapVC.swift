//
//  MapVC.swift
//  AayKisan
//
//  Created by Sharjeel Nisar on 10/12/2020.
//

import UIKit

class MapVC: UIViewController {

    @IBOutlet weak var vContainer: UIView!
    @IBOutlet weak var iVMap: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.configureLayout()
        self.configureData()
    }
    
    func configureLayout() {
        self.vContainer.applyCustomShadowEffectToView()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(MapVC.handleTap(_:)))
        tapGesture.delegate = self
        tapGesture.numberOfTapsRequired = 1
        self.iVMap.addGestureRecognizer(tapGesture)
    }
    
    func configureData() {
        
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == Segues.MapToProductDetail.rawValue) {
            if let destinationVC = segue.destination as? ProductDetailVC {
                destinationVC.currentProduct = DataManager.vegetables[0]
            }
        }
    }

}

extension MapVC: UIGestureRecognizerDelegate {
    @objc func handleTap(_ gesture: UITapGestureRecognizer){
        self.performSegue(withIdentifier: Segues.MapToProductDetail.rawValue, sender: self)
    }
}
