// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension DirectoryService {

    ///  Provides information about any domain controllers in your directory.
    public func describeDomainControllersPaginator(_ input: DescribeDomainControllersRequest, onPage: @escaping (DescribeDomainControllersResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeDomainControllers, tokenKey: \DescribeDomainControllersResult.nextToken, onPage: onPage)
    }

}

extension DirectoryService.DescribeDomainControllersRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> DirectoryService.DescribeDomainControllersRequest {
        return .init(
            directoryId: self.directoryId, 
            domainControllerIds: self.domainControllerIds, 
            limit: self.limit, 
            nextToken: token
        )

    }
}


