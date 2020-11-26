//
//  File.swift
//  
//
//  Created by Hugh Bellamy on 25/11/2020.
//

/// [MS-OAUT] 2.2.20 LIBFLAGS Type Library Feature Constants
/// The LIBFLAGS enumeration values are used in the wLibFlags field of a TLIBATTR to specify the features of the automation scope of an ITypeLib
/// server, as specified in section 2.2.45.
/// The Type library feature constants are defined in the LIBFLAGS enumeration.
/// typedef [v1_enum] enum tagLIBFLAGS
/// {
///  LIBFLAG_FRESTRICTED = 0x01,
///  LIBFLAG_FCONTROL = 0x02,
///  LIBFLAG_FHIDDEN = 0x04,
///  LIBFLAG_FHASDISKIMAGE = 0x08
/// } LIBFLAGS;
public struct LIBFLAGS: OptionSet {
    public let rawValue: UInt32
    
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
    
    /// LIBFLAG_FRESTRICTED: MUST be set if the automation scope was declared with the [restricted] attribute (as specified in section 2.2.49.2).
    public static let fRestricted = LIBFLAGS(rawValue: 0x01)
    
    /// LIBFLAG_FCONTROL: MUST be set if the automation scope was declared with the [control] attribute (as specified in section 2.2.49.2).
    public static let fControl = LIBFLAGS(rawValue: 0x02)
    
    /// LIBFLAG_FHIDDEN: MUST be set if the automation scope was declared with the [hidden] attribute (as specified in section 2.2.49.2).
    public static let fHidden = LIBFLAGS(rawValue: 0x04)
    
    /// LIBFLAG_FHASDISKIMAGE: MAY be set <4>and MUST be ignored on receipt.
    public static let fHasDiskImage = LIBFLAGS(rawValue: 0x08)
    
    public static let all: LIBFLAGS = [.fRestricted, .fControl, .fHidden, .fHasDiskImage]
}
