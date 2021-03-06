// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension SMS {

    ///  Describes the connectors registered with the AWS SMS.
    public func getConnectorsPaginator(_ input: GetConnectorsRequest, onPage: @escaping (GetConnectorsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getConnectors, tokenKey: \GetConnectorsResponse.nextToken, onPage: onPage)
    }

    ///  Describes the specified replication job or all of your replication jobs.
    public func getReplicationJobsPaginator(_ input: GetReplicationJobsRequest, onPage: @escaping (GetReplicationJobsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getReplicationJobs, tokenKey: \GetReplicationJobsResponse.nextToken, onPage: onPage)
    }

    ///  Describes the replication runs for the specified replication job.
    public func getReplicationRunsPaginator(_ input: GetReplicationRunsRequest, onPage: @escaping (GetReplicationRunsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getReplicationRuns, tokenKey: \GetReplicationRunsResponse.nextToken, onPage: onPage)
    }

    ///  Describes the servers in your server catalog. Before you can describe your servers, you must import them using ImportServerCatalog.
    public func getServersPaginator(_ input: GetServersRequest, onPage: @escaping (GetServersResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getServers, tokenKey: \GetServersResponse.nextToken, onPage: onPage)
    }

}

extension SMS.GetConnectorsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> SMS.GetConnectorsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension SMS.GetReplicationJobsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> SMS.GetReplicationJobsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            replicationJobId: self.replicationJobId
        )

    }
}

extension SMS.GetReplicationRunsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> SMS.GetReplicationRunsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            replicationJobId: self.replicationJobId
        )

    }
}

extension SMS.GetServersRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> SMS.GetServersRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            vmServerAddressList: self.vmServerAddressList
        )

    }
}


