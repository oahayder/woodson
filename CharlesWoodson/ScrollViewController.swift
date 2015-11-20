//
//  ScrollViewController.swift
//  CharlesWoodson
//
//  Created by Omar Al-Hayderi on 11/18/15.
//  Copyright © 2015 testy. All rights reserved.
//

import Foundation
import UIKit

class ScrollViewController: UIViewController {
    var scrollView: UIScrollView!
    var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView = UIImageView(image: UIImage(named: "image.png"))
        
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.backgroundColor = UIColor.blackColor()
        scrollView.contentSize = imageView.bounds.size
        //scrollView.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight
        
        scrollView.addSubview(imageView)
        view.addSubview(scrollView)
    }
}

