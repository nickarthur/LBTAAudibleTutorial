//
//  PageCell.swift
//  LBTAAudibleTutorial
//
//  Created by Kevin Quisquater on 17/06/2017.
//  Copyright © 2017 Kevin Quisquater. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.image = UIImage(named: Constants.ImageNames.tutorial1)
        iv.clipsToBounds = true
        return iv
    }()
    
    func setupViews() {
        
        addSubview(imageView)
        imageView.anchorToTop(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
