# UImagePickerController
- 이 클래스는 사용자 디바이스의 사진 라이브러리에서 이미지를 찾아 선택할 수 있도록 하는 데 사용되며, 현재 SwiftUI 내에서는 없는 기능이다.   
ios 앱의 커스텀 뷰 컨트롤러처럼 UIImagePickerController는 UIViewController의 하위 클래스이므로 UIViewControllerRepresentable과 함께 사용하여 SwiftUI에 통합할 수 있다.   

# ContentView 설계하기
- VStack은 MyImagePicker 뷰의 인스턴스와 함께 ZStack에 포함될 것이다. 버튼을 클릭하면 이미지를 선택할 수 있도록 MyImagePicker 뷰가 VStack 위로 표시될 것이다.   
이미지를 선택하면 이미지 피커는 뷰에서 사라지며, 선택된 이미지가 Image 뷰에 표시된다.   
이를 위해 두 개의 상태 프로퍼티 변수가 사용되는데, 하나는 표시될 이미지를 위해 존재하고 다른 하나는 이미지 피커 뷰가 현재 표시되는지를 제어하는 불리언값이다.

# MyImagePicker 완성하기
- MyImagePicker 파일을 완성하기 위해선 두 개의 ContentView 상태 프로퍼티에 대한 바인딩을 선언해야한다.   
그리고 코디네이터를 UIImagePickerView 인스턴스에 대한 델리게이트로 동작하도록 구현해야 한다.   
코디네이터 클래스는 UINavigationControllerDelegate 프로토콜과 UIImagePickerControllerDelegate 프로토콜 모두를 따라야 한다.   
그리고 이미지가 선택되거나 사용자가 취소 버튼을 눌렀을 때 알림을 받아야 하므로 imagePickerControllerDidCancel 델리게이트 메소드와 didFinishPickingMediaWith-Info 델리게이트 메소드를 구현해야 한다.   

# ContentView 완성하기
- ContentView를 수정하여 두 개의 상태 프로퍼티를 MyImagePicker 인스턴스로 전달하는 것이므로 ContentView파일에 바인딩된 imagePickerVisible 과 selectedImage를 MyImagePicker에 포함해준다.   
   
-------
이렇게 함으로 개별 UIView 기반 객체를 SwiftUI 프로젝트에 통합할 수 있을 뿐만 아니라, 전체 화면 레이아웃과 기능을 나타내는 모든 UIKit 뷰 컨트롤러도 통합할 수 있다.
