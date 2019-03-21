//
//  ViewController.swift
//  AutoLayoutScrollView
//
//  Created by john.lin on 2019/3/21.
//  Copyright © 2019年 john.lin. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    lazy var scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.contentInsetAdjustmentBehavior = .never
        return scroll
    }()
    
    lazy var firstImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "新聞圖")
        return image
    }()

    lazy var secondImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "上一個")
        return image
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        self.view.addSubview(scrollView)
        scrollView.snp.makeConstraints({
            $0.top.bottom.leading.trailing.equalToSuperview()

        })

        let contentView = UIView()
        self.scrollView.addSubview(contentView)
        contentView.snp.makeConstraints({
            $0.top.bottom.equalToSuperview()
            $0.width.equalToSuperview()
        })
        
        contentView.addSubview(firstImage)
        firstImage.snp.makeConstraints({
            $0.top.leading.trailing.equalToSuperview()
            $0.height.equalTo(500)
        })
        
        contentView.addSubview(secondImage)
        secondImage.snp.makeConstraints({
            $0.top.equalTo(firstImage.snp.bottom)
            $0.leading.bottom.trailing.equalToSuperview()
            $0.height.equalTo(500)
        })
    }
}

