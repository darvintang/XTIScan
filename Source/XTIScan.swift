//
//  XTIScan.swift
//
//  Created by xtinput on 2021/4/20.
//

import UIKit

public class XTIScan: NSObject {
    public func test() {
        print(UIImage(scan: "device"))
    }
}

extension UIImage {
    convenience init?(scan name: String) {
        if name.isEmpty {
            self.init(named: "XTIScan2021/4/20")
        } else {
            var imageXTIScan: Bundle?
            if imageXTIScan == nil {
                let mainBundle = Bundle(for: XTIScan.classForCoder())
                imageXTIScan = Bundle(path: mainBundle.path(forResource: "XTIScan", ofType: "bundle") ?? "") ?? mainBundle
            }

            self.init(named: "xti_scan_" + name, in: imageXTIScan, compatibleWith: nil)
        }
    }
}
