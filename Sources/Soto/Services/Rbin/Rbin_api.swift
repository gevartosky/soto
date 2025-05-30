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

/// Service object for interacting with AWS Rbin service.
///
/// This is the Recycle Bin API Reference. This documentation provides  descriptions and syntax for each of the actions and data types in Recycle Bin. Recycle Bin is a resource recovery feature that enables you to restore accidentally  deleted snapshots and EBS-backed AMIs. When using Recycle Bin, if your resources are  deleted, they are retained in the Recycle Bin for a time period that you specify. You can restore a resource from the Recycle Bin at any time before its retention period  expires. After you restore a resource from the Recycle Bin, the resource is removed from the  Recycle Bin, and you can then use it in the same way you use any other resource of that type  in your account. If the retention period expires and the resource is not restored, the resource  is permanently deleted from the Recycle Bin and is no longer available for recovery. For more  information about Recycle Bin, see  Recycle Bin in the Amazon Elastic Compute Cloud User Guide.
public struct Rbin: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Rbin client
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
            serviceName: "Rbin",
            serviceIdentifier: "rbin",
            serviceProtocol: .restjson,
            apiVersion: "2021-06-15",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: RbinErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.dualstack]: .init(endpoints: [
            "af-south-1": "rbin.af-south-1.api.aws",
            "ap-east-1": "rbin.ap-east-1.api.aws",
            "ap-northeast-1": "rbin.ap-northeast-1.api.aws",
            "ap-northeast-2": "rbin.ap-northeast-2.api.aws",
            "ap-northeast-3": "rbin.ap-northeast-3.api.aws",
            "ap-south-1": "rbin.ap-south-1.api.aws",
            "ap-south-2": "rbin.ap-south-2.api.aws",
            "ap-southeast-1": "rbin.ap-southeast-1.api.aws",
            "ap-southeast-2": "rbin.ap-southeast-2.api.aws",
            "ap-southeast-3": "rbin.ap-southeast-3.api.aws",
            "ap-southeast-4": "rbin.ap-southeast-4.api.aws",
            "ap-southeast-5": "rbin.ap-southeast-5.api.aws",
            "ca-central-1": "rbin.ca-central-1.api.aws",
            "ca-west-1": "rbin.ca-west-1.api.aws",
            "cn-north-1": "rbin.cn-north-1.api.amazonwebservices.com.cn",
            "cn-northwest-1": "rbin.cn-northwest-1.api.amazonwebservices.com.cn",
            "eu-central-1": "rbin.eu-central-1.api.aws",
            "eu-central-2": "rbin.eu-central-2.api.aws",
            "eu-north-1": "rbin.eu-north-1.api.aws",
            "eu-south-1": "rbin.eu-south-1.api.aws",
            "eu-south-2": "rbin.eu-south-2.api.aws",
            "eu-west-1": "rbin.eu-west-1.api.aws",
            "eu-west-2": "rbin.eu-west-2.api.aws",
            "eu-west-3": "rbin.eu-west-3.api.aws",
            "il-central-1": "rbin.il-central-1.api.aws",
            "me-central-1": "rbin.me-central-1.api.aws",
            "me-south-1": "rbin.me-south-1.api.aws",
            "sa-east-1": "rbin.sa-east-1.api.aws",
            "us-east-1": "rbin.us-east-1.api.aws",
            "us-east-2": "rbin.us-east-2.api.aws",
            "us-gov-east-1": "rbin.us-gov-east-1.api.aws",
            "us-gov-west-1": "rbin.us-gov-west-1.api.aws",
            "us-west-1": "rbin.us-west-1.api.aws",
            "us-west-2": "rbin.us-west-2.api.aws"
        ]),
        [.dualstack, .fips]: .init(endpoints: [
            "ca-central-1": "rbin-fips.ca-central-1.api.aws",
            "ca-west-1": "rbin-fips.ca-west-1.api.aws",
            "us-east-1": "rbin-fips.us-east-1.api.aws",
            "us-east-2": "rbin-fips.us-east-2.api.aws",
            "us-gov-east-1": "rbin-fips.us-gov-east-1.api.aws",
            "us-gov-west-1": "rbin-fips.us-gov-west-1.api.aws",
            "us-west-1": "rbin-fips.us-west-1.api.aws",
            "us-west-2": "rbin-fips.us-west-2.api.aws"
        ]),
        [.fips]: .init(endpoints: [
            "ca-central-1": "rbin-fips.ca-central-1.amazonaws.com",
            "ca-west-1": "rbin-fips.ca-west-1.amazonaws.com",
            "us-east-1": "rbin-fips.us-east-1.amazonaws.com",
            "us-east-2": "rbin-fips.us-east-2.amazonaws.com",
            "us-gov-east-1": "rbin-fips.us-gov-east-1.amazonaws.com",
            "us-gov-west-1": "rbin-fips.us-gov-west-1.amazonaws.com",
            "us-iso-east-1": "rbin-fips.us-iso-east-1.c2s.ic.gov",
            "us-iso-west-1": "rbin-fips.us-iso-west-1.c2s.ic.gov",
            "us-isob-east-1": "rbin-fips.us-isob-east-1.sc2s.sgov.gov",
            "us-west-1": "rbin-fips.us-west-1.amazonaws.com",
            "us-west-2": "rbin-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Creates a Recycle Bin retention rule. You can create two types of retention rules:    Tag-level retention rules - These retention rules use  resource tags to identify the resources to protect. For each retention rule, you specify one or  more tag key and value pairs. Resources (of the specified type) that have at least one of these  tag key and value pairs are automatically retained in the Recycle Bin upon deletion. Use this  type of retention rule to protect specific resources in your account based on their tags.    Region-level retention rules - These retention rules,  by default, apply to all of the resources (of the specified type) in the Region, even if the  resources are not tagged. However, you can specify exclusion tags to exclude resources that have  specific tags. Use this type of retention rule to protect all resources of a specific type in a  Region.   For more information, see  Create Recycle Bin retention rules in the Amazon EBS User Guide.
    @Sendable
    @inlinable
    public func createRule(_ input: CreateRuleRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateRuleResponse {
        try await self.client.execute(
            operation: "CreateRule", 
            path: "/rules", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Creates a Recycle Bin retention rule. You can create two types of retention rules:    Tag-level retention rules - These retention rules use  resource tags to identify the resources to protect. For each retention rule, you specify one or  more tag key and value pairs. Resources (of the specified type) that have at least one of these  tag key and value pairs are automatically retained in the Recycle Bin upon deletion. Use this  type of retention rule to protect specific resources in your account based on their tags.    Region-level retention rules - These retention rules,  by default, apply to all of the resources (of the specified type) in the Region, even if the  resources are not tagged. However, you can specify exclusion tags to exclude resources that have  specific tags. Use this type of retention rule to protect all resources of a specific type in a  Region.   For more information, see  Create Recycle Bin retention rules in the Amazon EBS User Guide.
    ///
    /// Parameters:
    ///   - description: The retention rule description.
    ///   - excludeResourceTags: [Region-level retention rules only] Specifies the exclusion tags to use to identify resources that are to be excluded,
    ///   - lockConfiguration: Information about the retention rule lock configuration.
    ///   - resourceTags: [Tag-level retention rules only] Specifies the resource tags to use to identify resources that are to be retained by a  tag-level retention rule. For tag-level retention rules, only deleted resources, of the specified resource type, that  have one or more of the specified tag key and value pairs are retained. If a resource is deleted, but it does not have  any of the specified tag key and value pairs, it is immediately deleted without being retained by the retention rule. You can add the same tag key and value pair to a maximum or five retention rules. To create a Region-level retention rule, omit this parameter. A Region-level retention rule  does not have any resource tags specified. It retains all deleted resources of the specified  resource type in the Region in which the rule is created, even if the resources are not tagged.
    ///   - resourceType: The resource type to be retained by the retention rule. Currently, only Amazon EBS snapshots  and EBS-backed AMIs are supported. To retain snapshots, specify EBS_SNAPSHOT. To  retain EBS-backed AMIs, specify EC2_IMAGE.
    ///   - retentionPeriod: Information about the retention period for which the retention rule is to retain resources.
    ///   - tags: Information about the tags to assign to the retention rule.
    ///   - logger: Logger use during operation
    @inlinable
    public func createRule(
        description: String? = nil,
        excludeResourceTags: [ResourceTag]? = nil,
        lockConfiguration: LockConfiguration? = nil,
        resourceTags: [ResourceTag]? = nil,
        resourceType: ResourceType,
        retentionPeriod: RetentionPeriod,
        tags: [Tag]? = nil,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> CreateRuleResponse {
        let input = CreateRuleRequest(
            description: description, 
            excludeResourceTags: excludeResourceTags, 
            lockConfiguration: lockConfiguration, 
            resourceTags: resourceTags, 
            resourceType: resourceType, 
            retentionPeriod: retentionPeriod, 
            tags: tags
        )
        return try await self.createRule(input, logger: logger)
    }

    /// Deletes a Recycle Bin retention rule. For more information, see  Delete Recycle Bin retention rules in the Amazon Elastic Compute Cloud User Guide.
    @Sendable
    @inlinable
    public func deleteRule(_ input: DeleteRuleRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteRuleResponse {
        try await self.client.execute(
            operation: "DeleteRule", 
            path: "/rules/{Identifier}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Deletes a Recycle Bin retention rule. For more information, see  Delete Recycle Bin retention rules in the Amazon Elastic Compute Cloud User Guide.
    ///
    /// Parameters:
    ///   - identifier: The unique ID of the retention rule.
    ///   - logger: Logger use during operation
    @inlinable
    public func deleteRule(
        identifier: String,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> DeleteRuleResponse {
        let input = DeleteRuleRequest(
            identifier: identifier
        )
        return try await self.deleteRule(input, logger: logger)
    }

    /// Gets information about a Recycle Bin retention rule.
    @Sendable
    @inlinable
    public func getRule(_ input: GetRuleRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetRuleResponse {
        try await self.client.execute(
            operation: "GetRule", 
            path: "/rules/{Identifier}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Gets information about a Recycle Bin retention rule.
    ///
    /// Parameters:
    ///   - identifier: The unique ID of the retention rule.
    ///   - logger: Logger use during operation
    @inlinable
    public func getRule(
        identifier: String,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> GetRuleResponse {
        let input = GetRuleRequest(
            identifier: identifier
        )
        return try await self.getRule(input, logger: logger)
    }

    /// Lists the Recycle Bin retention rules in the Region.
    @Sendable
    @inlinable
    public func listRules(_ input: ListRulesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListRulesResponse {
        try await self.client.execute(
            operation: "ListRules", 
            path: "/list-rules", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Lists the Recycle Bin retention rules in the Region.
    ///
    /// Parameters:
    ///   - excludeResourceTags: [Region-level retention rules only] Information about the exclusion tags used to identify resources that are to be
    ///   - lockState: The lock state of the retention rules to list. Only retention rules with the specified  lock state are returned.
    ///   - maxResults: The maximum number of results to return with a single call.
    ///   - nextToken: The token for the next page of results.
    ///   - resourceTags: [Tag-level retention rules only] Information about the resource tags used to identify resources that are retained by the retention  rule.
    ///   - resourceType: The resource type retained by the retention rule. Only retention rules that retain  the specified resource type are listed. Currently, only Amazon EBS snapshots and EBS-backed  AMIs are supported. To list retention rules that retain snapshots, specify  EBS_SNAPSHOT. To list retention rules that retain EBS-backed AMIs, specify  EC2_IMAGE.
    ///   - logger: Logger use during operation
    @inlinable
    public func listRules(
        excludeResourceTags: [ResourceTag]? = nil,
        lockState: LockState? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil,
        resourceTags: [ResourceTag]? = nil,
        resourceType: ResourceType,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> ListRulesResponse {
        let input = ListRulesRequest(
            excludeResourceTags: excludeResourceTags, 
            lockState: lockState, 
            maxResults: maxResults, 
            nextToken: nextToken, 
            resourceTags: resourceTags, 
            resourceType: resourceType
        )
        return try await self.listRules(input, logger: logger)
    }

    /// Lists the tags assigned to a retention rule.
    @Sendable
    @inlinable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/tags/{ResourceArn}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Lists the tags assigned to a retention rule.
    ///
    /// Parameters:
    ///   - resourceArn: The Amazon Resource Name (ARN) of the retention rule.
    ///   - logger: Logger use during operation
    @inlinable
    public func listTagsForResource(
        resourceArn: String,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> ListTagsForResourceResponse {
        let input = ListTagsForResourceRequest(
            resourceArn: resourceArn
        )
        return try await self.listTagsForResource(input, logger: logger)
    }

    /// Locks a Region-level retention rule. A locked retention rule can't be modified or  deleted.  You can't lock tag-level retention rules, or Region-level retention rules that  have exclusion tags.
    @Sendable
    @inlinable
    public func lockRule(_ input: LockRuleRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> LockRuleResponse {
        try await self.client.execute(
            operation: "LockRule", 
            path: "/rules/{Identifier}/lock", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Locks a Region-level retention rule. A locked retention rule can't be modified or  deleted.  You can't lock tag-level retention rules, or Region-level retention rules that  have exclusion tags.
    ///
    /// Parameters:
    ///   - identifier: The unique ID of the retention rule.
    ///   - lockConfiguration: Information about the retention rule lock configuration.
    ///   - logger: Logger use during operation
    @inlinable
    public func lockRule(
        identifier: String,
        lockConfiguration: LockConfiguration,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> LockRuleResponse {
        let input = LockRuleRequest(
            identifier: identifier, 
            lockConfiguration: lockConfiguration
        )
        return try await self.lockRule(input, logger: logger)
    }

    /// Assigns tags to the specified retention rule.
    @Sendable
    @inlinable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        try await self.client.execute(
            operation: "TagResource", 
            path: "/tags/{ResourceArn}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Assigns tags to the specified retention rule.
    ///
    /// Parameters:
    ///   - resourceArn: The Amazon Resource Name (ARN) of the retention rule.
    ///   - tags: Information about the tags to assign to the retention rule.
    ///   - logger: Logger use during operation
    @inlinable
    public func tagResource(
        resourceArn: String,
        tags: [Tag],
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> TagResourceResponse {
        let input = TagResourceRequest(
            resourceArn: resourceArn, 
            tags: tags
        )
        return try await self.tagResource(input, logger: logger)
    }

    /// Unlocks a retention rule. After a retention rule is unlocked, it can be modified or deleted  only after the unlock delay period expires.
    @Sendable
    @inlinable
    public func unlockRule(_ input: UnlockRuleRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UnlockRuleResponse {
        try await self.client.execute(
            operation: "UnlockRule", 
            path: "/rules/{Identifier}/unlock", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Unlocks a retention rule. After a retention rule is unlocked, it can be modified or deleted  only after the unlock delay period expires.
    ///
    /// Parameters:
    ///   - identifier: The unique ID of the retention rule.
    ///   - logger: Logger use during operation
    @inlinable
    public func unlockRule(
        identifier: String,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> UnlockRuleResponse {
        let input = UnlockRuleRequest(
            identifier: identifier
        )
        return try await self.unlockRule(input, logger: logger)
    }

    /// Unassigns a tag from a retention rule.
    @Sendable
    @inlinable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        try await self.client.execute(
            operation: "UntagResource", 
            path: "/tags/{ResourceArn}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Unassigns a tag from a retention rule.
    ///
    /// Parameters:
    ///   - resourceArn: The Amazon Resource Name (ARN) of the retention rule.
    ///   - tagKeys: The tag keys of the tags to unassign. All tags that have the specified tag key are unassigned.
    ///   - logger: Logger use during operation
    @inlinable
    public func untagResource(
        resourceArn: String,
        tagKeys: [String],
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> UntagResourceResponse {
        let input = UntagResourceRequest(
            resourceArn: resourceArn, 
            tagKeys: tagKeys
        )
        return try await self.untagResource(input, logger: logger)
    }

    /// Updates an existing Recycle Bin retention rule. You can update a retention rule's description,  resource tags, and retention period at any time after creation. You can't update a retention rule's  resource type after creation. For more information, see  Update Recycle Bin retention rules in the Amazon Elastic Compute Cloud User Guide.
    @Sendable
    @inlinable
    public func updateRule(_ input: UpdateRuleRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateRuleResponse {
        try await self.client.execute(
            operation: "UpdateRule", 
            path: "/rules/{Identifier}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Updates an existing Recycle Bin retention rule. You can update a retention rule's description,  resource tags, and retention period at any time after creation. You can't update a retention rule's  resource type after creation. For more information, see  Update Recycle Bin retention rules in the Amazon Elastic Compute Cloud User Guide.
    ///
    /// Parameters:
    ///   - description: The retention rule description.
    ///   - excludeResourceTags: [Region-level retention rules only] Specifies the exclusion tags to use to identify resources that are to be excluded,
    ///   - identifier: The unique ID of the retention rule.
    ///   - resourceTags: [Tag-level retention rules only] Specifies the resource tags to use to identify resources that are to be retained by a  tag-level retention rule. For tag-level retention rules, only deleted resources, of the specified resource type, that  have one or more of the specified tag key and value pairs are retained. If a resource is deleted, but it does not have  any of the specified tag key and value pairs, it is immediately deleted without being retained by the retention rule. You can add the same tag key and value pair to a maximum or five retention rules. To create a Region-level retention rule, omit this parameter. A Region-level retention rule  does not have any resource tags specified. It retains all deleted resources of the specified  resource type in the Region in which the rule is created, even if the resources are not tagged.
    ///   - resourceType:  This parameter is currently not supported. You can't update a retention rule's resource type  after creation.
    ///   - retentionPeriod: Information about the retention period for which the retention rule is to retain resources.
    ///   - logger: Logger use during operation
    @inlinable
    public func updateRule(
        description: String? = nil,
        excludeResourceTags: [ResourceTag]? = nil,
        identifier: String,
        resourceTags: [ResourceTag]? = nil,
        resourceType: ResourceType? = nil,
        retentionPeriod: RetentionPeriod? = nil,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> UpdateRuleResponse {
        let input = UpdateRuleRequest(
            description: description, 
            excludeResourceTags: excludeResourceTags, 
            identifier: identifier, 
            resourceTags: resourceTags, 
            resourceType: resourceType, 
            retentionPeriod: retentionPeriod
        )
        return try await self.updateRule(input, logger: logger)
    }
}

extension Rbin {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Rbin, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Rbin {
    /// Return PaginatorSequence for operation ``listRules(_:logger:)``.
    ///
    /// - Parameters:
    ///   - input: Input for operation
    ///   - logger: Logger used for logging
    @inlinable
    public func listRulesPaginator(
        _ input: ListRulesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListRulesRequest, ListRulesResponse> {
        return .init(
            input: input,
            command: self.listRules,
            inputKey: \ListRulesRequest.nextToken,
            outputKey: \ListRulesResponse.nextToken,
            logger: logger
        )
    }
    /// Return PaginatorSequence for operation ``listRules(_:logger:)``.
    ///
    /// - Parameters:
    ///   - excludeResourceTags: [Region-level retention rules only] Information about the exclusion tags used to identify resources that are to be
    ///   - lockState: The lock state of the retention rules to list. Only retention rules with the specified  lock state are returned.
    ///   - maxResults: The maximum number of results to return with a single call.
    ///   - resourceTags: [Tag-level retention rules only] Information about the resource tags used to identify resources that are retained by the retention  rule.
    ///   - resourceType: The resource type retained by the retention rule. Only retention rules that retain  the specified resource type are listed. Currently, only Amazon EBS snapshots and EBS-backed  AMIs are supported. To list retention rules that retain snapshots, specify  EBS_SNAPSHOT. To list retention rules that retain EBS-backed AMIs, specify  EC2_IMAGE.
    ///   - logger: Logger used for logging
    @inlinable
    public func listRulesPaginator(
        excludeResourceTags: [ResourceTag]? = nil,
        lockState: LockState? = nil,
        maxResults: Int? = nil,
        resourceTags: [ResourceTag]? = nil,
        resourceType: ResourceType,
        logger: Logger = AWSClient.loggingDisabled        
    ) -> AWSClient.PaginatorSequence<ListRulesRequest, ListRulesResponse> {
        let input = ListRulesRequest(
            excludeResourceTags: excludeResourceTags, 
            lockState: lockState, 
            maxResults: maxResults, 
            resourceTags: resourceTags, 
            resourceType: resourceType
        )
        return self.listRulesPaginator(input, logger: logger)
    }
}

extension Rbin.ListRulesRequest: AWSPaginateToken {
    @inlinable
    public func usingPaginationToken(_ token: String) -> Rbin.ListRulesRequest {
        return .init(
            excludeResourceTags: self.excludeResourceTags,
            lockState: self.lockState,
            maxResults: self.maxResults,
            nextToken: token,
            resourceTags: self.resourceTags,
            resourceType: self.resourceType
        )
    }
}
