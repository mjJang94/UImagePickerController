//
//  MyImagePicker.swift
//  UImagePickerController
//
//  Created by 장민종 on 2020/05/19.
//  Copyright © 2020 장민종. All rights reserved.
//

import SwiftUI
import UIKit

struct MyImagePicker: UIViewControllerRepresentable {
    
    @Binding var imagePickerVisible: Bool
    @Binding var selectedImage: Image?
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<MyImagePicker>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<MyImagePicker>) {
        
    }
    
    func makeCoordinator() -> Coordinator {
           return Coordinator(imagePickerVisible: $imagePickerVisible, selectedImage: $selectedImage)
       }
    

}

//struct MyImagePicker_Previews: PreviewProvider {
//    static var previews: some View {
//        MyImagePicker()
//    }
//}
