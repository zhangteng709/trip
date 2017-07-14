//
//  TripTableView.swift
//  trip
//
//  Created by  光合种子 on 2017/7/14.
//  Copyright © 2017年 zhangteng709. All rights reserved.
//

import UIKit

class ATTableView: UITableView {

    static let queryidenfier = "queryidenfier"

    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        
        self.dataSource = self
        self.delegate = self
        self.showsVerticalScrollIndicator = false
        self.separatorStyle = .none
        
        self.register(ATQuerycell.self, forCellReuseIdentifier: ATTableView.queryidenfier)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension ATTableView:UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        
        return 455 * FIT_WIDTH
    }
}

extension ATTableView:UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: ATTableView.queryidenfier, for: indexPath)
        
        return cell
    }
    
    
}









//MARK:- queryCell


class ATQuerycell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        
        initUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initUI()  {
        
        contentView.addSubview(imageCarouseView)
        imageCarouseView.snp.makeConstraints { (make) in
            make.top.left.right.equalToSuperview()
            make.height.equalTo(contentView.snp.height).multipliedBy(0.3333)
            
        }
        contentView.addSubview(queryView)
        queryView.snp.makeConstraints { (make) in
            make.top.left.right.equalToSuperview()
            make.height.equalTo(contentView.snp.height).multipliedBy(0.3333)
            
        }
        
        
    }
    
    lazy var imageCarouseView:UIImageView = {
        let imageview = UIImageView.init()
        
        imageview.image = #imageLiteral(resourceName: "zx_home_placeHolder")
        
        return imageview
    }()
    
    
    lazy var queryView:QueryView = {
        
       let view = QueryView.init()
        
        return view
        
    }()
    
    
    
    
}


class QueryView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let view = Bundle.main.loadNibNamed("QueryView", owner: nil, options: nil)?.first as? UIView
        
        if (view != nil) {

            self.addSubview(view!)
        }
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
    
}




