//
//  DATE.swift
//  
//
//  Created by Hugh Bellamy on 03/11/2020.
//

import DataStream
import Foundation

/// [MS-OAUT] 2.2.25 DATE
/// DATE is a type that specifies date and time information. It is represented as an 8-byte floating-point number.
/// This type is declared as follows:
/// typedef double DATE;
/// The date information is represented by whole-number increments, starting with December 30, 1899 midnight as time zero. The time information
/// is represented by the fraction of a day since the preceding midnight. For example, 6:00 A.M. on January 4, 1900 would be represented by the
/// value 5.25 (5 and 1/4 of a day past December 30, 1899).
public struct DATE {
    public let rawValue: Double

    public init(dataStream: inout DataStream) throws {
        self.rawValue = try dataStream.readDouble(endianess: .littleEndian)
    }
    
    public var dateValue: Date {
        let timeZone = TimeZone(identifier: "GMT")!

        let adjustmentDays = floor(rawValue)
        let fraction = rawValue - adjustmentDays
        var adjustmentComponents = DateComponents()
        adjustmentComponents.day = Int(adjustmentDays)
        adjustmentComponents.second = Int(ceil(fraction * 86400))
        adjustmentComponents.timeZone = timeZone
        
        var components = DateComponents()
        components.year = 1899
        components.month = 12
        components.day = 30
        components.timeZone = timeZone
        
        var calendar = Calendar(identifier: .gregorian)
        calendar.timeZone = timeZone
        let baseDate = calendar.date(from: components)!
        return calendar.date(byAdding: adjustmentComponents, to: baseDate)!
    }
}
