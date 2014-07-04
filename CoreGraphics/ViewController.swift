//
//  ViewController.swift
//  CoreGraphics
//


import UIKit
import CoreGraphics
class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var testImage=UIImageView()
        
        testImage.frame=CGRectMake(50, 120, 25, 25)
        testImage.image=loadImage()
        
        self.view.addSubview(testImage)
        
        
        
    }
    
    func loadImage()->UIImage
    {
        var testImage:UIImage?=UIImage()
        var onceToken=dispatch_once_t()
        
        dispatch_once(&onceToken, {
            
            UIGraphicsBeginImageContextWithOptions(CGSizeMake(20.0, 13.0),false, 0.0);
            
            UIColor.blackColor().setFill()
            UIBezierPath(rect: CGRectMake(0, 0, 20, 1)).fill()
            UIBezierPath(rect: CGRectMake(0, 5, 20, 1)).fill()
            UIBezierPath(rect: CGRectMake(0, 10, 20, 1)).fill()
            
            UIColor.whiteColor().setFill()
            UIBezierPath(rect: CGRectMake(0, 1, 20, 2))
            UIBezierPath(rect: CGRectMake(0, 6, 20, 2))
            UIBezierPath(rect: CGRectMake(0, 11, 20, 2))
                
            testImage = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();
            
            })
        
        return testImage!
    }
    
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

