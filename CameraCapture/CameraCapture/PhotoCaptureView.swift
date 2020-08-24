//
//  PhotoCaptureView.swift
//  CameraCapture
//
//  Created by Kanz on 2020/08/24.
//

import Foundation
import SwiftUI

struct PhotoCaptureView: View {
    @Binding var showImagePicker: Bool
    @Binding var image: Image?
    
    var body: some View {
        ImagePicker(isShown: self.$showImagePicker,
                    image: self.$image)
    }
}
