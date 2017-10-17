//
//  ViewControllerFactory.swift
//  APOTD
//
//  Created by William Wishart on 15/10/2017.
//  Copyright © 2017 Willsolve LLP. All rights reserved.
//

import Foundation
import UIKit

protocol FactoryProtocol {
    func createPictureViewController() -> UIViewController
}

public class ViewControllerFactory: FactoryProtocol
{
    let apotdService: APOTDServiceProtocol
    
    init(apotdService: APOTDServiceProtocol) {
        self.apotdService = apotdService
    }
}

public extension ViewControllerFactory {
    public func createPictureViewController() -> UIViewController
    {
        print("ViewControllerFactory.createPictureViewController, called")
        return PictureViewController();
    }
}
