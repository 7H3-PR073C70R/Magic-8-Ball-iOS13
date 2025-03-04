//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]


    @IBAction func button(_ sender: UIButton) {
        imageView.animationImages = ballArray
        imageView.animationDuration = TimeInterval(1)
        imageView.startAnimating()
        Task {
            try await Task.sleep(nanoseconds: 1_000_000_000)
            imageView.stopAnimating()
            imageView.image = ballArray[Int.random(in: 0...4)]
        }
       
    }
    
}

