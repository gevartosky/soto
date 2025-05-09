//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2024 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

#if canImport(FoundationEssentials)
import FoundationEssentials
#else
import Foundation
#endif
@_exported import SotoCore

/// Service object for interacting with AWS S3Outposts service.
///
/// Amazon S3 on Outposts provides access to S3 on Outposts operations.
public struct S3Outposts: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the S3Outposts client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middleware: Middleware chain used to edit requests before they are sent and responses before they are decoded 
    ///     - timeout: Timeout value for HTTP requests
    ///     - byteBufferAllocator: Allocator for ByteBuffers
    ///     - options: Service options
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        middleware: AWSMiddlewareProtocol? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            serviceName: "S3Outposts",
            serviceIdentifier: "s3-outposts",
            serviceProtocol: .restjson,
            apiVersion: "2017-07-25",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: S3OutpostsErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.dualstack]: .init(endpoints: [
            "af-south-1": "s3-outposts.af-south-1.api.aws",
            "ap-east-1": "s3-outposts.ap-east-1.api.aws",
            "ap-northeast-1": "s3-outposts.ap-northeast-1.api.aws",
            "ap-northeast-2": "s3-outposts.ap-northeast-2.api.aws",
            "ap-northeast-3": "s3-outposts.ap-northeast-3.api.aws",
            "ap-south-1": "s3-outposts.ap-south-1.api.aws",
            "ap-southeast-1": "s3-outposts.ap-southeast-1.api.aws",
            "ap-southeast-2": "s3-outposts.ap-southeast-2.api.aws",
            "ap-southeast-3": "s3-outposts.ap-southeast-3.api.aws",
            "ca-central-1": "s3-outposts.ca-central-1.api.aws",
            "eu-central-1": "s3-outposts.eu-central-1.api.aws",
            "eu-north-1": "s3-outposts.eu-north-1.api.aws",
            "eu-south-1": "s3-outposts.eu-south-1.api.aws",
            "eu-west-1": "s3-outposts.eu-west-1.api.aws",
            "eu-west-2": "s3-outposts.eu-west-2.api.aws",
            "eu-west-3": "s3-outposts.eu-west-3.api.aws",
            "il-central-1": "s3-outposts.il-central-1.api.aws",
            "me-south-1": "s3-outposts.me-south-1.api.aws",
            "sa-east-1": "s3-outposts.sa-east-1.api.aws",
            "us-east-1": "s3-outposts.us-east-1.api.aws",
            "us-east-2": "s3-outposts.us-east-2.api.aws",
            "us-gov-east-1": "s3-outposts.us-gov-east-1.api.aws",
            "us-gov-west-1": "s3-outposts.us-gov-west-1.api.aws",
            "us-west-1": "s3-outposts.us-west-1.api.aws",
            "us-west-2": "s3-outposts.us-west-2.api.aws"
        ]),
        [.dualstack, .fips]: .init(endpoints: [
            "ca-central-1": "s3-outposts-fips.ca-central-1.api.aws",
            "us-east-1": "s3-outposts-fips.us-east-1.api.aws",
            "us-east-2": "s3-outposts-fips.us-east-2.api.aws",
            "us-gov-east-1": "s3-outposts-fips.us-gov-east-1.api.aws",
            "us-gov-west-1": "s3-outposts-fips.us-gov-west-1.api.aws",
            "us-west-1": "s3-outposts-fips.us-west-1.api.aws",
            "us-west-2": "s3-outposts-fips.us-west-2.api.aws"
        ]),
        [.fips]: .init(endpoints: [
            "ca-central-1": "s3-outposts-fips.ca-central-1.amazonaws.com",
            "us-east-1": "s3-outposts-fips.us-east-1.amazonaws.com",
            "us-east-2": "s3-outposts-fips.us-east-2.amazonaws.com",
            "us-gov-east-1": "s3-outposts-fips.us-gov-east-1.amazonaws.com",
            "us-gov-west-1": "s3-outposts-fips.us-gov-west-1.amazonaws.com",
            "us-iso-east-1": "s3-outposts-fips.us-iso-east-1.c2s.ic.gov",
            "us-isob-east-1": "s3-outposts-fips.us-isob-east-1.sc2s.sgov.gov",
            "us-west-1": "s3-outposts-fips.us-west-1.amazonaws.com",
            "us-west-2": "s3-outposts-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Creates an endpoint and associates it with the specified Outpost.  It can take up to 5 minutes for this action to finish.   Related actions include:    DeleteEndpoint     ListEndpoints
    @Sendable
    @inlinable
    public func createEndpoint(_ input: CreateEndpointRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateEndpointResult {
        try await self.client.execute(
            operation: "CreateEndpoint", 
            path: "/S3Outposts/CreateEndpoint", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Creates an endpoint and associates it with the specified Outpost.  It can take up to 5 minutes for this action to finish.   Related actions include:    DeleteEndpoint     ListEndpoints
    ///
    /// Parameters:
    ///   - accessType: The type of access for the network connectivity for the Amazon S3 on Outposts endpoint. To use the Amazon Web Services VPC, choose Private. To use the endpoint with an on-premises network, choose CustomerOwnedIp.  If you choose CustomerOwnedIp, you must also provide the customer-owned IP address pool (CoIP pool).   Private is the default access type value.
    ///   - customerOwnedIpv4Pool: The ID of the customer-owned IPv4 address pool (CoIP pool) for the endpoint. IP addresses are allocated from this pool for the endpoint.
    ///   - outpostId: The ID of the Outposts.
    ///   - securityGroupId: The ID of the security group to use with the endpoint.
    ///   - subnetId: The ID of the subnet in the selected VPC. The endpoint subnet must belong to the Outpost that has Amazon S3 on Outposts provisioned.
    ///   - logger: Logger use during operation
    @inlinable
    public func createEndpoint(
        accessType: EndpointAccessType? = nil,
        customerOwnedIpv4Pool: String? = nil,
        outpostId: String,
        securityGroupId: String,
        subnetId: String,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> CreateEndpointResult {
        let input = CreateEndpointRequest(
            accessType: accessType, 
            customerOwnedIpv4Pool: customerOwnedIpv4Pool, 
            outpostId: outpostId, 
            securityGroupId: securityGroupId, 
            subnetId: subnetId
        )
        return try await self.createEndpoint(input, logger: logger)
    }

    /// Deletes an endpoint.  It can take up to 5 minutes for this action to finish.   Related actions include:    CreateEndpoint     ListEndpoints
    @Sendable
    @inlinable
    public func deleteEndpoint(_ input: DeleteEndpointRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        try await self.client.execute(
            operation: "DeleteEndpoint", 
            path: "/S3Outposts/DeleteEndpoint", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Deletes an endpoint.  It can take up to 5 minutes for this action to finish.   Related actions include:    CreateEndpoint     ListEndpoints
    ///
    /// Parameters:
    ///   - endpointId: The ID of the endpoint.
    ///   - outpostId: The ID of the Outposts.
    ///   - logger: Logger use during operation
    @inlinable
    public func deleteEndpoint(
        endpointId: String,
        outpostId: String,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws {
        let input = DeleteEndpointRequest(
            endpointId: endpointId, 
            outpostId: outpostId
        )
        return try await self.deleteEndpoint(input, logger: logger)
    }

    /// Lists endpoints associated with the specified Outpost.  Related actions include:    CreateEndpoint     DeleteEndpoint
    @Sendable
    @inlinable
    public func listEndpoints(_ input: ListEndpointsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListEndpointsResult {
        try await self.client.execute(
            operation: "ListEndpoints", 
            path: "/S3Outposts/ListEndpoints", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Lists endpoints associated with the specified Outpost.  Related actions include:    CreateEndpoint     DeleteEndpoint
    ///
    /// Parameters:
    ///   - maxResults: The maximum number of endpoints that will be returned in the response.
    ///   - nextToken: If a previous response from this operation included a NextToken value,  provide that value here to retrieve the next page of results.
    ///   - logger: Logger use during operation
    @inlinable
    public func listEndpoints(
        maxResults: Int? = nil,
        nextToken: String? = nil,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> ListEndpointsResult {
        let input = ListEndpointsRequest(
            maxResults: maxResults, 
            nextToken: nextToken
        )
        return try await self.listEndpoints(input, logger: logger)
    }

    /// Lists the Outposts with S3 on Outposts capacity for your Amazon Web Services account. Includes S3 on Outposts that you have access to as the Outposts owner, or as a shared user from Resource Access Manager (RAM).
    @Sendable
    @inlinable
    public func listOutpostsWithS3(_ input: ListOutpostsWithS3Request, logger: Logger = AWSClient.loggingDisabled) async throws -> ListOutpostsWithS3Result {
        try await self.client.execute(
            operation: "ListOutpostsWithS3", 
            path: "/S3Outposts/ListOutpostsWithS3", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Lists the Outposts with S3 on Outposts capacity for your Amazon Web Services account. Includes S3 on Outposts that you have access to as the Outposts owner, or as a shared user from Resource Access Manager (RAM).
    ///
    /// Parameters:
    ///   - maxResults: The maximum number of Outposts to return. The limit is 100.
    ///   - nextToken: When you can get additional results from the ListOutpostsWithS3 call, a NextToken parameter is returned in the output. You can then pass in a subsequent command to the NextToken parameter to continue listing additional Outposts.
    ///   - logger: Logger use during operation
    @inlinable
    public func listOutpostsWithS3(
        maxResults: Int? = nil,
        nextToken: String? = nil,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> ListOutpostsWithS3Result {
        let input = ListOutpostsWithS3Request(
            maxResults: maxResults, 
            nextToken: nextToken
        )
        return try await self.listOutpostsWithS3(input, logger: logger)
    }

    /// Lists all endpoints associated with an Outpost that has been shared by Amazon Web Services Resource Access Manager (RAM). Related actions include:    CreateEndpoint     DeleteEndpoint
    @Sendable
    @inlinable
    public func listSharedEndpoints(_ input: ListSharedEndpointsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListSharedEndpointsResult {
        try await self.client.execute(
            operation: "ListSharedEndpoints", 
            path: "/S3Outposts/ListSharedEndpoints", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Lists all endpoints associated with an Outpost that has been shared by Amazon Web Services Resource Access Manager (RAM). Related actions include:    CreateEndpoint     DeleteEndpoint
    ///
    /// Parameters:
    ///   - maxResults: The maximum number of endpoints that will be returned in the response.
    ///   - nextToken: If a previous response from this operation included a NextToken value, you can provide that value here to retrieve the next page of results.
    ///   - outpostId: The ID of the Amazon Web Services Outpost.
    ///   - logger: Logger use during operation
    @inlinable
    public func listSharedEndpoints(
        maxResults: Int? = nil,
        nextToken: String? = nil,
        outpostId: String,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> ListSharedEndpointsResult {
        let input = ListSharedEndpointsRequest(
            maxResults: maxResults, 
            nextToken: nextToken, 
            outpostId: outpostId
        )
        return try await self.listSharedEndpoints(input, logger: logger)
    }
}

extension S3Outposts {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: S3Outposts, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension S3Outposts {
    /// Return PaginatorSequence for operation ``listEndpoints(_:logger:)``.
    ///
    /// - Parameters:
    ///   - input: Input for operation
    ///   - logger: Logger used for logging
    @inlinable
    public func listEndpointsPaginator(
        _ input: ListEndpointsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListEndpointsRequest, ListEndpointsResult> {
        return .init(
            input: input,
            command: self.listEndpoints,
            inputKey: \ListEndpointsRequest.nextToken,
            outputKey: \ListEndpointsResult.nextToken,
            logger: logger
        )
    }
    /// Return PaginatorSequence for operation ``listEndpoints(_:logger:)``.
    ///
    /// - Parameters:
    ///   - maxResults: The maximum number of endpoints that will be returned in the response.
    ///   - logger: Logger used for logging
    @inlinable
    public func listEndpointsPaginator(
        maxResults: Int? = nil,
        logger: Logger = AWSClient.loggingDisabled        
    ) -> AWSClient.PaginatorSequence<ListEndpointsRequest, ListEndpointsResult> {
        let input = ListEndpointsRequest(
            maxResults: maxResults
        )
        return self.listEndpointsPaginator(input, logger: logger)
    }

    /// Return PaginatorSequence for operation ``listOutpostsWithS3(_:logger:)``.
    ///
    /// - Parameters:
    ///   - input: Input for operation
    ///   - logger: Logger used for logging
    @inlinable
    public func listOutpostsWithS3Paginator(
        _ input: ListOutpostsWithS3Request,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListOutpostsWithS3Request, ListOutpostsWithS3Result> {
        return .init(
            input: input,
            command: self.listOutpostsWithS3,
            inputKey: \ListOutpostsWithS3Request.nextToken,
            outputKey: \ListOutpostsWithS3Result.nextToken,
            logger: logger
        )
    }
    /// Return PaginatorSequence for operation ``listOutpostsWithS3(_:logger:)``.
    ///
    /// - Parameters:
    ///   - maxResults: The maximum number of Outposts to return. The limit is 100.
    ///   - logger: Logger used for logging
    @inlinable
    public func listOutpostsWithS3Paginator(
        maxResults: Int? = nil,
        logger: Logger = AWSClient.loggingDisabled        
    ) -> AWSClient.PaginatorSequence<ListOutpostsWithS3Request, ListOutpostsWithS3Result> {
        let input = ListOutpostsWithS3Request(
            maxResults: maxResults
        )
        return self.listOutpostsWithS3Paginator(input, logger: logger)
    }

    /// Return PaginatorSequence for operation ``listSharedEndpoints(_:logger:)``.
    ///
    /// - Parameters:
    ///   - input: Input for operation
    ///   - logger: Logger used for logging
    @inlinable
    public func listSharedEndpointsPaginator(
        _ input: ListSharedEndpointsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListSharedEndpointsRequest, ListSharedEndpointsResult> {
        return .init(
            input: input,
            command: self.listSharedEndpoints,
            inputKey: \ListSharedEndpointsRequest.nextToken,
            outputKey: \ListSharedEndpointsResult.nextToken,
            logger: logger
        )
    }
    /// Return PaginatorSequence for operation ``listSharedEndpoints(_:logger:)``.
    ///
    /// - Parameters:
    ///   - maxResults: The maximum number of endpoints that will be returned in the response.
    ///   - outpostId: The ID of the Amazon Web Services Outpost.
    ///   - logger: Logger used for logging
    @inlinable
    public func listSharedEndpointsPaginator(
        maxResults: Int? = nil,
        outpostId: String,
        logger: Logger = AWSClient.loggingDisabled        
    ) -> AWSClient.PaginatorSequence<ListSharedEndpointsRequest, ListSharedEndpointsResult> {
        let input = ListSharedEndpointsRequest(
            maxResults: maxResults, 
            outpostId: outpostId
        )
        return self.listSharedEndpointsPaginator(input, logger: logger)
    }
}

extension S3Outposts.ListEndpointsRequest: AWSPaginateToken {
    @inlinable
    public func usingPaginationToken(_ token: String) -> S3Outposts.ListEndpointsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension S3Outposts.ListOutpostsWithS3Request: AWSPaginateToken {
    @inlinable
    public func usingPaginationToken(_ token: String) -> S3Outposts.ListOutpostsWithS3Request {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension S3Outposts.ListSharedEndpointsRequest: AWSPaginateToken {
    @inlinable
    public func usingPaginationToken(_ token: String) -> S3Outposts.ListSharedEndpointsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            outpostId: self.outpostId
        )
    }
}
