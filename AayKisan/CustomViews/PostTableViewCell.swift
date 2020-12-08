//
//  PostTableViewCell.swift
//  AayKisan
//
//  Created by Sharjeel Nisar on 06/12/2020.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var vContainer: UIView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var iVPicture: UIImageView!
    @IBOutlet weak var vCommentContainer: UIView!
    @IBOutlet weak var vStackComments: UIStackView!
    @IBOutlet weak var tFComment: UITextField!
    @IBOutlet weak var btnComment: UIButton!
    
    let defaultPictureHeight: CGFloat = 100
    var delegate: PostCellDelegate?
    var post: Post?
    var currentIndexPath: IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureLayout() {
        self.selectionStyle = .none
        self.vContainer.applyCustomShadowEffectToView()
        self.tFComment.applyBorderToView()
    }
    
    func configureData() {
        if let currentPost = self.post {
            self.lblTitle.text = currentPost.title
            if let imageName = currentPost.image {
                if let picture = UIImage(named: imageName) {
                    self.iVPicture.image = picture
                }
            } else {
                if let picture = UIImage(named: "logo") {
                    self.iVPicture.image = picture
                }
            }
            for postComment in currentPost.comments {
                let commentLabel = UILabel()
                commentLabel.text = postComment
                self.vStackComments.addSubview(commentLabel)
            }
        }
    }
    
    @IBAction func onBtnCommentPressed(_ sender: Any) {
        if let postComment = self.tFComment.text, !postComment.isEmpty {
            self.tFComment.text = PlaceHolders.emptyString.rawValue
            self.delegate?.onBtnCommentPressed(indexPath: self.currentIndexPath!, comment: postComment)
        }
    }
}
