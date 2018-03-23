//
//  ViewController.swift
//  TinkoffChat
//
//  Created by Vladislav on 21.02.18.
//  Copyright © 2018 Vladislav. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var uiEditButton: UIButton!
    @IBOutlet weak var uiTitle: UILabel!
    @IBOutlet weak var uiProfilePicture: UIImageView!
    @IBOutlet weak var uiChangePhotoButton: RoundButton!
    
    var uiImagePicker: UIImagePickerController!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
       
        /*
            На момент инициализации класса не загружена view,
            соответственно мы не имеем доступа к компоненту Button
        */
        // print(uiEditButton.frame)
    }
    @IBAction func onClickCloseBtn(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        // Do any additional setup after loading the view, typically from a nib.
        let cornerRadius: CGFloat = uiChangePhotoButton.bounds.width / 2
        
        uiChangePhotoButton.layer.cornerRadius = cornerRadius
        uiProfilePicture.layer.cornerRadius = cornerRadius
        
        // Размеры не отличаются
        print(uiEditButton.frame)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("Calling \(#function)")
        
        print(uiEditButton.frame)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        var profileImage: UIImage!
        
        if let image = info[UIImagePickerControllerEditedImage] as? UIImage {
            profileImage = image
        }
        else if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            profileImage = image
        }
        
        uiProfilePicture.image = profileImage
        
        picker.dismiss(animated:true, completion: nil)
    }
    
    func createImagePickerController(sourceType: UIImagePickerControllerSourceType, allowsEditing: Bool) -> Bool {
        if !(UIImagePickerController.isSourceTypeAvailable(sourceType)) {
            return false
        }
        
        uiImagePicker = UIImagePickerController()
        uiImagePicker.delegate = self
        uiImagePicker.sourceType = sourceType
        uiImagePicker.allowsEditing = allowsEditing
        present(uiImagePicker, animated: true, completion: nil)
        
        return true
    }
    
    func onCapturePhoto(action: UIAlertAction) {
        let isAvailable = createImagePickerController(sourceType: .camera, allowsEditing: false)
        
        if !isAvailable {
            let warningAlert = createErrorAlert(message: "Невозможно использовать камеру")
            
            present(warningAlert, animated: true, completion: nil)
        }
    }
    
    func onSelectPhotoFromGallery(action: UIAlertAction) {
        let isAvailable = createImagePickerController(sourceType: .photoLibrary, allowsEditing: true)
        
        if !isAvailable {
            let warningAlert = createErrorAlert(
                title: "Непредвиденная ошибка",
                message: "Невозможно получить доступ к галерее"
            )
            
            present(warningAlert, animated: true, completion: nil)
        }
    }
    
    func createErrorAlert(title: String = "Ошибка", message: String) -> UIAlertController {
        let warningAlert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        );
        let closeAction = UIAlertAction(title: "ОК", style: .cancel, handler: nil)
        
        warningAlert.addAction(closeAction)
        
        return warningAlert;
    }
    
    func createAlertController() -> UIAlertController {
        let uiAlert = UIAlertController()
        let capturePhotoAction = UIAlertAction(
            title: "Сделать фото",
            style: .default,
            handler: onCapturePhoto
        )
        let selectPhotoFromGalleryAction = UIAlertAction(
            title: "Выбрать из галереи",
            style: .default,
            handler: onSelectPhotoFromGallery
        )
        let cancelAction = UIAlertAction(title: "Отмена", style: .cancel)
        
        uiAlert.addAction(capturePhotoAction)
        uiAlert.addAction(selectPhotoFromGalleryAction)
        uiAlert.addAction(cancelAction)
        
        return uiAlert;
    }
    
    @IBAction func handleTapPhotoBtn(_ sender: RoundButton) {
        print("Выбери изображение профиля")
        present(createAlertController(), animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

