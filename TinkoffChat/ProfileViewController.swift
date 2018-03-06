//
//  ViewController.swift
//  TinkoffChat
//
//  Created by Vladislav on 21.02.18.
//  Copyright © 2018 Vladislav. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet var uiEditButton: UIButton!
    @IBOutlet var uiTitle: UILabel!
    @IBOutlet var uiProfilePicture: UIImageView!
    @IBOutlet var uiChangePhotoButton: RoundButton!
    
    var uiAlert: UIAlertController!
    var uiImagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = .white
        
        // Do any additional setup after loading the view, typically from a nib.
        self.createAlertController()
        uiProfilePicture.layer.cornerRadius = uiChangePhotoButton.layer.cornerRadius
        
        print(uiEditButton.frame)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        var profileImage: UIImage!
        
        if  let image = info[UIImagePickerControllerEditedImage] as? UIImage {
            profileImage = image
        }
        else if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            profileImage = image
        }
        uiProfilePicture.image = profileImage
        picker.dismiss(animated:true, completion: nil)
    }
    
    func createImagePickerController(sourceType: UIImagePickerControllerSourceType, allowsEditing: Bool){
        if UIImagePickerController.isSourceTypeAvailable(sourceType) {
            uiImagePicker = UIImagePickerController()
            uiImagePicker.delegate = self
            uiImagePicker.sourceType = sourceType
            uiImagePicker.allowsEditing = allowsEditing
            self.present(uiImagePicker, animated: true, completion: nil)
        }
    }
    
    func onCapturePhoto(action: UIAlertAction) {
        self.createImagePickerController(sourceType: .camera, allowsEditing: false)
        
        if !(UIImagePickerController.isSourceTypeAvailable(.camera)) {
            let warningAlert = UIAlertController(
                title: "Ошибка",
                message: "Невозможно использовать камеру",
                preferredStyle: .alert
            );
            let closeAction = UIAlertAction(title: "Ок", style: .cancel, handler: nil)
            
            warningAlert.addAction(closeAction)
            present(warningAlert, animated: true, completion: nil)
        }
    }
    
    func onSelectPhotoFromGallery(action: UIAlertAction) {
        self.createImagePickerController(sourceType: .photoLibrary, allowsEditing: true)
    }
    
    func createAlertController() {
        uiAlert = UIAlertController()
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
    }
    
    @IBAction func handleTapPhotoBtn(_ sender: RoundButton) {
        print("Выбери изображение профиля")
        
        present(uiAlert, animated: true, completion: nil)
    }
    
    func viewWillAppear() {
        print("Calling \(#function)")
    }
    
    func viewDidAppear() {
        print("Calling \(#function)")
        
        print(uiEditButton.frame)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        print("Calling \(#function)")
    }

    override func viewDidLayoutSubviews(){
        super.viewDidLayoutSubviews()
        
        print("Calling \(#function)")
    }
    
    func viewWillDisappear() {
        print("Calling \(#function)")
    }
    
    func viewDidDisappear() {
        print("Calling \(#function)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

