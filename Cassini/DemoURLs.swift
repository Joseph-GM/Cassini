//
//  DemoURLs.swift
//  Cassini
//
//  Created by Joseph Kim on 2021/12/30.
//

import Foundation

struct DemoURLs {
    static let standford = Bundle.main.url(forResource: "oval", withExtension: "jpg")
    static var NASA: Dictionary<String,URL> = {
        let NASAURLStrings = [
            "Cassini" : "https://d2pn8kiwq2w21t.cloudfront.net/images/jpegPIA06164.width-1024.jpg",
            "Earth" : "https://d2pn8kiwq2w21t.cloudfront.net/images/jpegPIA00123.width-1024.jpg",
            "Saturn" : "https://d2pn8kiwq2w21t.cloudfront.net/images/jpegPIA08837.width-1024.jpg"
        ]
        var urls = Dictionary<String, URL>()
        for (key, value) in NASAURLStrings {
            urls[key] = URL(string: value)
        }
        return urls
    }()
}
