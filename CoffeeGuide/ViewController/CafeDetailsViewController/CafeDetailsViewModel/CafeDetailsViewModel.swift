//
//  CafeDetailsViewModel.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 20/02/2024.
//

import Foundation

internal class CafeDetailsViewModel: CafeDetailsViewModelType {
    var didSelectBack: (() -> ())?
    
    let cafeCellIdentifier = "CoffeeInformationCollectionViewCell"
    let imageCellIdentifier = "ImageCollectionViewCell"
    
    let backButtonTitle = "Back"
    let controllerTitle = "Cafe Details"
}
