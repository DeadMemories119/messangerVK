//
//  LikeControl.swift
//  MessangerVK
//
//  Created by Alexander Morozov on 23.06.2022.
//

import UIKit

class LikeControlView: UIView {

    
    @IBOutlet weak var heartImageView: UIImageView!
    @IBOutlet weak var likeCounterLabel: UILabel!
    
    var likeCounter = 0
    var isPressed = false

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupXIB()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupXIB()
    }
 
    
    private func loadXIB() -> UIView {
        let bundle = Bundle(for: type(of:self))
        let xib = UINib(nibName: "LikeControlView", bundle: bundle)
        let xibView = xib.instantiate(withOwner: self).first as! UIView
        
        return xibView
    }
    
    private func setupXIB() {
        let xibView = loadXIB()
        xibView.frame = self.bounds
        xibView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(xibView)
        likeCounterLabel.text = String(likeCounter)
    }
    
    
    func configure(isLikePressed: Bool, counter: Int) {
        self.likeCounter = counter
        self.isPressed = isLikePressed
        likeState()
        
    }
    
    func likeState() {
        
        if isPressed {
            heartImageView.image = UIImage(named: "liked")
        } else {
            heartImageView.image = UIImage(named: "not liked")
        }
        
        likeCounterLabel.text = "Likes: " + String(likeCounter)
    }
    
    @IBAction func pressLikeButton(_ sender: UIButton) {
        isPressed = !isPressed
       
        if isPressed {
            likeCounter += 1
        } else {
            likeCounter -= 1
        }
        likeState()
    }
    
    
    
    
    
}
