//
//  ViewController.swift
//  ScrollViewFun
//
//  Created by Jim Campagno on 6/29/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var mainScrollView: UIScrollView!
    
    var images = [UIImage]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
    mainScrollView.frame = view.frame
        
    images = [#imageLiteral(resourceName: "Anger"), #imageLiteral(resourceName: "Disgust"), #imageLiteral(resourceName: "Fear"), #imageLiteral(resourceName: "Sadness"), #imageLiteral(resourceName: "Joy")]
        
        for i in 0..<images.count {
            
            let imageView = UIImageView()
            imageView.image = images[i]
            imageView.contentMode = .scaleToFill
            let xPos = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPos, y: 0.0, width: self.mainScrollView.frame.width, height: self.mainScrollView.frame.height)
            
            mainScrollView.contentSize.width = mainScrollView.frame.width * CGFloat(i + 1)
            mainScrollView.addSubview(imageView)
            
            
            
        }
        
        
    }

   

}

