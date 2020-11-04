//
//  VARIANT_BOOL.swift
//  
//
//  Created by Hugh Bellamy on 03/11/2020.
//

import DataStream

/// [MS-OAUT] 2.2.27 VARIANT_BOOL
/// The VARIANT_BOOL type specifies Boolean values.
/// This type is declared as follows:
/// typedef short VARIANT_BOOL;
/// The values MUST be defined as:
/// VARIANT_TRUE 0xFFFF MUST indicate a Boolean value of TRUE.
/// VARIANT_FALSE 0x0000 MUST indicate a Boolean value of FALSE.
public struct VARIANT_BOOL {
    public let rawValue: Int16

    public init(dataStream: inout DataStream) throws {
        self.rawValue = try dataStream.read(endianess: .littleEndian)
    }
    
    public var boolValue: Bool {
        return rawValue != VARIANT_FALSE
    }
}

public let VARIANT_TRUE: UInt16 = 0xFFFF
public let VARIANT_FALSE: UInt16 = 0x0000
