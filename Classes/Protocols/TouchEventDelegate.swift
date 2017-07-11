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
    func touchBegan(plotIdentifier: String, index: Int)
    func touchMoved(newValue: Double)
    func touchEnded()
}
