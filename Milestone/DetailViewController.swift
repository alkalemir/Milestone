//
//  DetailViewController.swift
//  Milestone
//
//  Created by Emir Alkal on 4.06.2022.
//

import UIKit

class DetailViewController: UIViewController {

    var image: UIImage?
    var imageTitle: String?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = image
        label.text = imageTitle
        
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
    }
    
    @objc func shareTapped() {
        
        let vc = UIActivityViewController(activityItems: [image!.jpegData(compressionQuality: 1.0)!], applicationActivities: [])
        
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
    }
}
