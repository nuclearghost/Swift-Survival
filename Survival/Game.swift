//
//  Game.swift
//  Survival
//
//  Created by Mark Meyer on 7/14/14.
//  Copyright (c) 2014 Mark Meyer. All rights reserved.
//

import Foundation

protocol GameProtocol {
    func update()
}

class Game {
    class var sharedInstance: Game {
        struct Singleton {
            static let instance = Game()
        }
        return Singleton.instance
    }
}