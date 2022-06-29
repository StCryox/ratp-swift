//
//  RatpMeta.swift
//  Ratp
//
//  Created by Ifzas Nguyen on 01/06/2022.
//

import Foundation

class RatpMeta {
    var title: String
    var desc: String
    var themes: [String]
    var keywords: [String]
    
    init(title: String, desc: String, themes: [String], keywords: [String]) {
        self.title = title
        self.desc = desc
        self.themes = themes
        self.keywords = keywords
    }
    
    convenience init?(dict: [String: Any]) {
        guard let `default` = dict["default"] as? [String: Any],
              let title = `default`["title"] as? String,
              let description = `default`["description"] as? String,
              let theme = `default`["theme"] as? [String],
              let keyword = `default`["keyword"] as? [String] else {
            return nil
        }
        self.init(title: title, desc: description, themes: theme, keywords: keyword)
    }
}
