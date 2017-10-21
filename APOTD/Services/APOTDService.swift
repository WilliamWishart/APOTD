//
//  APOTDService.swift
//  APOTD
//
//  Created by William Wishart on 17/10/2017.
//  Copyright © 2017 Willsolve LLP. All rights reserved.
//

import Foundation
import UIKit

public protocol APOTDServiceProtocol
{
    func Test2() -> PictureViewModel
}

public class APOTDService: APOTDServiceProtocol
{
    public func Test2() -> PictureViewModel {
        let sampleDataAddress = "https://api.nasa.gov/planetary/apod?api_key=NNKOjkoul8n1CH18TWA9gwngW1s1SmjESPjNoUFo"
        let url = URL(string: sampleDataAddress)!
        let jsonData = try! Data(contentsOf: url)
        let jsonDecoder = JSONDecoder()
        let apotd = try? jsonDecoder.decode(PictureViewModel.self, from: jsonData)
        
        //print(apotd?.count as Any)
        //dump(apotd?.first)
        
        return apotd!
    }
    
//    func getPictureForDate() -> PictureViewModel {
//        let picture = PictureViewModel(title: "Test Title for date", description: "Test description for date", image: UIImage())
//        return picture
//    }
//
//    func getPictureForToday() -> PictureViewModel {
//        let picture = PictureViewModel(title: "Test Title for today", description: "Test description for today", image: UIImage())
//        return picture
//    }
    
//    func getImageFromURL(urlString: String) -> UIImage
//    {
//        var imageFromURL: UIImage
//
//        print("APOTDService.getImageFromURL - Start")
//        if let url = URL(string: "http://www.apple.com/euro/ios/ios8/a/generic/images/og.png") {
//            downloadImage(url: url)
//        }
//        print("APOTDService.getImageFromURL - Ending")
//
//        return imageFromURL
//    }
//
//    func getDataFromUrl(url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
//        URLSession.shared.dataTask(with: url) {
//            data, response, error in completion(data, response, error)
//        }.resume()
//    }
//
//    func downloadImage(url: URL) {
//        print("Download Started")
//        getDataFromUrl(url: url) { data, response, error in
//            guard let data = data, error == nil else { return }
//            print(response?.suggestedFilename ?? url.lastPathComponent)
//            print("Download Finished")
//            DispatchQueue.main.async() {
//                self.pictureOfTheDayImage.image = UIImage(data: data)
//            }
//        }
//    }

    
//    func getDataFromUrl(url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
//        URLSession.shared.dataTask(with: url) {
//            data, response, error in completion(data, response, error)
//        }.resume()
//    }
//
//    func downloadImage(url: URL) {
//        print("Download Started")
//        getDataFromUrl(url: url) { data, response, error in
//            guard let data = data, error == nil else { return }
//            print(response?.suggestedFilename ?? url.lastPathComponent)
//            print("Download Finished")
//            DispatchQueue.main.async() {
//                self.imageView.image = UIImage(data: data)
//            }
//        }
//    }
}
