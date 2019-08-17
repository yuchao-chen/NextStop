//
//  Route.swift
//  NextStop
//
//  Created by Yuchao CHEN on 17/8/19.
//  Copyright © 2019 Yuchao CHEN. All rights reserved.
//

import Foundation

// The Route of public transport in victoria
// transportName: the name of train/bus
// stops: all the stations it will stops at, from starting station to the destination station.
//        Hence the count of stops should not be less than 2, and the first and last element cannot be the same.
class Route {
    // MARK: Properties
    var transportName: String
    var stops: [String]
    
    // MARK: Initialization
    init?(transportName: String, stops: [String]) {
        if transportName.isEmpty || stops.count < 2 || stops.first == stops.last {
            return nil
        }
        self.transportName = transportName
        self.stops = stops
    }
}
