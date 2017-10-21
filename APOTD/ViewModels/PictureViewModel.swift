//
//  PictureViewModel.swift
//  APOTD
//
//  Created by William Wishart on 19/10/2017.
//  Copyright © 2017 Willsolve LLP. All rights reserved.
//

import Foundation
import UIKit

/// The PictureViewModel reflects the JSON data structure
/// provided by the Astronomy Picture of the Day
/// https://api.nasa.gov/api.html#apod
public struct PictureViewModel: Codable {
    let copyright: String
    let date: String
    let explanation: String
    let hdurl: String
    let media_type: String
    let service_version: String
    let title: String
    let url: String

    init(copyright: String, date: String, explanation: String, hdurl: String, media_type: String, service_version: String, title: String, url: String) {
        self.copyright = copyright
        self.date = date
        self.explanation = explanation
        self.hdurl = hdurl
        self.media_type = media_type
        self.service_version = service_version
        self.title = title
        self.url = url
    }
}
