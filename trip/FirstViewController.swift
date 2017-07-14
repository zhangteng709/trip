//
//  FirstViewController.swift
//  trip
//
//  Created by zhangteng709 on 17/7/13.
//  Copyright © 2017年 zhangteng709. All rights reserved.
//

import UIKit

class FirstViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        let imageview = UIImageView.init(image: #imageLiteral(resourceName: "home_background"))
        
        self.view.addSubview(imageview)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

