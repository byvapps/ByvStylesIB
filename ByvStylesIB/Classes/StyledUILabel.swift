//
//  ByvStUILabel.swift
//  ByvStyles
//
//  Created by Adrian Apodaca on 4/5/18.
//

import UIKit
import ByvStyles

@IBDesignable
public class StyledUILabel: UILabel {
    
    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        ByvDesignableLoader.preLoad()
        if let styledText = styledText {
            self.styledText(styledText)
        }
    }

    @IBInspectable var styledText: String? {
        didSet {
            if let styledText = styledText {
                self.styledText(styledText)
            }
        }
    }
}

