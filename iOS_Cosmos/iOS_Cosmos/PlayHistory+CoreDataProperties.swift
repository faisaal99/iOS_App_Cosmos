//
//  PlayHistory+CoreDataProperties.swift
//  iOS_Cosmos
//
//  Created by Faisal Akhtar on 2019-04-22.
//  Copyright © 2019 sti. All rights reserved.
//
//

import Foundation
import CoreData


extension PlayHistory {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PlayHistory> {
        return NSFetchRequest<PlayHistory>(entityName: "PlayHistory")
    }

    @NSManaged public var name: String?
    @NSManaged public var score: Int16

}
