//
//  LevelSelectDisabled.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/24.
//

import SwiftUI

struct LevelSelectDisabled: View {
    var body: some View {
        
        Image(systemName: "lock.fill")
            .foregroundColor(Color("onPrimary"))
            .frame(maxWidth: .infinity,minHeight:50)
            .background(.gray)
            .cornerRadius(10)
    }
}

struct LevelSelectDisabled_Previews: PreviewProvider {
    static var previews: some View {
        LevelSelectDisabled()
    }
}
