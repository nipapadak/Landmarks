//
//  UserData.swift
//  Landmarks
//
//  Created by Nikolaos Papadakis on 6/16/19.
//  Copyright © 2019 Optimal Mobile Solutions Inc. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: BindableObject {
    let didChange = PassthroughSubject<UserData, Never>()
    
    var showFavoritesOnly = false {
        didSet {
            didChange.send(self)
        }
    }
    
    var landmarks = landmarkData {
        didSet {
            didChange.send(self)
        }
    }
}
