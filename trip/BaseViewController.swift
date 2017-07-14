//
//  BaseViewController.swift
//  trip
//
//  Created by  光合种子 on 2017/7/14.
//  Copyright © 2017年 zhangteng709. All rights reserved.
//

import UIKit
import SnapKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white

        
        if (self.navigationController?.viewControllers.count)! <= 1 {
            
            self.navigationController?.navigationBar.isHidden = true
            
        }else {
            
            self.navigationController?.navigationBar.isHidden = false
  
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
