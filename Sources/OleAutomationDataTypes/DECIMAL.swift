//
//  DECIMAL.swift
//  
//
//  Created by Hugh Bellamy on 03/11/2020.
//

import DataStream
import WindowsDataTypes

/// [MS-OAUT] 2.2.26 DECIMAL
/// The DECIMAL structure specifies a sign and scale for a number. Decimal variables are represented as 96-bit unsigned integers that are scaled
/// by a variable power of 10.
/// typedef struct tagDEC {
///  WORD wReserved;
///  BYTE scale;
///  BYTE sign;
///  ULONG Hi32;
///  ULONGLONG Lo64;
/// } DECIMAL;
public struct DECIMAL {
    public let wReserved: WORD
    public let scale: BYTE
    public let sign: BYTE
    public let hi32: ULONG
    public let lo64: ULONGLONG
    
    public init(dataStream: inout DataStream) throws {
        /// wReserved: MUST be set to 0 and MUST be ignored by the recipient.
        self.wReserved = try dataStream.read(endianess: .littleEndian)
        
        /// scale: MUST be the power of 10 by which to divide the 96-bit integer represented by Hi32 * 2^64 +Lo64. The value MUST be in the
        /// range of 0 to 28, inclusive.
        /// Value Meaning
        /// 0 — 28 Order of magnitude of the decimal number.
        self.scale = try dataStream.read(endianess: .littleEndian)
        if self.scale > 28 {
            throw WindowsDataTypesError.corrupted
        }
        
        /// sign: MUST equal one of the following values.
        /// Value Meaning
        /// 0 The decimal contains a positive value.
        /// 0x80 The decimal contains a negative value.
        self.sign = try dataStream.read()
        
        /// Hi32: MUST be the high 32 bits of the 96-bit integer that is scaled and signed to represent the final DECIMAL value.
        self.hi32 = try dataStream.read(endianess: .littleEndian)
        
        /// Lo64: MUST be the low 64 bits of the 96-bit integer that is scaled and signed to represent the final DECIMAL value.
        self.lo64 = try dataStream.read(endianess: .littleEndian)
    }
    
    public var doubleValue: Double {
        fatalError("NYI")
    }
}
