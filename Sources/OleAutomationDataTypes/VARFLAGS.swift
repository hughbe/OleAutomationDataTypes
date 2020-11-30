//
//  VARFLAGS.swift
//  
//
//  Created by Hugh Bellamy on 29/11/2020.
//

/// [MS-OAUT] 2.2.18 VARFLAGS Variable Feature Constants
/// The VARFLAGS enumeration values are used in the wVarFlags field of a VARDESC to specify the features of a field, constant, or ODL
/// dispinterface property, as specified in section 2.2.43.
/// The variable feature constants are defined in the VARFLAGS enumeration.
/// typedef enum tagVARFLAGS
/// {
///  VARFLAG_FREADONLY = 0x1,
///  VARFLAG_FSOURCE = 0x2,
///  VARFLAG_FBINDABLE = 0x4,
///  VARFLAG_FREQUESTEDIT = 0x8,
///  VARFLAG_FDISPLAYBIND = 0x10,
///  VARFLAG_FDEFAULTBIND = 0x20,
///  VARFLAG_FHIDDEN = 0x40,
///  VARFLAG_FRESTRICTED = 0x80,
///  VARFLAG_FDEFAULTCOLLELEM = 0x100,
///  VARFLAG_FUIDEFAULT = 0x200,
///  VARFLAG_FNONBROWSABLE = 0x400,
///  VARFLAG_FREPLACEABLE = 0x800,
///  VARFLAG_FIMMEDIATEBIND = 0x1000
/// } VARFLAGS;
public struct VARFLAGS: OptionSet {
    public let rawValue: UInt32
    
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
    
    /// VARFLAG_FREADONLY: MUST be set if the variable is an ODL dispinterface property that was declared with the [readonly] attribute
    /// (see section 2.2.49.5.3).
    public static let fReadonly = VARFLAGS(rawValue: 0x1)
    
    /// VARFLAG_FSOURCE: MUST be set if the variable is a property member of an ODL interface that was declared with the [source] attribute
    /// (see section 2.2.49.8).
    public static let fSource = VARFLAGS(rawValue: 0x2)
    
    /// VARFLAG_FBINDABLE: MUST be set if the variable is an ODL dispinterface property that was declared with the [bindable] attribute
    /// (see section 2.2.49.5.2).
    public static let fBindable = VARFLAGS(rawValue: 0x4)
    
    /// VARFLAG_FREQUESTEDIT: MUST be set if the variable is an ODL dispinterface property that was declared with the [requestedit] attribute
    /// (see section 2.2.49.5.2).
    public static let fRequestEdit = VARFLAGS(rawValue: 0x8)
    
    /// VARFLAG_FDISPLAYBIND: MUST be set if the variable is an ODL dispinterface property that was declared with the [displaybind] attribute
    /// (see section 2.2.49.5.2).
    public static let fDisplayBind = VARFLAGS(rawValue: 0x10)
    
    /// VARFLAG_FDEFAULTBIND: MUST be set if the variable is an ODL dispinterface property that was declared with the [defaultbind] attribute
    /// (see section 2.2.49.5.2).
    public static let fDefaultBind = VARFLAGS(rawValue: 0x20)
    
    /// VARFLAG_FHIDDEN: MUST be set if the variable is a member of a type that was declared with the [hidden] attribute (see section
    /// 2.2.49.5.1).
    public static let fHidden = VARFLAGS(rawValue: 0x40)
    
    /// VARFLAG_FRESTRICTED: MUST be set if the variable is a member of a type that was declared with the [restricted] attribute
    /// (see section 2.2.49.5.1).
    public static let fRestricted = VARFLAGS(rawValue: 0x80)
    
    /// VARFLAG_FDEFAULTCOLLELEM: MUST be set if the variable is an ODL dispinterface property that was declared with the
    /// [defaultcollelem] attribute (see section 2.2.49.5.1).
    public static let fDefaultCollElem = VARFLAGS(rawValue: 0x100)
    
    /// VARFLAG_FUIDEFAULT: MUST be set if the variable is an ODL dispinterface property that was declared with the [uidefault] attribute
    /// (see section 2.2.49.5.1).
    public static let fUIDefault = VARFLAGS(rawValue: 0x200)
    
    /// VARFLAG_FNONBROWSABLE: MUST be set if the variable is an ODL dispinterface property that was declared with the [nonbrowsable]
    /// attribute (see section 2.2.49.5.1).
    public static let fNonBrowsable = VARFLAGS(rawValue: 0x400)
    
    /// VARFLAG_FREPLACEABLE: MUST be set if the variable is an ODL dispinterface property that was declared with the [replaceable]
    /// attribute (see section 2.2.49.5.1). MUST be ignored on receipt.
    public static let fReplaceable = VARFLAGS(rawValue: 0x800)
    
    /// VARFLAG_FIMMEDIATEBIND: MUST be set if the variable is an ODL dispinterface property that was declared with the [immediatebind]
    /// attribute (see section 2.2.49.5.2).
    public static let fImmediateBind = VARFLAGS(rawValue: 0x1000)
    
    public static let all: VARFLAGS = [
        .fReadonly,
        .fSource,
        .fBindable,
        .fRequestEdit,
        .fDisplayBind,
        .fDefaultBind,
        .fHidden,
        .fRestricted,
        .fDefaultCollElem,
        .fUIDefault,
        .fNonBrowsable,
        .fReplaceable,
        .fImmediateBind
    ]
}
