//
//  File.swift
//  
//
//  Created by Hugh Bellamy on 29/11/2020.
//

/// [MS_OAUT] 2.2.7 VARIANT Type Constants
/// The VARENUM enumeration constants are used in the discriminant field, vt, of the VARIANT type specified in section 2.2.29.2. When
/// present, the VT_BYREF flag MUST be in an OR relation with another value to specify the byref argument for the VARIANT. The VT_EMPTY
/// and VT_NULL values MUST NOT be specified with the VT_BYREF bit flag.
/// The following values are also used in the discriminant field, vt, of the TYPEDESC structure specified in section 2.2.37.
/// The meaning of each VARIANT type constant is specified as follows. The Context column specifies the context in which each constant is used.
/// A constant MUST NOT be used in a VARIANT unless it is specified with a "V". A constant MUST NOT be used in a SAFEARRAY unless it is
/// specified with an "S". A constant MUST NOT be used in a TYPEDESC unless it is specified with a "T".
/// typedef enum tagVARENUM
/// {
///  VT_EMPTY = 0x0000,
///  VT_NULL = 0x0001,
///  VT_I2 = 0x0002,
///  VT_I4 = 0x0003,
///  VT_R4 = 0x0004,
///  VT_R8 = 0x0005,
///  VT_CY = 0x0006,
///  VT_DATE = 0x0007,
///  VT_BSTR = 0x0008,
///  VT_DISPATCH = 0x0009,
///  VT_ERROR = 0x000A,
///  VT_BOOL = 0x000B,
///  VT_VARIANT = 0x000C,
///  VT_UNKNOWN = 0x000D,
///  VT_DECIMAL = 0x000E,
///  VT_I1 = 0x0010,
///  VT_UI1 = 0x0011,
///  VT_UI2 = 0x0012,
///  VT_UI4 = 0x0013,
///  VT_I8 = 0x0014,
///  VT_UI8 = 0x0015,
///  VT_INT = 0x0016,
///  VT_UINT = 0x0017,
///  VT_VOID = 0x0018,
///  VT_HRESULT = 0x0019,
///  VT_PTR = 0x001A,
///  VT_SAFEARRAY = 0x001B,
///  VT_CARRAY = 0x001C,
///  VT_USERDEFINED = 0x001D,
///  VT_LPSTR = 0x001E,
///  VT_LPWSTR = 0x001F,
///  VT_RECORD = 0x0024,
///  VT_INT_PTR = 0x0025,
///  VT_UINT_PTR = 0x0026,
///  VT_ARRAY = 0x2000,
///  VT_BYREF = 0x4000
/// } VARENUM;
public enum VARENUM: UInt16 {
    /// VT_EMPTY:
    /// Context Description
    /// V The type of the contained field is undefined. When this flag is specified, the VARIANT MUST NOT contain a data field. The VARIANT
    /// definition is specified in section 2.2.29.2.
    case empty = 0x0000

    /// VT_NULL:
    /// Context Description
    /// V The type of the contained field is NULL. When this flag is specified, the VARIANT MUST NOT contain a data field. The VARIANT
    /// definition is specified in section 2.2.29.2.
    case null = 0x0001

    /// VT_I2:
    /// Context Description
    /// V, S, T Either the specified type, or the type of the element or contained field MUST be a 2-byte signed integer.
    case i2 = 0x0002

    /// VT_I4:
    /// Context Description
    /// V, S, T Either the specified type, or the type of the element or contained field MUST be a 4-byte signed integer.
    case i4 = 0x0003

    /// VT_R4:
    /// Context Description
    /// V, S, T Either the specified type, or the type of the element or contained field MUST be a 4-byte IEEE floatingpoint number.
    case r4 = 0x0004

    /// VT_R8:
    /// Context Description
    /// V, S, T Either the specified type, or the type of the element or contained field MUST be an 8-byte IEEE floating-point number.
    case r8 = 0x0005

    /// VT_CY:
    /// Context Description
    /// V, S, T Either the specified type, or the type of the element or contained field MUST be CURRENCY (see section 2.2.24).
    case cy = 0x0006

    /// VT_DATE:
    /// Context Description
    /// V, S, T Either the specified type, or the type of the element or contained field MUST be DATE (see section 2.2.25).
    case date = 0x0007

    /// VT_BSTR:
    /// Context Description
    /// V, S, T Either the specified type, or the type of the element or contained field MUST be BSTR (see section 2.2.23).
    case bstr = 0x0008
    
    /// VT_DISPATCH:
    /// Context Description
    /// V, S, T Either the specified type, or the type of the element or contained field MUST be a pointer to IDispatch (see section 3.1.4).
    case dispatch = 0x0009

    /// VT_ERROR:
    /// Context Description
    /// V, S, T Either the specified type, or the type of the element or contained field MUST be HRESULT.
    case error = 0x000A

    /// VT_BOOL:
    /// Context Description
    /// V, S, T Either the specified type, or the type of the element or contained field MUST be VARIANT_BOOL (see section 2.2.27).
    case bool = 0x000B

    /// VT_VARIANT:
    /// Context Description
    /// V, S, T Either the specified type, or the type of the element or contained field MUST be VARIANT (see section 2.2.29). It MUST appear
    /// with the bit flag VT_BYREF.
    case variant = 0x000C

    /// VT_UNKNOWN:
    /// Context Description
    /// V, S, T Either the specified type, or the type of the element or contained field MUST be a pointer to IUnknown.
    case unknown = 0x000D

    /// VT_DECIMAL:
    /// Context Description
    /// V, S, T Either the specified type, or the type of the element or contained field MUST be DECIMAL (see section 2.2.26).
    case decimal = 0x000E

    /// VT_I1:
    /// Context Description
    /// V, S, T Either the specified type, or the type of the element or contained field MUST be a 1-byte integer.
    case i1 = 0x0010

    /// VT_UI1:
    /// Context Description
    /// V, S, T Either the specified type, or the type of the element or contained field MUST be a 1-byte unsigned integer.
    case ui1 = 0x0011

    /// VT_UI2:
    /// Context Description
    /// V, S, T Either the specified type, or the type of the element or contained field MUST be a 2-byte unsigned integer.
    case ui2 = 0x0012

    /// VT_UI4:
    /// Context Description
    /// V, S, T Either the specified type, or the type of the element or contained field MUST be a 4-byte unsigned integer.
    case ui4 = 0x0013
    
    /// VT_I8:
    /// Context Description
    /// V, S, T Either the specified type, or the type of the element or contained field MUST be an 8-byte signed integer.
    case i8 = 0x0014

    /// VT_UI8:
    /// Context Description
    /// V, S, T Either the specified type, or the type of the element or contained field MUST be an 8-byte unsigned integer.
    case ui8 = 0x0015

    /// VT_INT:
    /// Context Description
    /// V, S, T Either the specified type, or the type of the element or contained field MUST be a 4-byte signed integer.
    case int = 0x0016

    /// VT_UINT:
    /// Context Description
    /// V, S, T Either the specified type, or the type of the element or contained field MUST be a 4-byte unsigned integer.
    case uint = 0x0017

    /// VT_VOID:
    /// Context Description
    /// T The specified type MUST be void.
    case void = 0x0018

    /// VT_HRESULT:
    /// Context Description
    /// T The specified type MUST be HRESULT.
    case hresult = 0x0019

    /// VT_PTR:
    /// Context Description
    /// T The specified type MUST be a unique pointer, as specified in [C706] section 4.2.20.2.
    case ptr = 0x001A

    /// VT_SAFEARRAY:
    /// Context Description
    /// T The specified type MUST be SAFEARRAY (section 2.2.30).
    case safearray = 0x001B

    /// VT_CARRAY:
    /// Context Description
    /// T The specified type MUST be a fixed-size array.
    case carray = 0x001C

    /// VT_USERDEFINED:
    /// Context Description
    /// T The specified type MUST be user defined.
    case userDefined = 0x001D

    /// VT_LPSTR:
    /// Context Description
    /// T The specified type MUST be a NULL-terminated string, as specified in [C706] section 14.3.4.
    case lpstr = 0x001E

    /// VT_LPWSTR:
    /// Context Description
    /// T The specified type MUST be a zero-terminated string of UNICODE characters, as specified in [C706], section 14.3.4.
    case lpwstr = 0x001F

    /// VT_RECORD:
    /// Context Description
    /// V, S The type of the element or contained field MUST be a BRECORD (see section 2.2.28.2).
    case record = 0x0024

    /// VT_INT_PTR:
    /// Context Description
    /// T The specified type MUST be either a 4-byte or an 8-byte signed integer. The size of the integer is platform specific and determines the
    /// system pointer size value, as specified in section 2.2.21.
    case intPtr = 0x0025

    /// VT_UINT_PTR:
    /// Context Description
    /// T The specified type MUST be either a 4 byte or an 8 byte unsigned integer. The size of the integer is platform specific and determines
    /// the system pointer size value, as specified in section 2.2.21.
    case uintPtr = 0x0026

    /// VT_ARRAY:
    /// Context Description
    /// V, S The type of the element or contained field MUST be a SAFEARRAY (see section 2.2.30.10).
    case array = 0x2000

    /// VT_BYREF:
    /// Context Description
    /// V, S The type of the element or contained field MUST be a pointer to one of the types listed in the previous rows of this table. If present,
    /// this bit flag MUST appear in a VARIANT discriminant (see section 2.2.28) with one of the previous flags.
    case byRef = 0x4000
}
