//
//  ViewController.swift
//  CheckIn
//
//  Created by Jason on 1/28/19.
//  Copyright © 2019 Jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var flip: UIButton!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var duck: UIImageView!
    var animate: UIViewPropertyAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animate = UIViewPropertyAnimator(duration: 1.0, curve: .easeIn, animations: {
            self.duck.transform = CGAffineTransform.init(scaleX: 5.0, y: 5.0)
            self.duck.frame.origin.x += self.view.bounds.width
        })
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func flipies(_ sender: UIButton) {
        if flip.imageView?.image == UIImage.init(named: "Neptune3"){
            UIView.transition(with: flip, duration: 1.0, options: [.transitionFlipFromRight], animations: {
            self.flip.setImage(UIImage.init(named: "Noire3"), for: .normal)
            })
            self.name.text = "Noire"
        }
        else{
            UIView.transition(with: flip, duration: 1.0, options: [.transitionFlipFromLeft], animations: {
            self.flip.setImage(UIImage.init(named: "Neptune3"), for: .normal)
            })
            self.name.text = "Neptune"
        }
    }
    
    @IBAction func bigger(_ sender: UISlider) {
        animate.fractionComplete = CGFloat(sender.value)

    }
}

