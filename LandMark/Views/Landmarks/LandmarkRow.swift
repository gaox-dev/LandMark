//
//  LandmarkRow.swift
//  LandMark
//
//  Created by Gao on 2022/7/9.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: LandMark
    
    var body: some View {
        HStack{
//            AsyncImage(url: URL(string: landmark.icon)){image in
//                image .resizable()
//            }placeholder: {
//                ProgressView()
//            }
            
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
            
            
        }
        .padding(.trailing, 5)
        
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        Group{
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
        
    }
}
