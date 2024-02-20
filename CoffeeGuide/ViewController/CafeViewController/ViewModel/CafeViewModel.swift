//
//  CafeViewModel.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 20/11/2022.
//

import Foundation

internal class CafeViewModel: CafeViewModelType {
    var didSelectCell: ((Int) -> ())?
    
    let cafeCellIdentifier = "CafeCollectionViewCell"
}
