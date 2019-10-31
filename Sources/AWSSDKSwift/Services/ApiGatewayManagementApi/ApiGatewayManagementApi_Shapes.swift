// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension ApiGatewayManagementApi {

    public struct DeleteConnectionRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ConnectionId", location: .uri(locationName: "connectionId"), required: true, type: .string)
        ]

        public let connectionId: String

        public init(connectionId: String) {
            self.connectionId = connectionId
        }

        private enum CodingKeys: String, CodingKey {
            case connectionId = "connectionId"
        }
    }

    public struct GetConnectionRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ConnectionId", location: .uri(locationName: "connectionId"), required: true, type: .string)
        ]

        public let connectionId: String

        public init(connectionId: String) {
            self.connectionId = connectionId
        }

        private enum CodingKeys: String, CodingKey {
            case connectionId = "connectionId"
        }
    }

    public struct GetConnectionResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ConnectedAt", location: .body(locationName: "connectedAt"), required: false, type: .timestamp), 
            AWSShapeMember(label: "Identity", location: .body(locationName: "identity"), required: false, type: .structure), 
            AWSShapeMember(label: "LastActiveAt", location: .body(locationName: "lastActiveAt"), required: false, type: .timestamp)
        ]

        public let connectedAt: TimeStamp?
        public let identity: Identity?
        public let lastActiveAt: TimeStamp?

        public init(connectedAt: TimeStamp? = nil, identity: Identity? = nil, lastActiveAt: TimeStamp? = nil) {
            self.connectedAt = connectedAt
            self.identity = identity
            self.lastActiveAt = lastActiveAt
        }

        private enum CodingKeys: String, CodingKey {
            case connectedAt = "connectedAt"
            case identity = "identity"
            case lastActiveAt = "lastActiveAt"
        }
    }

    public struct Identity: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "SourceIp", location: .body(locationName: "sourceIp"), required: true, type: .string), 
            AWSShapeMember(label: "UserAgent", location: .body(locationName: "userAgent"), required: true, type: .string)
        ]

        /// The source IP address of the TCP connection making the request to API Gateway.
        public let sourceIp: String
        /// The User Agent of the API caller.
        public let userAgent: String

        public init(sourceIp: String, userAgent: String) {
            self.sourceIp = sourceIp
            self.userAgent = userAgent
        }

        private enum CodingKeys: String, CodingKey {
            case sourceIp = "sourceIp"
            case userAgent = "userAgent"
        }
    }

    public struct PostToConnectionRequest: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "Data"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ConnectionId", location: .uri(locationName: "connectionId"), required: true, type: .string), 
            AWSShapeMember(label: "Data", required: true, type: .blob)
        ]

        public let connectionId: String
        public let data: Data

        public init(connectionId: String, data: Data) {
            self.connectionId = connectionId
            self.data = data
        }

        public func validate(name: String) throws {
            try validate(self.data, name:"data", parent: name, max: 131072)
        }

        private enum CodingKeys: String, CodingKey {
            case connectionId = "connectionId"
            case data = "Data"
        }
    }
}