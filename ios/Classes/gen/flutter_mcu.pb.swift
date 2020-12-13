// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: flutter_mcu.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Flutter call arguments
struct UpdateCallArgument {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var deviceUuid: String = String()

  var firmwareData: Data = Data()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct ProtoError {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var localizedDescription: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct UpdateStateChangesStreamArg {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var uuid: String = String()

  var updateStateChanges: UpdateStateChanges {
    get {return _updateStateChanges ?? UpdateStateChanges()}
    set {_updateStateChanges = newValue}
  }
  /// Returns true if `updateStateChanges` has been explicitly set.
  var hasUpdateStateChanges: Bool {return self._updateStateChanges != nil}
  /// Clears the value of `updateStateChanges`. Subsequent reads from it will return its default value.
  mutating func clearUpdateStateChanges() {self._updateStateChanges = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _updateStateChanges: UpdateStateChanges? = nil
}

struct UpdateStateChanges {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var oldState: UpdateStateChanges.FirmwareUpgradeState = .none

  var newState: UpdateStateChanges.FirmwareUpgradeState = .none

  var canceled: Bool = false

  var hasError_p: Bool = false

  var error: ProtoError {
    get {return _error ?? ProtoError()}
    set {_error = newValue}
  }
  /// Returns true if `error` has been explicitly set.
  var hasError: Bool {return self._error != nil}
  /// Clears the value of `error`. Subsequent reads from it will return its default value.
  mutating func clearError() {self._error = nil}

  var completed: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum FirmwareUpgradeState: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case none // = 0
    case validate // = 1
    case upload // = 2
    case test // = 3
    case reset // = 4
    case confirm // = 5
    case success // = 6
    case UNRECOGNIZED(Int)

    init() {
      self = .none
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .none
      case 1: self = .validate
      case 2: self = .upload
      case 3: self = .test
      case 4: self = .reset
      case 5: self = .confirm
      case 6: self = .success
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .none: return 0
      case .validate: return 1
      case .upload: return 2
      case .test: return 3
      case .reset: return 4
      case .confirm: return 5
      case .success: return 6
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}

  fileprivate var _error: ProtoError? = nil
}

#if swift(>=4.2)

extension UpdateStateChanges.FirmwareUpgradeState: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [UpdateStateChanges.FirmwareUpgradeState] = [
    .none,
    .validate,
    .upload,
    .test,
    .reset,
    .confirm,
    .success,
  ]
}

#endif  // swift(>=4.2)

struct ProgressUpdateStreamArg {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var uuid: String = String()

  var progressUpdate: ProgressUpdate {
    get {return _progressUpdate ?? ProgressUpdate()}
    set {_progressUpdate = newValue}
  }
  /// Returns true if `progressUpdate` has been explicitly set.
  var hasProgressUpdate: Bool {return self._progressUpdate != nil}
  /// Clears the value of `progressUpdate`. Subsequent reads from it will return its default value.
  mutating func clearProgressUpdate() {self._progressUpdate = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _progressUpdate: ProgressUpdate? = nil
}

struct ProgressUpdate {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var bytesSent: UInt64 = 0

  var imageSize: UInt64 = 0

  var timestamp: Double = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension UpdateCallArgument: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "UpdateCallArgument"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "device_uuid"),
    2: .standard(proto: "firmware_data"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.deviceUuid) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.firmwareData) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.deviceUuid.isEmpty {
      try visitor.visitSingularStringField(value: self.deviceUuid, fieldNumber: 1)
    }
    if !self.firmwareData.isEmpty {
      try visitor.visitSingularBytesField(value: self.firmwareData, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: UpdateCallArgument, rhs: UpdateCallArgument) -> Bool {
    if lhs.deviceUuid != rhs.deviceUuid {return false}
    if lhs.firmwareData != rhs.firmwareData {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ProtoError: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "ProtoError"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "localizedDescription"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.localizedDescription) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.localizedDescription.isEmpty {
      try visitor.visitSingularStringField(value: self.localizedDescription, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtoError, rhs: ProtoError) -> Bool {
    if lhs.localizedDescription != rhs.localizedDescription {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension UpdateStateChangesStreamArg: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "UpdateStateChangesStreamArg"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "uuid"),
    2: .same(proto: "updateStateChanges"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.uuid) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._updateStateChanges) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.uuid.isEmpty {
      try visitor.visitSingularStringField(value: self.uuid, fieldNumber: 1)
    }
    if let v = self._updateStateChanges {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: UpdateStateChangesStreamArg, rhs: UpdateStateChangesStreamArg) -> Bool {
    if lhs.uuid != rhs.uuid {return false}
    if lhs._updateStateChanges != rhs._updateStateChanges {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension UpdateStateChanges: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "UpdateStateChanges"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "oldState"),
    2: .same(proto: "newState"),
    3: .same(proto: "canceled"),
    4: .same(proto: "hasError"),
    5: .same(proto: "error"),
    6: .same(proto: "completed"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.oldState) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.newState) }()
      case 3: try { try decoder.decodeSingularBoolField(value: &self.canceled) }()
      case 4: try { try decoder.decodeSingularBoolField(value: &self.hasError_p) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._error) }()
      case 6: try { try decoder.decodeSingularBoolField(value: &self.completed) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.oldState != .none {
      try visitor.visitSingularEnumField(value: self.oldState, fieldNumber: 1)
    }
    if self.newState != .none {
      try visitor.visitSingularEnumField(value: self.newState, fieldNumber: 2)
    }
    if self.canceled != false {
      try visitor.visitSingularBoolField(value: self.canceled, fieldNumber: 3)
    }
    if self.hasError_p != false {
      try visitor.visitSingularBoolField(value: self.hasError_p, fieldNumber: 4)
    }
    if let v = self._error {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if self.completed != false {
      try visitor.visitSingularBoolField(value: self.completed, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: UpdateStateChanges, rhs: UpdateStateChanges) -> Bool {
    if lhs.oldState != rhs.oldState {return false}
    if lhs.newState != rhs.newState {return false}
    if lhs.canceled != rhs.canceled {return false}
    if lhs.hasError_p != rhs.hasError_p {return false}
    if lhs._error != rhs._error {return false}
    if lhs.completed != rhs.completed {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension UpdateStateChanges.FirmwareUpgradeState: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "NONE"),
    1: .same(proto: "VALIDATE"),
    2: .same(proto: "UPLOAD"),
    3: .same(proto: "TEST"),
    4: .same(proto: "RESET"),
    5: .same(proto: "CONFIRM"),
    6: .same(proto: "SUCCESS"),
  ]
}

extension ProgressUpdateStreamArg: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "ProgressUpdateStreamArg"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "uuid"),
    2: .same(proto: "progressUpdate"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.uuid) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._progressUpdate) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.uuid.isEmpty {
      try visitor.visitSingularStringField(value: self.uuid, fieldNumber: 1)
    }
    if let v = self._progressUpdate {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProgressUpdateStreamArg, rhs: ProgressUpdateStreamArg) -> Bool {
    if lhs.uuid != rhs.uuid {return false}
    if lhs._progressUpdate != rhs._progressUpdate {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ProgressUpdate: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "ProgressUpdate"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "bytesSent"),
    2: .same(proto: "imageSize"),
    3: .same(proto: "timestamp"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.bytesSent) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.imageSize) }()
      case 3: try { try decoder.decodeSingularDoubleField(value: &self.timestamp) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.bytesSent != 0 {
      try visitor.visitSingularUInt64Field(value: self.bytesSent, fieldNumber: 1)
    }
    if self.imageSize != 0 {
      try visitor.visitSingularUInt64Field(value: self.imageSize, fieldNumber: 2)
    }
    if self.timestamp != 0 {
      try visitor.visitSingularDoubleField(value: self.timestamp, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProgressUpdate, rhs: ProgressUpdate) -> Bool {
    if lhs.bytesSent != rhs.bytesSent {return false}
    if lhs.imageSize != rhs.imageSize {return false}
    if lhs.timestamp != rhs.timestamp {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
