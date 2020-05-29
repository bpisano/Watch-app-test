//
//  Segmentable.swift
//  Watch app test WatchKit Extension
//
//  Created by Benjamin Pisano on 29/05/2020.
//  Copyright © 2020 Snopia. All rights reserved.
//

import UIKit

protocol Segmentable: Identifiable, Equatable {
    
    var id: String { get }
    var title: String { get }

}
