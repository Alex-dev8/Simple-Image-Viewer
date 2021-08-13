//
//  DetailViewController.swift
//  Project1
//
//  Created by Alex Cannizzo on 13/08/2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var numberOfPhotosTitle: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // we set the navbar title to the name of the image
        title = numberOfPhotosTitle
        
        // we want to disable the large title for this view
        navigationItem.largeTitleDisplayMode = .never

        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

}
