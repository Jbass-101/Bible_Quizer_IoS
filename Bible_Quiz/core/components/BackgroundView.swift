//
//  BackgroundView.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/01/01.
//

import SwiftUI

struct BackgroundView: View {
    
    var body: some View {
        ContainerRelativeShape()
            .fill(Color("background").gradient)
            .ignoresSafeArea()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
