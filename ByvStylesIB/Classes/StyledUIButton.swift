//
//  StyledUIButton.swift
//  ByvStyles
//
//  Created by Adrian Apodaca on 7/5/18.
//

import UIKit
import ByvStyles

@IBDesignable
public class StyledUIButton: UIButton {

    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        ByvDesignableLoader.preLoad()
        if let styledTitle = styledTitle {
            self.styledTitle(styledTitle)
        }
    }
    
    @IBInspectable var styledTitle: String? {
        didSet {
            if let styledTitle = styledTitle {
                self.styledTitle(styledTitle)
            }
        }
    }
    
    @IBInspectable var bgColor: String? {
        didSet {
            if let bgColor = bgColor {
                self.bgColorName(bgColor)
            }
        }
    }
    
    @IBInspectable var tintName: String? {
        didSet {
            if let tintName = tintName {
                self.tintName(tintName)
            }
        }
    }
    
    @IBInspectable public var borderColor: String? {
        didSet {
            if let colorStr = borderColor, let color = ByvColors.named(colorStr) {
                layer.borderColor = color.cgColor
            } else {
                layer.borderColor = UIColor.clear.cgColor
            }
        }
    }
    
    @IBInspectable public var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable public var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable public var shadowColor: String? {
        didSet {
            if let colorStr = shadowColor, let color = ByvColors.named(colorStr) {
                layer.shadowColor = color.cgColor
            } else {
                layer.shadowColor = UIColor.clear.cgColor
            }
        }
    }
    
    @IBInspectable public var shadowRadius: CGFloat = 0 {
        didSet {
            layer.shadowRadius = shadowRadius
        }
    }
    
    @IBInspectable public var shadowOpacity: CGFloat = 0 {
        didSet {
            layer.shadowOpacity = Float(shadowOpacity)
        }
    }
    
    @IBInspectable public var shadowOffsetY: CGFloat = 0 {
        didSet {
            layer.shadowOffset.height = shadowOffsetY
        }
    }
    
}
