//
//  UserStatsView.swift
//  TwitterMock
//
//  Created by seydoux on 2022/01/29.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 24) {
            HStack {
                Text("807")
                    .font(.subheadline).bold()
                
                Text("Followings")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            HStack {
                Text("6.7M")
                    .font(.subheadline).bold()
                
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
