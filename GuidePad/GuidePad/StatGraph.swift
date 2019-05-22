//
//  StatGraph.swift
//  GuidePad
//
//  Created by Richard Lee on 2019-05-21.
//  Copyright © 2019 HungGo. All rights reserved.
//

import Foundation
import UIKit
import SwiftCharts

class statGraph : UIViewController {
    
    var chartView: BarsChart!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var startAngle = 270*Double.pi/180
        
        //Draw Base Circles
        
        let HPcirclePath = UIBezierPath(arcCenter: CGPoint(x: 66,y: 64), radius: CGFloat(50), startAngle: CGFloat(startAngle), endAngle:CGFloat(startAngle + Double.pi * 2), clockwise: true)
        
        let HPshapeLayer = CAShapeLayer()
        HPshapeLayer.path = HPcirclePath.cgPath
        
        //change the fill color
        HPshapeLayer.fillColor = UIColor.clear.cgColor
        //you can change the stroke color
        HPshapeLayer.strokeColor = UIColor.lightGray.cgColor
        //you can change the line width
        HPshapeLayer.lineWidth = 6
        
        view.layer.addSublayer(HPshapeLayer)
        
        let ATKcirclePath = UIBezierPath(arcCenter: CGPoint(x: 195,y: 64), radius: CGFloat(50), startAngle: CGFloat(startAngle), endAngle:CGFloat(startAngle + Double.pi * 2), clockwise: true)
        
        let ATKshapeLayer = CAShapeLayer()
        ATKshapeLayer.path = ATKcirclePath.cgPath
        
        //change the fill color
        ATKshapeLayer.fillColor = UIColor.clear.cgColor
        //you can change the stroke color
        ATKshapeLayer.strokeColor = UIColor.lightGray.cgColor
        //you can change the line width
        ATKshapeLayer.lineWidth = 6
        
        view.layer.addSublayer(ATKshapeLayer)
        
        let RCVcirclePath = UIBezierPath(arcCenter: CGPoint(x: 323,y: 64), radius: CGFloat(50), startAngle: CGFloat(startAngle), endAngle:CGFloat(startAngle + Double.pi * 2), clockwise: true)
        
        let RCVshapeLayer = CAShapeLayer()
        RCVshapeLayer.path = RCVcirclePath.cgPath
        
        //change the fill color
        RCVshapeLayer.fillColor = UIColor.clear.cgColor
        //you can change the stroke color
        RCVshapeLayer.strokeColor = UIColor.lightGray.cgColor
        //you can change the line width
        RCVshapeLayer.lineWidth = 6
        
        view.layer.addSublayer(RCVshapeLayer)
        
        //Draw Circle Filler
        
        let HParcPath = UIBezierPath(arcCenter: CGPoint(x: 66,y: 64), radius: CGFloat(50), startAngle: CGFloat(startAngle), endAngle:CGFloat(startAngle + Double.pi * 2 * 0.7), clockwise: true)
        
        let HParcShapeLayer = CAShapeLayer()
        HParcShapeLayer.path = HParcPath.cgPath
        
        HParcShapeLayer.fillColor = UIColor.clear.cgColor
        HParcShapeLayer.strokeColor = UIColor(red:0.18, green:0.78, blue:0.42, alpha:1.0).cgColor
        
        HParcShapeLayer.lineWidth = 9.0
        
        view.layer.addSublayer(HParcShapeLayer)
        
        let ATKarcPath = UIBezierPath(arcCenter: CGPoint(x: 195,y: 64), radius: CGFloat(50), startAngle: CGFloat(startAngle), endAngle:CGFloat(startAngle + Double.pi * 2 * 0.7), clockwise: true)
        
        let ATKarcShapeLayer = CAShapeLayer()
        ATKarcShapeLayer.path = ATKarcPath.cgPath
        
        ATKarcShapeLayer.fillColor = UIColor.clear.cgColor
        ATKarcShapeLayer.strokeColor = UIColor(red:0.13, green:0.37, blue:0.71, alpha:1.0).cgColor
        ATKarcShapeLayer.lineWidth = 9.0
        
        view.layer.addSublayer(ATKarcShapeLayer)
        
        let RCVarcPath = UIBezierPath(arcCenter: CGPoint(x: 323,y: 64), radius: CGFloat(50), startAngle: CGFloat(startAngle), endAngle:CGFloat(startAngle + Double.pi * 2 * 0.7), clockwise: true)
        
        let RCVarcShapeLayer = CAShapeLayer()
        RCVarcShapeLayer.path = RCVarcPath.cgPath
        
        RCVarcShapeLayer.fillColor = UIColor.clear.cgColor
        RCVarcShapeLayer.strokeColor = UIColor(red:0.85, green:0.37, blue:0.65, alpha:1.0).cgColor
        RCVarcShapeLayer.lineWidth = 9.0
        
        view.layer.addSublayer(RCVarcShapeLayer)
        
        //Draw Text
        
        
        
    }
    
    
}
