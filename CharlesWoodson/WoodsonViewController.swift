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
        //self.view.frame = CGRectMake(75,0,400,600)
        self.view.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.3)
                
        let prompt: UITextView = UITextView()
        prompt.text = "You asked for " + String(self.numImages) + " Charles Woodsons!"
        prompt.frame = CGRectMake(75,100,400,100)
        prompt.editable = false
        
        let button   = UIButton(type: UIButtonType.System) as UIButton
        button.frame = CGRectMake(100, 150, 50, 25)
        button.backgroundColor = UIColor.blackColor()
        button.setTitleColor(UIColor.grayColor(), forState: UIControlState.Normal)
        button.setTitle("Cool!", forState: UIControlState.Normal)
        button.addTarget(self, action: "goButtonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 90, height: 120)
        
        collectionView = UICollectionView(frame: CGRectMake(75,200,340,600), collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        collectionView.backgroundColor = UIColor.whiteColor()

        self.view.addSubview(prompt)
        self.view.addSubview(button)
        self.view.addSubview(collectionView)
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if self.numImages == nil {
            return 0
        }
        return self.numImages
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath)
        let woodsonImage: UIImageView = UIImageView()
        woodsonImage.image = UIImage(named: "Image")
        cell.backgroundView = woodsonImage
        return cell
    }
    
    func goButtonAction(sender:UIButton!)
    {
        self.presentingViewController!.dismissViewControllerAnimated(true, completion: nil)
    }


}
