//
//  UserViewModel.swift
//  firstSwiftUI
//
//  Created by 伏貫祐樹 on 2019/11/30.
//  Copyright © 2019 yuki fushinuki. All rights reserved.
//

import SwiftUI

class UsersViewModel: ObservableObject {
    
    @Published var users: [User] = [
        .init(name: "UserName1", email: "info@mail1.com"),
        .init(name: "UserName2", email: "info@mail2.com"),
        .init(name: "UserName3", email: "info@mail3.com")
    ]
    
    func fetchUsers() {
        guard let url = URL(string: Constants.shared.API_URL) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, resp, err) in

            DispatchQueue.main.async {
                do {
                    self.users = try JSONDecoder().decode([User].self, from: data!)
                } catch {
                    print("エラーが発生しました:", error)
                }
            }
            
        }.resume()
    }
    
}
