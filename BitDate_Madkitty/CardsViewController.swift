//
//  CardsViewController.swift
//  BitDate_Madkitty
//
//  Created by Craig Martin on 6/22/15.
//  Copyright (c) 2015 MadKitty. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {

    
    let frontCardTopMargin: CGFloat = 0
    let backCardTopMargin: CGFloat = 10
    
    var backCard: SwipeView?
    var frontCard: SwipeView?
    
    @IBOutlet weak var cardsViewStack: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        backCard = SwipeView(frame: createCardFrame(backCardTopMargin))
        cardsViewStack.addSubview(backCard!)
        
        frontCard = SwipeView(frame: createCardFrame(frontCardTopMargin))
        cardsViewStack.addSubview(frontCard!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    private func createCardFrame(topMargin: CGFloat) -> CGRect {
        return CGRect(x: 0, y: topMargin, width: cardsViewStack.frame.width, height: cardsViewStack.frame.height)
    }
}
