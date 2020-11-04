//
//  CURRENCY.swift
//  
//
//  Created by Hugh Bellamy on 03/11/2020.
//

import DataStream

/// [MS-OAUT] 2.2.24 CURRENCY
/// The CURRENCY type specifies currency information. It is represented as an 8-byte integer, scaled by 10,000, to give a fixed-point number with
/// 15 digits to the left of the decimal point, and four digits to the right. This representation provides a range of 922337203685477.5807 to
/// –922337203685477.5808. For example, $5.25 is stored as the value 52500.
/// typedef struct tagCY {
///  __int64 int64;
/// } CURRENCY;
public struct CURRENCY {
    public let rawValue: Int64

    public init(dataStream: inout DataStream) throws {
        self.rawValue = try dataStream.read(endianess: .littleEndian)
    }
    
    public var doubleValue: Double {
        return Double(rawValue) / 10000
    }
}
