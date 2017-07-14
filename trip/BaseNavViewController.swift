//
//  SecondViewController.swift
//  CalledSeed
//
//  Created by  光合种子 on 2016/9/26.
//  Copyright © 2016年  光合种子. All rights reserved.
//

import UIKit



class BaseNavViewController: UINavigationController {


    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.navigationBar.isTranslucent = false


 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
       // print(self.viewControllers.count)
        if (self.viewControllers.count>=1) {
            
            
            viewController.hidesBottomBarWhenPushed = true
            
        }

        super.pushViewController(viewController, animated: animated)
        
        if (viewController.navigationItem.leftBarButtonItem == nil && self.viewControllers.count > 1) {
            
            viewController.navigationItem.leftBarButtonItem = createBackButton()
            
            viewController.navigationController?.interactivePopGestureRecognizer?.delegate = self as?UIGestureRecognizerDelegate
            
            
        }

        
    }
    
    func createBackButton() -> UIBarButtonItem {
        
        let lefbtn = UIBarButtonItem(image: UIImage.init(named: "left"), style: UIBarButtonItemStyle.done, target: self, action: #selector(BaseNavViewController.onClickBtn(sender:)))
        
        return lefbtn
    }
    


    func onClickBtn(sender: UIButton){

        self.popViewController(animated: true)

    }

    

    
    
    
}

