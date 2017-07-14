//
//  FirstViewController.swift
//  trip
//
//  Created by zhangteng709 on 17/7/13.
//  Copyright © 2017年 zhangteng709. All rights reserved.
//

import UIKit


class ATViewController: BaseViewController {

    let tableview = ATTableView.init(frame: UIScreen.main.bounds, style: UITableViewStyle.plain)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        initUI()

        
        
    }

    
    func initUI() {
        
        let imageview = UIImageView.init(image: #imageLiteral(resourceName: "home_background"))
        self.view.addSubview(imageview)
        imageview.snp.makeConstraints { (make) in
            make.centerX.equalTo(view.snp.centerX)
            make.top.equalTo(view.snp.top)
        }
        
        
        view.addSubview(tableview)

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

