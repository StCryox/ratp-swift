//
//  RatpDatasetService.swift
//  Ratp
//
//  Created by Ifzas Nguyen on 01/06/2022.
//

import Foundation

protocol RatpDatasetService {
    func fetchDatasets(completion: @escaping ([RatpDataset]) -> Void) -> Void
}
