// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for SNS
public enum SNSErrorType: AWSErrorType {
    case authorizationErrorException(message: String?)
    case concurrentAccessException(message: String?)
    case endpointDisabledException(message: String?)
    case filterPolicyLimitExceededException(message: String?)
    case internalErrorException(message: String?)
    case invalidParameterException(message: String?)
    case invalidParameterValueException(message: String?)
    case invalidSecurityException(message: String?)
    case kMSAccessDeniedException(message: String?)
    case kMSDisabledException(message: String?)
    case kMSInvalidStateException(message: String?)
    case kMSNotFoundException(message: String?)
    case kMSOptInRequired(message: String?)
    case kMSThrottlingException(message: String?)
    case notFoundException(message: String?)
    case platformApplicationDisabledException(message: String?)
    case resourceNotFoundException(message: String?)
    case staleTagException(message: String?)
    case subscriptionLimitExceededException(message: String?)
    case tagLimitExceededException(message: String?)
    case tagPolicyException(message: String?)
    case throttledException(message: String?)
    case topicLimitExceededException(message: String?)
}

extension SNSErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AuthorizationErrorException":
            self = .authorizationErrorException(message: message)
        case "ConcurrentAccessException":
            self = .concurrentAccessException(message: message)
        case "EndpointDisabledException":
            self = .endpointDisabledException(message: message)
        case "FilterPolicyLimitExceededException":
            self = .filterPolicyLimitExceededException(message: message)
        case "InternalErrorException":
            self = .internalErrorException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "InvalidParameterValueException":
            self = .invalidParameterValueException(message: message)
        case "InvalidSecurityException":
            self = .invalidSecurityException(message: message)
        case "KMSAccessDeniedException":
            self = .kMSAccessDeniedException(message: message)
        case "KMSDisabledException":
            self = .kMSDisabledException(message: message)
        case "KMSInvalidStateException":
            self = .kMSInvalidStateException(message: message)
        case "KMSNotFoundException":
            self = .kMSNotFoundException(message: message)
        case "KMSOptInRequired":
            self = .kMSOptInRequired(message: message)
        case "KMSThrottlingException":
            self = .kMSThrottlingException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "PlatformApplicationDisabledException":
            self = .platformApplicationDisabledException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "StaleTagException":
            self = .staleTagException(message: message)
        case "SubscriptionLimitExceededException":
            self = .subscriptionLimitExceededException(message: message)
        case "TagLimitExceededException":
            self = .tagLimitExceededException(message: message)
        case "TagPolicyException":
            self = .tagPolicyException(message: message)
        case "ThrottledException":
            self = .throttledException(message: message)
        case "TopicLimitExceededException":
            self = .topicLimitExceededException(message: message)
        default:
            return nil
        }
    }
}

extension SNSErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .authorizationErrorException(let message):
            return "AuthorizationErrorException: \(message ?? "")"
        case .concurrentAccessException(let message):
            return "ConcurrentAccessException: \(message ?? "")"
        case .endpointDisabledException(let message):
            return "EndpointDisabledException: \(message ?? "")"
        case .filterPolicyLimitExceededException(let message):
            return "FilterPolicyLimitExceededException: \(message ?? "")"
        case .internalErrorException(let message):
            return "InternalErrorException: \(message ?? "")"
        case .invalidParameterException(let message):
            return "InvalidParameterException: \(message ?? "")"
        case .invalidParameterValueException(let message):
            return "InvalidParameterValueException: \(message ?? "")"
        case .invalidSecurityException(let message):
            return "InvalidSecurityException: \(message ?? "")"
        case .kMSAccessDeniedException(let message):
            return "KMSAccessDeniedException: \(message ?? "")"
        case .kMSDisabledException(let message):
            return "KMSDisabledException: \(message ?? "")"
        case .kMSInvalidStateException(let message):
            return "KMSInvalidStateException: \(message ?? "")"
        case .kMSNotFoundException(let message):
            return "KMSNotFoundException: \(message ?? "")"
        case .kMSOptInRequired(let message):
            return "KMSOptInRequired: \(message ?? "")"
        case .kMSThrottlingException(let message):
            return "KMSThrottlingException: \(message ?? "")"
        case .notFoundException(let message):
            return "NotFoundException: \(message ?? "")"
        case .platformApplicationDisabledException(let message):
            return "PlatformApplicationDisabledException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .staleTagException(let message):
            return "StaleTagException: \(message ?? "")"
        case .subscriptionLimitExceededException(let message):
            return "SubscriptionLimitExceededException: \(message ?? "")"
        case .tagLimitExceededException(let message):
            return "TagLimitExceededException: \(message ?? "")"
        case .tagPolicyException(let message):
            return "TagPolicyException: \(message ?? "")"
        case .throttledException(let message):
            return "ThrottledException: \(message ?? "")"
        case .topicLimitExceededException(let message):
            return "TopicLimitExceededException: \(message ?? "")"
        }
    }
}