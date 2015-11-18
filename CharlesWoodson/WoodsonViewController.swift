//
//  WoodsonViewController.swift
//  CharlesWoodson
//
//  Created by Omar Al-Hayderi on 11/17/15.
//  Copyright © 2015 testy. All rights reserved.
//

import UIKit


class WoodsonViewController: UIViewController, UITextFieldDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    var collectionView: UICollectionView!
    var numImages: Int!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.grayColor()
        // self.modalPresentationStyle = 2
        let prompt: UITextView = UITextView()
        prompt.text = "You asked for " + String(self.numImages) + " Charles Woodsons!"
        prompt.frame = CGRectMake(100,100,200,50)
        prompt.backgroundColor = UIColor.grayColor()
        prompt.editable = false
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 90, height: 120)
        
        collectionView = UICollectionView(frame: CGRectMake(0,200,400,600), collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        collectionView.backgroundColor = UIColor.grayColor()
        self.view.addSubview(collectionView)

        self.view.addSubview(prompt)
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.numImages
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath)
        let woodsonImage: UIImageView = UIImageView()
        woodsonImage.image = UIImage(named: "Image")
        cell.backgroundView = woodsonImage
        return cell
    }
}
