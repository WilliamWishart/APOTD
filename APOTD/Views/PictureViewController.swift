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
        let pictureOfTheDay = apotd.Test2()
        self.pictureOfTheDayText.text = pictureOfTheDay.explanation
        self.pictureOfTheDayImage.downloadedFrom(link: pictureOfTheDay.url)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func testMethod() {
    let config = URLSessionConfiguration.default // Session Configuration
    let session = URLSession(configuration: config) // Load configuration into Session
    let url = URL(string: "https://api.nasa.gov/planetary/apod?api_key=NNKOjkoul8n1CH18TWA9gwngW1s1SmjESPjNoUFo")!
    
    let task = session.dataTask(with: url, completionHandler: {
        (data, response, error) in
        
        if error != nil {
            
            print(error!.localizedDescription)
            
        } else {
            
            do {
                
                if let json = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? [String: Any]
                {
                    
                    //Implement your logic
                    print(json)
                    //pictureOfTheDayText.text = json.description
                }
                
            } catch {
                
                print("error in JSONSerialization")
                
            }
            
            
        }
        
    })
    task.resume()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
