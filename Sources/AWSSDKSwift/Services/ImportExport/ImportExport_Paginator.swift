// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension ImportExport {

    ///  This operation returns the jobs associated with the requester. AWS Import/Export lists the jobs in reverse chronological order based on the date of creation. For example if Job Test1 was created 2009Dec30 and Test2 was created 2010Feb05, the ListJobs operation would return Test2 followed by Test1.
    public func listJobsPaginator(_ input: ListJobsInput, onPage: @escaping (ListJobsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listJobs, tokenKey: \ListJobsOutput.jobs?.last?.jobId, onPage: onPage)
    }

}

extension ImportExport.ListJobsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ImportExport.ListJobsInput {
        return .init(
            aPIVersion: self.aPIVersion, 
            marker: token, 
            maxJobs: self.maxJobs
        )

    }
}


