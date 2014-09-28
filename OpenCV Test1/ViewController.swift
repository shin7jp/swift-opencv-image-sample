//
//  ViewController.swift
//  OpenCV Test1
//
//  Created by Shin on 2014/07/19.
//  Copyright (c) 2014年 shin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageData: UIImageView?
    
    @IBAction func ImageProcessButton(sender: AnyObject) {
        var image = imageData?.image
        var edgeImage = OpenCV2.DetectEdgeWithImage(image);
        
        imageData?.image = edgeImage;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

