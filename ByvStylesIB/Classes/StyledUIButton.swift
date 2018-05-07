//
//  StyledUIButton.swift
//  ByvStyles
//
//  Created by Adrian Apodaca on 7/5/18.
//

import UIKit

@IBDesignable
class StyledUIButton: UIButton {

    override func prepareForInterfaceBuilder() {
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
    
}
