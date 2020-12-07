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
    @IBOutlet weak var iVPictureHeight: NSLayoutConstraint!
    
    let defaultPictureHeight: CGFloat = 100
    var delegate: PostCellDelegate?
    var post: Post?
    var currentIndexPath: IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configureLayout() {
        self.vContainer.applyCustomShadowEffectToView()
        self.tFComment.applyBorderToView()
    }
    
    func configureData() {
        if let currentPost = self.post {
            self.lblTitle.text = currentPost.title
            if let imageName = currentPost.image {
                if let picture = UIImage(named: imageName) {
                    self.iVPicture.image = UIImage(named: imageName)
                    self.iVPictureHeight.constant = defaultPictureHeight
                } else {
                    self.hidePicture()
                }
            } else {
                hidePicture()
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
            self.delegate?.onBtnCommentPressed(indexPath: self.currentIndexPath!, comment: postComment)
        }
    }
    
    func hidePicture() {
        self.iVPictureHeight.constant = 0.0
    }
}
