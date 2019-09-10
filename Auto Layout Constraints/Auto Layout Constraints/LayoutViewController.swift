//
//  ViewController.swift
//  Auto Layout Constraints
//
//  Created by Megan Wilson on 9/9/19.
//  Copyright © 2019 Megan Wilson. All rights reserved.
//

import UIKit

class LayoutViewController: UIViewController {
    var mainImage: UIImageView?

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Background.jpg")!)
        
        
        let image: UIImage = UIImage(named: "mhwMainMenu.jpg")!
        mainImage = UIImageView(image: image)
        self.view.addSubview(mainImage!)
        
        mainImage?.translatesAutoresizingMaskIntoConstraints = false
        
        mainImage?.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainImage?.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        mainImage?.widthAnchor.constraint(equalToConstant: 380).isActive = true
        mainImage?.heightAnchor.constraint(equalToConstant: 250).isActive = true
            
        //view.addSubview(mainImage)
    }
}

