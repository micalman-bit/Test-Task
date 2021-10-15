//
//  SongsModel .swift
//  TestTask
//
//  Created by Andrey Samchenko on 15.10.2021.
//

import Foundation

struct SongsModel: Decodable {
    let results: [Song]
}

struct Song: Decodable {
    let trackName: String?
}
