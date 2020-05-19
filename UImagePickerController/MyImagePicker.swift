//
//  MyImagePicker.swift
//  UImagePickerController
//
//  Created by 장민종 on 2020/05/19.
//  Copyright © 2020 장민종. All rights reserved.
//

import SwiftUI

struct MyImagePicker: UIViewControllerRepresentable {
  
    func makeUIViewController(context: UIViewControllerRepresentableContext<MyImagePicker>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<MyImagePicker>) {
        
    }
}

struct MyImagePicker_Previews: PreviewProvider {
    static var previews: some View {
        MyImagePicker()
    }
}
