//
//  PictureViewController.swift
//  APOTD
//
//  Created by William Wishart on 14/10/2017.
//  Copyright © 2017 Willsolve LLP. All rights reserved.
//

import UIKit

class PictureViewController: UIViewController {

    private let apotd: APOTDServiceProtocol
    
    @IBOutlet weak var pictureOfTheDayImage: UIImageView!
    
    @IBOutlet weak var pictureOfTheDayText: UITextView!
    
    public init(apotd: APOTDServiceProtocol) {
        self.apotd = apotd
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
        let pictureOfTheDay = apotd.GetTodaysPicture()
        self.pictureOfTheDayText.text = pictureOfTheDay.explanation
        self.pictureOfTheDayImage.downloadedFrom(link: pictureOfTheDay.url)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
