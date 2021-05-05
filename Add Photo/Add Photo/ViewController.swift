//
//  ViewController.swift
//  Add Photo
//
//  Created by ahmed aelsebaay on 03/05/2021.
//

import UIKit

class ViewController: UIViewController , UIImagePickerControllerDelegate , UINavigationControllerDelegate{

    var piker = UIImagePickerController()
    
    
    @IBOutlet weak var Img: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        piker.sourceType = .photoLibrary
        piker.delegate = self
    }
    
    
    @IBAction func changeImgbutton(_ sender: UIButton) {
        self.present( self.piker, animated: true, completion: nil )
    
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        self.Img.image = image
        self.piker.dismiss(animated: true, completion: nil)
         


    }
    
}

    
