//
//  Constanrs.swift
//  firstSwiftUI
//
//  Created by 伏貫祐樹 on 2019/11/30.
//  Copyright © 2019 yuki fushinuki. All rights reserved.
//

import Foundation

struct Constants {
    static let shared = Constants()

    let API_URL: String

    init() {

        self.API_URL = "https://jsonplaceholder.typicode.com/users"

    }
}
