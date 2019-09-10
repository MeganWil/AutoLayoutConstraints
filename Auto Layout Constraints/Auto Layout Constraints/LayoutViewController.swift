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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Background.jpg")!)
//        view.addSubview(infoTextView)
        
        layoutFunc()
        
    }
    
    func layoutFunc() {
        // container
        let topImageContainer = UIView()
        topImageContainer.backgroundColor = .orange
        view.addSubview(topImageContainer)
        
        topImageContainer.translatesAutoresizingMaskIntoConstraints = false
        
        topImageContainer.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
        topImageContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        
        topImageContainer.addSubview(mainImageView)
        mainImageView.centerXAnchor.constraint(equalTo: topImageContainer.centerXAnchor).isActive = true
        mainImageView.centerYAnchor.constraint(equalTo: topImageContainer.centerYAnchor).isActive = true
        mainImageView.heightAnchor.constraint(equalTo: topImageContainer.heightAnchor, multiplier: 0.5).isActive = true


       
        
        mainImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        mainImageView.widthAnchor.constraint(equalToConstant: 380).isActive = true
        mainImageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        // end of main image code
        
        // this is for the texting layout
        
//        let textInfo = UITextView(coder: <#T##NSCoder#>)
//        textInfo.text = "Massive Expansion for Monster Hunter: World"
//        self.view.addSubview(textInfo)
//
//        textInfo.translatesAutoresizingMaskIntoConstraints = false
//
//
//
//        textInfo.topAnchor.constraint(equalTo: mainImage!.bottomAnchor, constant: 125).isActive = true
//        textInfo.leftAnchor.constraint(equalTo: mainImage!.leftAnchor).isActive = true
//        textInfo.rightAnchor.constraint(equalTo: mainImage!.rightAnchor).isActive = true
//        textInfo.bottomAnchor.constraint(equalTo: mainImage!.bottomAnchor, constant: 0).isActive = true
      
        let textView = UITextView(frame: .zero, textContainer: nil)
        textView.backgroundColor = UIColor.black.withAlphaComponent(0.5) // visual debugging
        textView.text = "Massive Expansion for Monster Hunter: World"
        textView.isScrollEnabled = false   // causes expanding height
        textView.font = UIFont.boldSystemFont(ofSize: 30)
        textView.textAlignment = .center
        textView.isEditable = false
        textView.textColor = UIColor.white
        
        view.addSubview(textView)
        
        // Auto Layout
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        let safeArea = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -460),
            textView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            textView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor)
            ])
        
        // end of text layout code
    }
}

