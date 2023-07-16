//
//  ViewController.swift
//  my_practice_10
//
//  Created by 이태윤 on 2023/07/17.
//

//
//  ViewController.swift
//  picture_choose
//
//  Created by 이태윤 on 2023/07/17.
//
/*
import UIKit
import MobileCoreServices
import UniformTypeIdentifiers

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    
    @IBOutlet var image_0: UIImageView!
    
    @IBOutlet var image_1: UIImageView!
    
    @IBOutlet var image_2: UIImageView!
    
    let image_controller : UIImagePickerController! = UIImagePickerController()
    var picture : UIImage!
    var save_picture = false
    var number = 0
    
    var img_0 : UIImage?
    var img_1 : UIImage?
    var img_2 : UIImage?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        image_0.image = img_0
        image_1.image = img_1
        image_2.image = img_2
    }

    func my_alert (_ title : String, message : String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let action = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func take_picture(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) == true {
            number += 1
            if number > 3 {
                number = 0
            }
            save_picture = true
            image_controller.delegate = self
            image_controller.sourceType = .camera
            image_controller.mediaTypes = [UTType.image.identifier]
            image_controller.allowsEditing = false
            present(image_controller, animated: true, completion: nil)
        } else {
            my_alert("Camera inaccessability", message: "Application cannot access to the camera..")
        }
    }
    
    @IBAction func load_picture(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) == true {
            number += 1
            if number > 3 {
                number = 0
            }
            save_picture = false
            image_controller.delegate = self
            image_controller.sourceType = .photoLibrary
            image_controller.mediaTypes = [UTType.image.identifier]
            image_controller.allowsEditing = true
            present(image_controller, animated: true, completion: nil)
        } else {
            my_alert("Photo album inaccessibility", message: "Application cannot access to the album..")
        }
    }
    
    @IBAction func initialization(_ sender: UIButton) {
        image_0.image = nil
        image_1.image = nil
        image_2.image = nil
        number = 0
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let media_type = info[UIImagePickerController.InfoKey.mediaType] as! NSString
        if media_type.isEqual(to: UTType.image.identifier as String) {
            let picture = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
            if number == 1 {
                image_0.image = picture
            } else if number == 2 {
                image_1.image = picture
            } else if number == 3 {
                image_2.image = picture
            }
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        number -= 1
        self.dismiss(animated: true, completion: nil)
    }
    
}

*/




import UIKit
import MobileCoreServices
import UniformTypeIdentifiers

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet var image_1: UIImageView!
    
    @IBOutlet var image_2: UIImageView!
    
    @IBOutlet var image_3: UIImageView!
    
    let image_controller : UIImagePickerController! = UIImagePickerController()
    var picture : UIImage!
    var save_picture = false
    var num = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func my_alert (_ title : String, message : String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let action = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func take_picture(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) == true {
            num += 1
            if num > 3 {
                num = 0
            }
            save_picture = true
            image_controller.delegate = self
            image_controller.sourceType = .camera
            image_controller.mediaTypes = [UTType.image.identifier]
            image_controller.allowsEditing = false
            present(image_controller, animated: true, completion: nil)
        } else {
            my_alert("Camera inaccessability", message: "Application cannot access to the camera..")
        }
    }
    
    
    @IBAction func load_picture(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) == true {
            num += 1
            if num > 3 {
                num = 0
            }
            save_picture = false
            image_controller.delegate = self
            image_controller.sourceType = .photoLibrary
            image_controller.mediaTypes = [UTType.image.identifier]
            image_controller.allowsEditing = true
            present(image_controller, animated: true, completion: nil)
        } else {
            my_alert("Photo album inaccessibility", message: "Application cannot access to the album..")
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        num -= 1
        self.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let media_type = info[UIImagePickerController.InfoKey.mediaType] as! NSString
        if media_type.isEqual(to: UTType.image.identifier as String) {
            let picture = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
            if num == 1 {
                image_1.image = picture
            } else if num == 2 {
                image_2.image = picture
            } else if num == 3 {
                image_3.image = picture
            }
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func initialization(_ sender: UIButton) {
        image_1.image = nil
        image_2.image = nil
        image_3.image = nil
        num = 0
    }
    
}



