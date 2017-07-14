//
//  MacroHeader.swift
//  CalledSeed
//
//  Created by  光合种子 on 2016/9/27.
//  Copyright © 2016年  光合种子. All rights reserved.
//

import UIKit
import Foundation

import SwiftyJSON
import Alamofire




let SCREEN_WIDTH = UIScreen.main.bounds.width

let SCREEN_HEIGHT = UIScreen.main.bounds.height

let FIT_WIDTH = UIScreen.main.bounds.width / 375

let FIT_HEIGHT = UIScreen.main.bounds.height / 667


let FONT12 = UIFont.systemFont(ofSize: 12*FIT_WIDTH)

let FONT13 = UIFont.systemFont(ofSize: 13*FIT_WIDTH)
let FONT14 = UIFont.systemFont(ofSize: 14*FIT_WIDTH)

let FONT15 = UIFont.systemFont(ofSize: 15*FIT_WIDTH)
let FONT16 = UIFont.systemFont(ofSize: 16*FIT_WIDTH)

let FONT18 = UIFont.systemFont(ofSize: 18)






func x(object: UIView) ->CGFloat{
    return object.frame.origin.x
}

func y(object: UIView) ->CGFloat{
    return object.frame.origin.y
}

func w(object: UIView) ->CGFloat{
    return object.frame.size.width
}
func h(object: UIView) ->CGFloat{
    return object.frame.size.height
}


func maxY(object: UIView) ->CGFloat{
    return object.frame.maxY
}
func minY(object: UIView) ->CGFloat{
    return object.frame.minY
}
func minX(object: UIView) ->CGFloat{
    return object.frame.minX
}
func maxX(object: UIView) ->CGFloat{
    return object.frame.maxX
}

func midX(object: UIView) ->CGFloat{
    return object.frame.midX
}

func midY(object: UIView) ->CGFloat{
    return object.frame.midY
}




func colorWithHexString (hex:String) -> UIColor {
    
    var cString:String = hex.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines).uppercased()
    if (cString.hasPrefix("#")) {
        cString = (cString as NSString).substring(from: 1)
    }
    
    if (cString.characters.count != 6) {
        return UIColor.gray
    }
    
    let rString = (cString as NSString).substring(to: 2)
    let gString = ((cString as NSString).substring(from: 2) as NSString).substring(to: 2)
    let bString = ((cString as NSString).substring(from: 4) as NSString).substring(to: 2)
    
    var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
    Scanner(string: rString).scanHexInt32(&r)
    Scanner(string: gString).scanHexInt32(&g)
    Scanner(string: bString).scanHexInt32(&b)
    
    
    return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(1))
    
}



// View 圆角和加边框
func ViewBorderRadius(View:UIView, Radius:CGFloat, Width:CGFloat, Color:UIColor)  {
    
    View.layer.cornerRadius = Radius
    
    View.layer.masksToBounds = true
    View.layer.borderWidth = Width
    View.layer.borderColor = Color.cgColor
    
    
}


// View 圆角
func ViewRadius(View:UIView, Radius:CGFloat)  {
    View.layer.cornerRadius = Radius
    View.layer.masksToBounds = true
    
}

//沙河
func synchronizeToSandBox(value:Any , key:String)  {
    
    let defaults = UserDefaults.standard
    
    
    defaults.setValue(value, forKeyPath: key)
    defaults.synchronize()
    
    
    
}

func loadDataFromSandBox(key:String) ->Any {
    let defaults = UserDefaults.standard
    var value = defaults.object(forKey: key)
    
    if value == nil {
        value = ""
    }
    
    return value ?? ""
}

func loadDataFromSandBoxBool(key:String) ->Bool {
    
    let defaults = UserDefaults.standard
    let bo = defaults.bool(forKey: key)
    
    
    return bo
}


func RemovSandBoxBool(key:String) {
    let defaults = UserDefaults.standard
    
    return defaults.removeObject(forKey: key)
}







