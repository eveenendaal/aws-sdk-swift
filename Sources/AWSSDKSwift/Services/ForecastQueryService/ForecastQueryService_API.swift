// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS ForecastQueryService service.

Provides APIs for creating and managing Amazon Forecast resources.
*/
public struct ForecastQueryService {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the ForecastQueryService client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - eventLoopGroupProvider: EventLoopGroup to use. Use `useAWSClientShared` if the client shall manage its own EventLoopGroup.
    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "AmazonForecastRuntime",
            service: "forecastquery",
            signingName: "forecast",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-06-26",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [ForecastQueryServiceErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Retrieves a forecast filtered by the supplied criteria. The criteria is a key-value pair. The key is either item_id (or the equivalent non-timestamp, non-target field) from the TARGET_TIME_SERIES dataset, or one of the forecast dimensions specified as part of the FeaturizationConfig object. By default, the complete date range of the filtered forecast is returned. Optionally, you can request a specific date range within the forecast.  The forecasts generated by Amazon Forecast are in the same timezone as the dataset that was used to create the predictor. 
    public func queryForecast(_ input: QueryForecastRequest) -> EventLoopFuture<QueryForecastResponse> {
        return client.send(operation: "QueryForecast", path: "/", httpMethod: "POST", input: input)
    }
}
