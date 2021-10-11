//
//  BlogEntry+CoreDataProperties.swift
//  My Daily Blog
//
//  Created by 루딘 on 2021/10/02.
//
//

import Foundation
import CoreData


extension BlogEntry {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<BlogEntry> {
        return NSFetchRequest<BlogEntry>(entityName: "BlogEntry")
    }

    @NSManaged public var content: String?
    @NSManaged public var date: Date?

}

extension BlogEntry : Identifiable {
    func setMonth() -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM" //MM/YY같은 옵션임
        if let dateToBeModified = date{
            let month = dateFormatter.string(from: dateToBeModified)
            return month.uppercased()
        }
        return ""
    }
    func setDay() -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "d" //MM/YY같은 옵션임
        if let dateToBeModified = date{
            let day = dateFormatter.string(from: dateToBeModified)
            return day.uppercased()
        }
        return ""
    }
}
