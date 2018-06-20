//
//  ByvDesignableLoader.swift
//  ByvStyles
//
//  Created by Adrian Apodaca on 7/5/18.
//

import Foundation
import ByvStyles

class ByvDesignableLoader: NSObject {
    static func preLoad() {
        let processInfo = ProcessInfo.processInfo
        let environment = processInfo.environment
        let projectSourceDirectories: String = environment["IB_PROJECT_SOURCE_DIRECTORIES"]!
        var zeplinPath = projectSourceDirectories.replacingOccurrences(of: "Pods", with: "zeplin")
        zeplinPath = zeplinPath.components(separatedBy: ":")[0]
        ByvColors.loadColors(path: zeplinPath + "/Colors.json")
        ByvStyles.loadStyles(path: zeplinPath + "/Styles.json")
    }
}
