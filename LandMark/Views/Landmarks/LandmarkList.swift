//
//  LandmarkList.swift
//  LandMark
//
//  Created by Gao on 2022/7/9.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFivoriteOnly = false
    
    var filteredLandmarks: [LandMark] {
        modelData.landmarks.filter { landmark in
            (!showFivoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        
        NavigationView {
            List {
                Toggle(isOn: $showFivoriteOnly) {
                    Text("Favorite only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    }label: {
                        LandmarkRow(landmark: landmark)
                    }
                    
                }
                .listRowInsets(EdgeInsets())
            }
//            .listStyle(PlainListStyle())
            .navigationTitle("Landmarks")
            .navigationBarTitleDisplayMode(.large)
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList().environmentObject(ModelData())
    }
}
