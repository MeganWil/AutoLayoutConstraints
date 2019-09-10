//
//  ViewController.swift
//  Auto Layout Constraints
//
//  Created by Megan Wilson on 9/9/19.
//  Copyright © 2019 Megan Wilson. All rights reserved.
//

import UIKit

class LayoutViewController: UIViewController {
    
    let mainImageView: UIImageView = {
        let mainImage = UIImageView(image: #imageLiteral(resourceName: "mhwMainMenu"))
        mainImage.translatesAutoresizingMaskIntoConstraints = false
        mainImage.contentMode = .scaleAspectFit
        return mainImage
    }()
    
    
    let textViews: UITextView = {
        let textView = UITextView()
            textView.backgroundColor = UIColor.black.withAlphaComponent(0.5) // visual debugging
            textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "Massive Expansion for Monster Hunter: World \n Available now!"
            textView.isScrollEnabled = false
            textView.font = UIFont.boldSystemFont(ofSize: 20)
            textView.textAlignment = .center
            textView.isEditable = false
            textView.textColor = UIColor.white
        return textView
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Background.jpg")!)
        view.addSubview(textViews)
    
        layoutFunc()
        
    }
    
    
    
    func layoutFunc() {
        // container
        let topImageContainer = UIView()
//        topImageContainer.backgroundColor = .orange
        view.addSubview(topImageContainer)
        
        topImageContainer.translatesAutoresizingMaskIntoConstraints = false
        
        topImageContainer.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        
        topImageContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        
        topImageContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topImageContainer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        
        topImageContainer.addSubview(mainImageView)
        
        mainImageView.centerXAnchor.constraint(equalTo: topImageContainer.centerXAnchor).isActive = true
        mainImageView.centerYAnchor.constraint(equalTo: topImageContainer.centerYAnchor).isActive = true
        mainImageView.heightAnchor.constraint(equalTo: topImageContainer.heightAnchor, multiplier: 0.8).isActive = true
        


        // start of main image code
        mainImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        mainImageView.widthAnchor.constraint(equalToConstant: 380).isActive = true
        mainImageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        // end of main image code
        
        
        // this is for the texting layout
        textViews.topAnchor.constraint(equalTo: topImageContainer.bottomAnchor,constant: 20).isActive = true
        textViews.leftAnchor.constraint(equalTo: mainImageView.leftAnchor).isActive = true
        textViews.rightAnchor.constraint(equalTo: mainImageView.rightAnchor).isActive = true

    }
}

