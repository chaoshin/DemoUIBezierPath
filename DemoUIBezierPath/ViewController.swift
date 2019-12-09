//
//  ViewController.swift
//  DemoUIBezierPath
//
//  Created by Chao Shin on 2019/12/9.
//  Copyright © 2019 Chao Shin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundView = UIView(frame: CGRect(x: 0, y: 0, width: 180, height: 180))
        backgroundView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
       
        let leftHandPath = UIBezierPath(ovalIn: CGRect(x: 110, y: 130, width: 20, height: 20))
        let rightHandPath = UIBezierPath(ovalIn: CGRect(x: 32, y: 130, width: 20, height: 20))
        let handShape = CAShapeLayer()
        leftHandPath.append(rightHandPath)
        handShape.path = leftHandPath.cgPath
        handShape.fillColor = UIColor(red: 174/255, green: 218/255, blue: 244/255, alpha: 1).cgColor
        backgroundView.layer.addSublayer(handShape)
        
        let degree : CGFloat = CGFloat.pi / 180
        let leftEarPath = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 60, height: 60))
        let rightEarPath = UIBezierPath(ovalIn: CGRect(x: 105, y: 0, width: 60, height: 60))
        let earShape = CAShapeLayer()
        leftEarPath.append(rightEarPath)
        earShape.path = leftEarPath.cgPath
        earShape.fillColor = UIColor(red: 65/255, green: 65/255, blue: 65/255, alpha: 1).cgColor
        backgroundView.layer.addSublayer(earShape)
        
        let upHeadPath = UIBezierPath(arcCenter: CGPoint(x: 81, y: 100), radius: 65, startAngle: degree * 0, endAngle: degree * 180, clockwise: false)
        let downHeadPath = UIBezierPath()
        let downHeadPoint = CGPoint(x: 16, y: 100)
        downHeadPath.move(to: downHeadPoint)
        downHeadPath.addQuadCurve(to: CGPoint(x: 81, y: 150), controlPoint: CGPoint(x: 23, y: 150))
        downHeadPath.addQuadCurve(to: CGPoint(x: 146, y: 100), controlPoint: CGPoint(x: 142, y: 150))
        
        let headShape = CAShapeLayer()
        upHeadPath.append(downHeadPath)
        headShape.path = upHeadPath.cgPath
        headShape.fillColor = UIColor(red: 65/255, green: 65/255, blue: 65/255, alpha: 1).cgColor
        backgroundView.layer.addSublayer(headShape)
        
        let facePath = UIBezierPath()
        let facePoint = CGPoint(x: 83, y: 61)
        facePath.move(to: facePoint)
        facePath.addQuadCurve(to: CGPoint(x: 101, y: 54), controlPoint: CGPoint(x: 91, y: 53))
        facePath.addQuadCurve(to: CGPoint(x: 129, y: 87), controlPoint: CGPoint(x: 126, y: 56))
        facePath.addLine(to: CGPoint(x: 129, y: 106))
        facePath.addQuadCurve(to: CGPoint(x: 129, y: 130), controlPoint: CGPoint(x: 141, y: 114))
        facePath.addQuadCurve(to: CGPoint(x: 34, y: 130), controlPoint: CGPoint(x: 85, y: 168))
        facePath.addQuadCurve(to: CGPoint(x: 37, y: 106), controlPoint: CGPoint(x: 24, y: 114))
        facePath.addLine(to: CGPoint(x: 37, y: 87))
        facePath.addQuadCurve(to: CGPoint(x: 65, y: 54), controlPoint: CGPoint(x: 39, y: 56))
        facePath.addQuadCurve(to: CGPoint(x: 83, y: 61), controlPoint: CGPoint(x: 73, y: 53))
        
        let faceShape = CAShapeLayer()
        faceShape.path = facePath.cgPath
        faceShape.fillColor = UIColor(red: 251/255, green: 203/255, blue: 165/255, alpha: 1).cgColor
        backgroundView.layer.addSublayer(faceShape)
       
        let nosePath = UIBezierPath(ovalIn: CGRect(x: 74, y: 111, width: 17, height: 13))
        let rightEyePath = UIBezierPath(ovalIn: CGRect(x: 52, y: 98, width: 15, height: 20))
        let leftEyePath = UIBezierPath(ovalIn: CGRect(x: 97, y: 98, width: 15, height: 20))
        let eyeShape = CAShapeLayer()
        nosePath.append(rightEyePath)
        nosePath.append(leftEyePath)
        eyeShape.path = nosePath.cgPath
        eyeShape.fillColor = UIColor(red: 65/255, green: 65/255, blue: 65/255, alpha: 1).cgColor
        backgroundView.layer.addSublayer(eyeShape)
        
        backgroundView.center = view.center
        view.addSubview(backgroundView)        
        // Do any additional setup after loading the view.
    }
}

