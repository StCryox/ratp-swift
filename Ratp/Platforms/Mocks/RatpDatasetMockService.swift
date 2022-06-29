//
//  RatpDatasetMockService.swift
//  Ratp
//
//  Created by Ifzas Nguyen on 01/06/2022.
//

import Foundation

class RatpDatasetMockService: RatpDatasetService {
    func fetchDatasets(completion: @escaping ([RatpDataset]) -> Void) {
        var datasets: [RatpDataset] = []
        datasets.append(RatpDataset(id: "Bonjour",
                                    uid: "1",
                                    hasRecords: false,
                                    features: [],
                                    visibility: "Domain",
                                    attachments: [],
                                    dataVisible: true,
                                    meta: RatpMeta(title: "Titre1",
                                                   desc: "Desc1",
                                                   themes: [
                                                    "Theme1"
                                                    ],
                                                   keywords: [
                                                   "Keyword1"
                                                   ]
                                                  )
                                   )
        )
        datasets.append(RatpDataset(id: "Bonjour2",
                                    uid: "2",
                                    hasRecords: false,
                                    features: [],
                                    visibility: "Domain",
                                    attachments: [],
                                    dataVisible: true,
                                    meta: RatpMeta(title: "Titre2",
                                                   desc: "Desc2",
                                                   themes: [
                                                    "Theme2_1",
                                                    "Theme2_2"
                                                    ],
                                                   keywords: [
                                                   "Keyword2_1",
                                                   "Keyword2_2"
                                                   ]
                                                  )
                                   )
        )
        datasets.append(RatpDataset(id: "Bonjour3",
                                    uid: "3",
                                    hasRecords: true,
                                    features: [],
                                    visibility: "Domain",
                                    attachments: [
                                    RatpAttachment(id: "image1",
                                                   mimetype: "image/png",
                                                   title: "ratp4ever",
                                                   url: "https://upload.wikimedia.org/wikipedia/fr/thumb/0/01/RATP.svg/1200px-RATP.svg.png")
                                    ],
                                    dataVisible: false,
                                    meta: RatpMeta(title: "Titre3",
                                                   desc: "Desc3",
                                                   themes: [],
                                                   keywords: []
                                                  )
                                   )
        )
        Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { _ in
            completion(datasets) // permet de déclencher le callback
        }
    }
}
