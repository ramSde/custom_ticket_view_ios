//
//  custom_pass_view.swift
//  custom_pass_view_ios
//
//  Created by Zignuts Tchnolab on 04/06/24.
//

import Foundation
import UIKit
class BoardingPassView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    func setupView() {
        
        let path: UIBezierPath = getPath()
        
        let shape = CAShapeLayer()
        shape.path = path.cgPath
        shape.lineWidth = 2.0
        shape.strokeColor = UIColor.white.cgColor
        shape.fillColor = UIColor.clear.cgColor
        
        let gradient = CAGradientLayer ()

        gradient.frame = CGRect(x:

        path.bounds.origin.x, y:

        path.bounds.origin.y, width:

        path.bounds.width, height:

        path.bounds.height)

        gradient.colors = [
            CGColor(red: 86/255, green: 98/255, blue: 100/255, alpha: 1)
        ,CGColor(red: 152/255, green: 167/255, blue: 168/255, alpha: 1)
            ]
        let shapeMask = CAShapeLayer ()
        shapeMask.path = path.cgPath
        gradient.mask = shapeMask
        gradient.bounds = path.bounds
        self.layer.addSublayer(gradient)
        self.layer.addSublayer(shape)
    }
    
    func getPath() -> UIBezierPath {
        let path: UIBezierPath = UIBezierPath()
        
        path.move(to: CGPoint(x: 50, y: 10))
        
        //Top Edge
        path.addLine(to: CGPoint(x: 260, y: 10))
        
        //Right Top Curve
        path.addArc(withCenter: CGPoint(x: 260, y: 50), radius: 40, startAngle: CGFloat(Double.pi/2 * 3), endAngle: 0, clockwise: true)
        
        //Right Edge
        path.addLine(to: CGPoint(x: 300, y: 300))
        
        //Semicircle on Right Edge
        path.addArc(withCenter: CGPoint(x: 300, y: 320), radius: 14, startAngle: CGFloat(Double.pi/2 * 3), endAngle: CGFloat(Double.pi/2), clockwise: false)
        
        //Right Edge second half
        path.addLine(to: CGPoint(x: 300, y: 450))
        
        //Right bottom curve
        path.addArc(withCenter: CGPoint(x: 260, y: 450), radius: 40, startAngle: CGFloat(0), endAngle: CGFloat(Double.pi/2), clockwise: true)
        
        //Bottom Edge
        path.addLine(to: CGPoint(x: 50, y: 490))
        
        //Left bottom curve
        path.addArc(withCenter: CGPoint(x: 50, y: 450), radius: 40, startAngle: CGFloat(Double.pi/2), endAngle: CGFloat(Double.pi), clockwise: true)
        
        //Left second half
        path.addLine(to: CGPoint(x: 10, y: 340))
        
        //Semicircle on left edge
        path.addArc(withCenter: CGPoint(x: 10, y: 320), radius: 14, startAngle: CGFloat(Double.pi/2), endAngle: CGFloat(Double.pi/2 * 3), clockwise: false)
        
        //Left Edge
        path.addLine(to: CGPoint(x: 10, y: 50))
        
        //Left Top Curve
        path.addArc(withCenter: CGPoint(x: 50, y: 50), radius: 40, startAngle: CGFloat(Double.pi), endAngle: CGFloat(Double.pi/2 * 3), clockwise: true)
        
        //Moving to the semicircle
        path.move(to: CGPoint(x: 24, y: 320))
        
        //Line from left semicircle to right
        path.addLine(to: CGPoint(x: 286, y: 320))
        
        path.close()
        return path
    }
}
