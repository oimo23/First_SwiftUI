//
//  ContentView.swift
//  firstSwiftUI
//
//  Created by 伏貫祐樹 on 2019/11/30.
//  Copyright © 2019 yuki fushinuki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var usersVM = UsersViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(usersVM.users) { user in
                        HStack {
                            Text(user.name)
                                .font(.system(size: 20))
                                .fontWeight(.semibold)
                            Spacer()
                            
                        }.padding(.bottom, 4)
                        Text("Email: \(user.email)")
                        .padding(.bottom, 16)
                    }
                }.padding(.horizontal, 22)
                    .padding(.top, 8)
                
                
                }.navigationBarTitle("Users")
            .navigationBarItems(trailing: Button(action: {
                print("Fetching json data")
                
                self.usersVM.fetchUsers()
                
            }, label: {
                Text("Fetch Users")
            }))
        }
    }
}
