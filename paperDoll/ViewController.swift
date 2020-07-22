//
//  ViewController.swift
//  paperDoll
//
//  Created by 林家宇 on 2020/7/22.
//

import UIKit

class ViewController: UIViewController {
   
  
    @IBOutlet var containerViewCollection: [UIView]!
    
    @IBOutlet var showBody: UIImageView!
    @IBOutlet var showHead: UIImageView!
    @IBOutlet var showFace: UIImageView!
    @IBOutlet var showAccessories: UIImageView!
    
    @IBOutlet var showBg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        containerViewCollection[0].isHidden = false
        containerViewCollection[1].isHidden = true
        containerViewCollection[2].isHidden = true
        containerViewCollection[3].isHidden = true

    }

    @IBAction func changeType(_ sender: UISegmentedControl) {
        containerViewCollection.forEach {
               $0.isHidden = true
            }
        containerViewCollection[sender.selectedSegmentIndex].isHidden = false
    }
    
    @IBAction func bodyBtnFunc(_ sender: UIButton) {
        let image = sender.currentBackgroundImage
        showBody.image = image
    }
    
    @IBAction func headBtnFunc(_ sender: UIButton) {
        let image = sender.currentBackgroundImage
        showHead.image = image
    }
    
    @IBAction func faceBtnFunc(_ sender: UIButton) {
        let image = sender.currentBackgroundImage
        showFace.image = image
    }
    @IBAction func accessBtnFunc(_ sender: UIButton) {
        let image = sender.currentBackgroundImage
        showAccessories.image = image
    }
    
    @IBAction func bgBtnFunc(_ sender: UIButton) {
        let image = sender.currentImage
        showBg.image = image
    }
}

