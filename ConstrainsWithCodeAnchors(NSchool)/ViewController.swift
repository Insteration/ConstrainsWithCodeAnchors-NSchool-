//
//  ViewController.swift
//  ConstrainsWithCodeAnchors(NSchool)
//
//  Created by Art Karma on 5/13/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let blueView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .blue
        myView.translatesAutoresizingMaskIntoConstraints = false
        return myView
    }()
    
    let redView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .red
        myView.translatesAutoresizingMaskIntoConstraints = false
        return myView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(blueView)
        view.addSubview(redView)
        
        createViewRedConstraint()
        createViewBlueConstraint()
    }

    func createViewRedConstraint() {
        redView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true //left view anchor
        redView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        redView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        redView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }
    
    func createViewBlueConstraint() {
        blueView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true //left view anchor
        blueView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        blueView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        blueView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

}

