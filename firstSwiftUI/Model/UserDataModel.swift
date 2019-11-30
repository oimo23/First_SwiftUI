//
//  UserDataModel.swift
//  firstSwiftUI
//
//  Created by 伏貫祐樹 on 2019/11/30.
//  Copyright © 2019 yuki fushinuki. All rights reserved.
//

import Foundation

struct User: Identifiable, Decodable {
    let id = UUID()
    let name: String
    let email: String
}
