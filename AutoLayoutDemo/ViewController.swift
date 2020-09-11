//
//  ViewController.swift
//  AutoLayoutDemo
//
//  Created by Julius on 08/09/2020.
//  Copyright © 2020 Julius. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Mobile Verification"
        label.textColor = .orange
        label.translatesAutoresizingMaskIntoConstraints = false
        //label.backgroundColor = .red
        return label
    }()
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        //label.textAlignment = .center
        label.text = "We have sent an OTP Code to your mobile for verification. Please enter the code in the space below."
        label.numberOfLines = 3
        //label.lineBreakMode = .byWordWrapping
        label.font = .systemFont(ofSize: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        //constraints
        view.addSubview(titleLabel)
        view.addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([
            // Place the button at the center of its parent
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 80),
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80),//left-padding
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80),//right-padding
            
        ])
        
        
    
    }
    


}

