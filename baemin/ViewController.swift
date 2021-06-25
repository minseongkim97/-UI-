//
//  ViewController.swift
//  baemin
//
//  Created by MIN SEONG KIM on 2021/06/22.
//

import UIKit

class ViewController: UIViewController {
    let adImages: [UIImage] = [#imageLiteral(resourceName: "슬라이드1"), #imageLiteral(resourceName: "슬라이드2"), #imageLiteral(resourceName: "슬라이드3"), #imageLiteral(resourceName: "슬라이드4"), #imageLiteral(resourceName: "슬라이드5"), #imageLiteral(resourceName: "슬라이드7"), #imageLiteral(resourceName: "슬라이드8"), #imageLiteral(resourceName: "슬라이드9"), #imageLiteral(resourceName: "슬라이드10"), #imageLiteral(resourceName: "슬라이드11"), #imageLiteral(resourceName: "슬라이드12"), #imageLiteral(resourceName: "슬라이드13"), #imageLiteral(resourceName: "슬라이드14"), #imageLiteral(resourceName: "슬라이드15"), #imageLiteral(resourceName: "슬라이드16"), #imageLiteral(resourceName: "슬라이드17")]
    
    
    @IBOutlet private weak var roundView: UIView! {
        didSet {
            roundView.layer.cornerRadius = 20
        }
    }
    
    @IBOutlet weak var myTownView: UIView! {
        didSet {
            myTownView.layer.cornerRadius = 20
            myTownView.layer.borderWidth = 0.1
            myTownView.layer.borderColor = UIColor.gray.cgColor
            myTownView.layer.masksToBounds = true
        }
    }
    
    @IBOutlet private weak var adScrollView: UIScrollView!
    
    @IBOutlet private weak var saleScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addAdScrollView()
        

    }
    
    private func addAdScrollView() {

        for i in 0..<adImages.count {
            let imageView = UIImageView()
            let xPos = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPos, y: 0, width: adScrollView.bounds.width, height: adScrollView.bounds.height)
            imageView.image = adImages[i]
            adScrollView.addSubview(imageView)
        }
    }
}

