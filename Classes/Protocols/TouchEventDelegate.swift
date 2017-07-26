//
//  TouchEventDelegate.swift
//  ScrollableGraphVIewSample
//
//  Created by MitaRyosuke on 2017/07/11.
//  Copyright © 2017年 MitaRyosuke. All rights reserved.
//

import Foundation
import UIKit

protocol TouchEventDelegate {
    func touchBegan(location: CGPoint, plotIdentifier: String, index: Int)
    func touchMoved(location: CGPoint, newValue: Double)
    func touchEnded()
    func longPressed(location: CGPoint, plotIdentifier: String, index: Int)
}
