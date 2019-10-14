// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS DataSync AWS DataSync is a managed data transfer service that makes it simpler for you to automate moving data between on-premises storage and Amazon Simple Storage Service (Amazon S3) or Amazon Elastic File System (Amazon EFS).  This API interface reference for AWS DataSync contains documentation for a programming interface that you can use to manage AWS DataSync.
*/
public struct DataSync {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "FmrsService",
            service: "datasync",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-11-09",
            endpoint: endpoint,
            serviceEndpoints: ["fips-us-east-1": "datasync-fips.us-east-1.amazonaws.com", "fips-us-east-2": "datasync-fips.us-east-2.amazonaws.com", "fips-us-west-1": "datasync-fips.us-west-1.amazonaws.com", "fips-us-west-2": "datasync-fips.us-west-2.amazonaws.com"],
            middlewares: middlewares,
            possibleErrorTypes: [DataSyncErrorType.self]
        )
    }

    ///  Cancels execution of a task.  When you cancel a task execution, the transfer of some files are abruptly interrupted. The contents of files that are transferred to the destination might be incomplete or inconsistent with the source files. However, if you start a new task execution on the same task and you allow the task execution to complete, file content on the destination is complete and consistent. This applies to other unexpected failures that interrupt a task execution. In all of these cases, AWS DataSync successfully complete the transfer when you start the next task execution.
    public func cancelTaskExecution(_ input: CancelTaskExecutionRequest) -> Future<CancelTaskExecutionResponse> {
        return client.send(operation: "CancelTaskExecution", path: "/", httpMethod: "POST", input: input)
    }

    ///  Activates an AWS DataSync agent that you have deployed on your host. The activation process associates your agent with your account. In the activation process, you specify information such as the AWS Region that you want to activate the agent in. You activate the agent in the AWS Region where your target locations (in Amazon S3 or Amazon EFS) reside. Your tasks are created in this AWS Region. You can activate the agent in a VPC (Virtual private Cloud) or provide the agent access to a VPC endpoint so you can run tasks without going over the public Internet. You can use an agent for more than one location. If a task uses multiple agents, all of them need to have status AVAILABLE for the task to run. If you use multiple agents for a source location, the status of all the agents must be AVAILABLE for the task to run.  Agents are automatically updated by AWS on a regular basis, using a mechanism that ensures minimal interruption to your tasks. 
    public func createAgent(_ input: CreateAgentRequest) -> Future<CreateAgentResponse> {
        return client.send(operation: "CreateAgent", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an endpoint for an Amazon EFS file system.
    public func createLocationEfs(_ input: CreateLocationEfsRequest) -> Future<CreateLocationEfsResponse> {
        return client.send(operation: "CreateLocationEfs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Defines a file system on a Network File System (NFS) server that can be read from or written to
    public func createLocationNfs(_ input: CreateLocationNfsRequest) -> Future<CreateLocationNfsResponse> {
        return client.send(operation: "CreateLocationNfs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an endpoint for an Amazon S3 bucket. For AWS DataSync to access a destination S3 bucket, it needs an AWS Identity and Access Management (IAM) role that has the required permissions. You can set up the required permissions by creating an IAM policy that grants the required permissions and attaching the policy to the role. An example of such a policy is shown in the examples section. For more information, see https://docs.aws.amazon.com/datasync/latest/userguide/working-with-locations.html#create-s3-location in the AWS DataSync User Guide. 
    public func createLocationS3(_ input: CreateLocationS3Request) -> Future<CreateLocationS3Response> {
        return client.send(operation: "CreateLocationS3", path: "/", httpMethod: "POST", input: input)
    }

    ///  Defines a file system on an Server Message Block (SMB) server that can be read from or written to
    public func createLocationSmb(_ input: CreateLocationSmbRequest) -> Future<CreateLocationSmbResponse> {
        return client.send(operation: "CreateLocationSmb", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a task. A task is a set of two locations (source and destination) and a set of Options that you use to control the behavior of a task. If you don't specify Options when you create a task, AWS DataSync populates them with service defaults. When you create a task, it first enters the CREATING state. During CREATING AWS DataSync attempts to mount the on-premises Network File System (NFS) location. The task transitions to the AVAILABLE state without waiting for the AWS location to become mounted. If required, AWS DataSync mounts the AWS location before each task execution. If an agent that is associated with a source (NFS) location goes offline, the task transitions to the UNAVAILABLE status. If the status of the task remains in the CREATING status for more than a few minutes, it means that your agent might be having trouble mounting the source NFS file system. Check the task's ErrorCode and ErrorDetail. Mount issues are often caused by either a misconfigured firewall or a mistyped NFS server host name.
    public func createTask(_ input: CreateTaskRequest) -> Future<CreateTaskResponse> {
        return client.send(operation: "CreateTask", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an agent. To specify which agent to delete, use the Amazon Resource Name (ARN) of the agent in your request. The operation disassociates the agent from your AWS account. However, it doesn't delete the agent virtual machine (VM) from your on-premises environment.
    public func deleteAgent(_ input: DeleteAgentRequest) -> Future<DeleteAgentResponse> {
        return client.send(operation: "DeleteAgent", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the configuration of a location used by AWS DataSync. 
    public func deleteLocation(_ input: DeleteLocationRequest) -> Future<DeleteLocationResponse> {
        return client.send(operation: "DeleteLocation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a task.
    public func deleteTask(_ input: DeleteTaskRequest) -> Future<DeleteTaskResponse> {
        return client.send(operation: "DeleteTask", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns metadata such as the name, the network interfaces, and the status (that is, whether the agent is running or not) for an agent. To specify which agent to describe, use the Amazon Resource Name (ARN) of the agent in your request. 
    public func describeAgent(_ input: DescribeAgentRequest) -> Future<DescribeAgentResponse> {
        return client.send(operation: "DescribeAgent", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns metadata, such as the path information about an Amazon EFS location.
    public func describeLocationEfs(_ input: DescribeLocationEfsRequest) -> Future<DescribeLocationEfsResponse> {
        return client.send(operation: "DescribeLocationEfs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns metadata, such as the path information, about a NFS location.
    public func describeLocationNfs(_ input: DescribeLocationNfsRequest) -> Future<DescribeLocationNfsResponse> {
        return client.send(operation: "DescribeLocationNfs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns metadata, such as bucket name, about an Amazon S3 bucket location.
    public func describeLocationS3(_ input: DescribeLocationS3Request) -> Future<DescribeLocationS3Response> {
        return client.send(operation: "DescribeLocationS3", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns metadata, such as the path and user information about a SMB location.
    public func describeLocationSmb(_ input: DescribeLocationSmbRequest) -> Future<DescribeLocationSmbResponse> {
        return client.send(operation: "DescribeLocationSmb", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns metadata about a task.
    public func describeTask(_ input: DescribeTaskRequest) -> Future<DescribeTaskResponse> {
        return client.send(operation: "DescribeTask", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns detailed metadata about a task that is being executed.
    public func describeTaskExecution(_ input: DescribeTaskExecutionRequest) -> Future<DescribeTaskExecutionResponse> {
        return client.send(operation: "DescribeTaskExecution", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of agents owned by an AWS account in the AWS Region specified in the request. The returned list is ordered by agent Amazon Resource Name (ARN). By default, this operation returns a maximum of 100 agents. This operation supports pagination that enables you to optionally reduce the number of agents returned in a response. If you have more agents than are returned in a response (that is, the response returns only a truncated list of your agents), the response contains a marker that you can specify in your next request to fetch the next page of agents.
    public func listAgents(_ input: ListAgentsRequest) -> Future<ListAgentsResponse> {
        return client.send(operation: "ListAgents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a lists of source and destination locations. If you have more locations than are returned in a response (that is, the response returns only a truncated list of your agents), the response contains a token that you can specify in your next request to fetch the next page of locations.
    public func listLocations(_ input: ListLocationsRequest) -> Future<ListLocationsResponse> {
        return client.send(operation: "ListLocations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns all the tags associated with a specified resources. 
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> Future<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of executed tasks.
    public func listTaskExecutions(_ input: ListTaskExecutionsRequest) -> Future<ListTaskExecutionsResponse> {
        return client.send(operation: "ListTaskExecutions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of all the tasks.
    public func listTasks(_ input: ListTasksRequest) -> Future<ListTasksResponse> {
        return client.send(operation: "ListTasks", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts a specific invocation of a task. A TaskExecution value represents an individual run of a task. Each task can have at most one TaskExecution at a time.  TaskExecution has the following transition phases: INITIALIZING | PREPARING | TRANSFERRING | VERIFYING | SUCCESS/FAILURE.  For detailed information, see the Task Execution section in the Components and Terminology topic in the AWS DataSync User Guide.
    public func startTaskExecution(_ input: StartTaskExecutionRequest) -> Future<StartTaskExecutionResponse> {
        return client.send(operation: "StartTaskExecution", path: "/", httpMethod: "POST", input: input)
    }

    ///  Applies a key-value pair to an AWS resource.
    public func tagResource(_ input: TagResourceRequest) -> Future<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes a tag from an AWS resource.
    public func untagResource(_ input: UntagResourceRequest) -> Future<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the name of an agent.
    public func updateAgent(_ input: UpdateAgentRequest) -> Future<UpdateAgentResponse> {
        return client.send(operation: "UpdateAgent", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the metadata associated with a task.
    public func updateTask(_ input: UpdateTaskRequest) -> Future<UpdateTaskResponse> {
        return client.send(operation: "UpdateTask", path: "/", httpMethod: "POST", input: input)
    }
}