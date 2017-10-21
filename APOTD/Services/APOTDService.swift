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
    func GetTodaysPicture() -> PictureViewModel
    func GetPictureForDate(requestedDate: Date) -> PictureViewModel
}

public class APOTDService: APOTDServiceProtocol
{
    public func GetTodaysPicture() -> PictureViewModel {
        let sampleDataAddress = "https://api.nasa.gov/planetary/apod?api_key=NNKOjkoul8n1CH18TWA9gwngW1s1SmjESPjNoUFo"
        let url = URL(string: sampleDataAddress)!
        let jsonData = try! Data(contentsOf: url)
        let jsonDecoder = JSONDecoder()
        let apotd = try? jsonDecoder.decode(PictureViewModel.self, from: jsonData)
        return apotd!
    }

    public func GetPictureForDate(requestedDate: Date) -> PictureViewModel
    {
        return PictureViewModel(copyright: "", date: "", explanation:"", hdurl: "", media_type: "", service_version: "", title: "", url: "")
    }
}
