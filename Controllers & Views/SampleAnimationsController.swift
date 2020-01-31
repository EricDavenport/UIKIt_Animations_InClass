//
//  SampleAnimationsController.swift
//  UIKIt_Animations
//
//  Created by Eric Davenport on 1/31/20.
//  Copyright © 2020 Eric Davenport. All rights reserved.
//

import UIKit

class SampleAnimationsController: UIViewController {
  
  private let sampleAnimationsView = SampleAnimationView()
  
  override func loadView() {
    view = sampleAnimationsView
  }

    override func viewDidLoad() {
        super.viewDidLoad()

      view.backgroundColor = .white
    }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(true)
    scaleAnimations()
//    pulsationAnimation()
  }
  
  private func scaleAnimations() {
    // properties we can animate
    /*
     - alpha
     - corner radius
     - position
     - center
     - transition
     - color
     - shadow
     - opacity
     - transform: scale, rotate, translate
     */
    
    // any transform value of 1.0 represents the identity of the view
    UIView.animate(withDuration: 1.0, delay: 0.0, options: [], animations: {
      self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform(scaleX: 20.0, y: 20.0)
      self.sampleAnimationsView.pursuitLogo.alpha = 0.0
    }) { (done) in
      // gets called after initial animation is done
      UIView.animate(withDuration: 1.0) {
        self.sampleAnimationsView.swiftLogo.isHidden = false
        self.sampleAnimationsView.swiftLogo.layer.cornerRadius = self.sampleAnimationsView.swiftLogo.bounds.size.width / 2.0
      }
    }
    
  }
  private func pulsationAnimation() {
    UIView.animate(withDuration: 1.0, delay: 0.0, options: [.repeat, .autoreverse], animations: {
      // animations block
      self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
    }) { (done) in
      // code to be executed after animation is complete
      /*
       options
       - reset the views values - to original place - or put aplha back to 0.0
       - create a next animation
       */
      UIView.animate(withDuration: 0.3) {
        self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform.identity
      }
       /*
       NB: if you want to go beyond creating  a animation in the completion handler the better choice would be animateKeyFrames()
       animateKeyFrames() - chain animations
       */
    }
  }

}
