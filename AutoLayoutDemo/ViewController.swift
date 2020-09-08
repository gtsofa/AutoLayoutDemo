//
//  ViewController.swift
//  AutoLayoutDemo
//
//  Created by Julius on 08/09/2020.
//  Copyright © 2020 Julius. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let bearImageView: UIImageView = {
        let topImage = UIImageView(image: #imageLiteral(resourceName: "bear"))
        topImage.translatesAutoresizingMaskIntoConstraints = false
        
        return topImage
    }()
    
    let textDesc: UITextView = {
        
        let title = UITextView()
        title.text = "Join us today in our fun and games!"
        title.isEditable = false
        title.font = UIFont.boldSystemFont(ofSize: 18)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    let desc: UITextView = {
        
        let description = UITextView()
        description.text = "Are you ready for loads and loads of fun? Don't wait any longer! We hope to see you soon"
        description.translatesAutoresizingMaskIntoConstraints = false
        return description
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        view.addSubview(bearImageView)
        bearImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bearImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        view.addSubview(textDesc)
        //textDesc.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textDesc.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50).isActive = true
        textDesc.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        textDesc.topAnchor.constraint(equalTo: bearImageView.bottomAnchor, constant: 50).isActive = true
        textDesc.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        
        
        
        
    }


}

