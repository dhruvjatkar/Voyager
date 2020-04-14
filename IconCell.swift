//
//  IconCell.swift
//  Voyager
//
//  Created by Dhruv Jatkar on 4/6/20.
//  Copyright © 2020 Dhruv Jatkar. All rights reserved.
//

import SwiftUI


struct IconCell: View {
    var systemIcon: String

    var body: some View {
        Image(systemName: "j1")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 80, height: 100)
            .background(Color.gray)
            .cornerRadius(10)
            .shadow(radius: 10)
        

        
        
    }
}

struct IconCell_Previews: PreviewProvider {
    static var previews: some View {
        IconCell(systemIcon: "j1")
    }
}
