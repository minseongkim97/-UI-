//
//  ViewController.swift
//  baemin
//
//  Created by MIN SEONG KIM on 2021/06/22.
//

import UIKit

class ViewController: UIViewController {
    var adImages: [UIImage] = [#imageLiteral(resourceName: "슬라이드1"), #imageLiteral(resourceName: "슬라이드2"), #imageLiteral(resourceName: "슬라이드3"), #imageLiteral(resourceName: "슬라이드4"), #imageLiteral(resourceName: "슬라이드5"), #imageLiteral(resourceName: "슬라이드7"), #imageLiteral(resourceName: "슬라이드8"), #imageLiteral(resourceName: "슬라이드9"), #imageLiteral(resourceName: "슬라이드10"), #imageLiteral(resourceName: "슬라이드11"), #imageLiteral(resourceName: "슬라이드12"), #imageLiteral(resourceName: "슬라이드13"), #imageLiteral(resourceName: "슬라이드14"), #imageLiteral(resourceName: "슬라이드15"), #imageLiteral(resourceName: "슬라이드16"), #imageLiteral(resourceName: "슬라이드17")]
    var saleImages: [UIImage] = []
    
//    var saleImagesViews = [UIImageView]()
//    var adImagesViews = [UIImageView]()
    
    @IBOutlet private weak var roundView: UIView! {
        didSet {
            roundView.layer.cornerRadius = 20
        }
    }
    
    @IBOutlet private weak var adScrollView: UIScrollView!
    
    @IBOutlet private weak var saleScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addAdScrollView()
//        addSaleScrollView()

    }
    
    private func addAdScrollView() {

        for i in 0..<adImages.count {
            let imageView = UIImageView()
            let xPos = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPos, y: 0, width: adScrollView.bounds.width, height: adScrollView.bounds.height)
            imageView.image = adImages[i]
            imageView.contentMode = .scaleToFill
            adScrollView.addSubview(imageView)
            adScrollView.contentSize.width = imageView.frame.width * CGFloat(i + 1)
        }
    }
    
//    private func addSaleScrollView() {
//
//        for i in 0..<saleImages.count {
//            let imageView = UIImageView()
//            let xPos = self.view.frame.width * CGFloat(i)
//            imageView.frame = CGRect(x: xPos, y: 0, width: saleScrollView.bounds.width, height: saleScrollView.bounds.height)
//            imageView.image = saleImages[i]
//            imageView.contentMode = .scaleToFill
//            saleScrollView.addSubview(imageView)
//            saleScrollView.contentSize.width = imageView.frame.width * CGFloat(i + 1)
//        }
//    }
    


}

