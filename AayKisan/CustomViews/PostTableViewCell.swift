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
    
    var post: Post?
    
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
    }
    
    func configureData() {
        if let currentPost = self.post {
            self.lblTitle.text = currentPost.title
            if let imageName = currentPost.image {
                self.iVPicture.image = UIImage(named: imageName)
            }
            if let postComments = currentPost.comments {
                for postComment in postComments {
                    let commentLabel = UILabel()
                    commentLabel.text = postComment
                    self.vStackComments.addSubview(commentLabel)
                }
            }
        }
    }
}
