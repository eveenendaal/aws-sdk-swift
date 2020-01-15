// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for RDSDataService
public enum RDSDataServiceErrorType: AWSErrorType {
    case badRequestException(message: String?)
    case forbiddenException(message: String?)
    case internalServerErrorException(message: String?)
    case notFoundException(message: String?)
    case serviceUnavailableError(message: String?)
    case statementTimeoutException(message: String?)
}

extension RDSDataServiceErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "ForbiddenException":
            self = .forbiddenException(message: message)
        case "InternalServerErrorException":
            self = .internalServerErrorException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "ServiceUnavailableError":
            self = .serviceUnavailableError(message: message)
        case "StatementTimeoutException":
            self = .statementTimeoutException(message: message)
        default:
            return nil
        }
    }
}

extension RDSDataServiceErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .badRequestException(let message):
            return "BadRequestException: \(message ?? "")"
        case .forbiddenException(let message):
            return "ForbiddenException: \(message ?? "")"
        case .internalServerErrorException(let message):
            return "InternalServerErrorException: \(message ?? "")"
        case .notFoundException(let message):
            return "NotFoundException: \(message ?? "")"
        case .serviceUnavailableError(let message):
            return "ServiceUnavailableError: \(message ?? "")"
        case .statementTimeoutException(let message):
            return "StatementTimeoutException: \(message ?? "")"
        }
    }
}