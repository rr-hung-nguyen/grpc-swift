//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: src/proto/grpc/testing/test.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import Foundation
import GRPC
import NIO
import NIOHTTP1
import SwiftProtobuf


/// Usage: instantiate Grpc_Testing_TestServiceClient, then call methods of this protocol to make API calls.
public protocol Grpc_Testing_TestServiceClientProtocol: GRPCClient {
  func emptyCall(
    _ request: Grpc_Testing_Empty,
    callOptions: CallOptions?
  ) -> UnaryCall<Grpc_Testing_Empty, Grpc_Testing_Empty>

  func unaryCall(
    _ request: Grpc_Testing_SimpleRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Grpc_Testing_SimpleRequest, Grpc_Testing_SimpleResponse>

  func cacheableUnaryCall(
    _ request: Grpc_Testing_SimpleRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Grpc_Testing_SimpleRequest, Grpc_Testing_SimpleResponse>

  func streamingOutputCall(
    _ request: Grpc_Testing_StreamingOutputCallRequest,
    callOptions: CallOptions?,
    handler: @escaping (Grpc_Testing_StreamingOutputCallResponse) -> Void
  ) -> ServerStreamingCall<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse>

  func streamingInputCall(
    callOptions: CallOptions?
  ) -> ClientStreamingCall<Grpc_Testing_StreamingInputCallRequest, Grpc_Testing_StreamingInputCallResponse>

  func fullDuplexCall(
    callOptions: CallOptions?,
    handler: @escaping (Grpc_Testing_StreamingOutputCallResponse) -> Void
  ) -> BidirectionalStreamingCall<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse>

  func halfDuplexCall(
    callOptions: CallOptions?,
    handler: @escaping (Grpc_Testing_StreamingOutputCallResponse) -> Void
  ) -> BidirectionalStreamingCall<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse>

  func unimplementedCall(
    _ request: Grpc_Testing_Empty,
    callOptions: CallOptions?
  ) -> UnaryCall<Grpc_Testing_Empty, Grpc_Testing_Empty>

}

extension Grpc_Testing_TestServiceClientProtocol {

  /// One empty request followed by one empty response.
  ///
  /// - Parameters:
  ///   - request: Request to send to EmptyCall.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func emptyCall(
    _ request: Grpc_Testing_Empty,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Grpc_Testing_Empty, Grpc_Testing_Empty> {
    return self.makeUnaryCall(
      path: "/grpc.testing.TestService/EmptyCall",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// One request followed by one response.
  ///
  /// - Parameters:
  ///   - request: Request to send to UnaryCall.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func unaryCall(
    _ request: Grpc_Testing_SimpleRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Grpc_Testing_SimpleRequest, Grpc_Testing_SimpleResponse> {
    return self.makeUnaryCall(
      path: "/grpc.testing.TestService/UnaryCall",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// One request followed by one response. Response has cache control
  /// headers set such that a caching HTTP proxy (such as GFE) can
  /// satisfy subsequent requests.
  ///
  /// - Parameters:
  ///   - request: Request to send to CacheableUnaryCall.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func cacheableUnaryCall(
    _ request: Grpc_Testing_SimpleRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Grpc_Testing_SimpleRequest, Grpc_Testing_SimpleResponse> {
    return self.makeUnaryCall(
      path: "/grpc.testing.TestService/CacheableUnaryCall",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// One request followed by a sequence of responses (streamed download).
  /// The server returns the payload with client desired type and sizes.
  ///
  /// - Parameters:
  ///   - request: Request to send to StreamingOutputCall.
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ServerStreamingCall` with futures for the metadata and status.
  public func streamingOutputCall(
    _ request: Grpc_Testing_StreamingOutputCallRequest,
    callOptions: CallOptions? = nil,
    handler: @escaping (Grpc_Testing_StreamingOutputCallResponse) -> Void
  ) -> ServerStreamingCall<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse> {
    return self.makeServerStreamingCall(
      path: "/grpc.testing.TestService/StreamingOutputCall",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }

  /// A sequence of requests followed by one response (streamed upload).
  /// The server returns the aggregated size of client payload as the result.
  ///
  /// Callers should use the `send` method on the returned object to send messages
  /// to the server. The caller should send an `.end` after the final message has been sent.
  ///
  /// - Parameters:
  ///   - callOptions: Call options.
  /// - Returns: A `ClientStreamingCall` with futures for the metadata, status and response.
  public func streamingInputCall(
    callOptions: CallOptions? = nil
  ) -> ClientStreamingCall<Grpc_Testing_StreamingInputCallRequest, Grpc_Testing_StreamingInputCallResponse> {
    return self.makeClientStreamingCall(
      path: "/grpc.testing.TestService/StreamingInputCall",
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// A sequence of requests with each request served by the server immediately.
  /// As one request could lead to multiple responses, this interface
  /// demonstrates the idea of full duplexing.
  ///
  /// Callers should use the `send` method on the returned object to send messages
  /// to the server. The caller should send an `.end` after the final message has been sent.
  ///
  /// - Parameters:
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ClientStreamingCall` with futures for the metadata and status.
  public func fullDuplexCall(
    callOptions: CallOptions? = nil,
    handler: @escaping (Grpc_Testing_StreamingOutputCallResponse) -> Void
  ) -> BidirectionalStreamingCall<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse> {
    return self.makeBidirectionalStreamingCall(
      path: "/grpc.testing.TestService/FullDuplexCall",
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }

  /// A sequence of requests followed by a sequence of responses.
  /// The server buffers all the client requests and then serves them in order. A
  /// stream of responses are returned to the client when the server starts with
  /// first request.
  ///
  /// Callers should use the `send` method on the returned object to send messages
  /// to the server. The caller should send an `.end` after the final message has been sent.
  ///
  /// - Parameters:
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ClientStreamingCall` with futures for the metadata and status.
  public func halfDuplexCall(
    callOptions: CallOptions? = nil,
    handler: @escaping (Grpc_Testing_StreamingOutputCallResponse) -> Void
  ) -> BidirectionalStreamingCall<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse> {
    return self.makeBidirectionalStreamingCall(
      path: "/grpc.testing.TestService/HalfDuplexCall",
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }

  /// The test server will not implement this method. It will be used
  /// to test the behavior when clients call unimplemented methods.
  ///
  /// - Parameters:
  ///   - request: Request to send to UnimplementedCall.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func unimplementedCall(
    _ request: Grpc_Testing_Empty,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Grpc_Testing_Empty, Grpc_Testing_Empty> {
    return self.makeUnaryCall(
      path: "/grpc.testing.TestService/UnimplementedCall",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Grpc_Testing_TestServiceClient: Grpc_Testing_TestServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the grpc.testing.TestService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  public init(channel: GRPCChannel, defaultCallOptions: CallOptions = CallOptions()) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
  }
}

/// Usage: instantiate Grpc_Testing_UnimplementedServiceClient, then call methods of this protocol to make API calls.
public protocol Grpc_Testing_UnimplementedServiceClientProtocol: GRPCClient {
  func unimplementedCall(
    _ request: Grpc_Testing_Empty,
    callOptions: CallOptions?
  ) -> UnaryCall<Grpc_Testing_Empty, Grpc_Testing_Empty>

}

extension Grpc_Testing_UnimplementedServiceClientProtocol {

  /// A call that no server should implement
  ///
  /// - Parameters:
  ///   - request: Request to send to UnimplementedCall.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func unimplementedCall(
    _ request: Grpc_Testing_Empty,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Grpc_Testing_Empty, Grpc_Testing_Empty> {
    return self.makeUnaryCall(
      path: "/grpc.testing.UnimplementedService/UnimplementedCall",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Grpc_Testing_UnimplementedServiceClient: Grpc_Testing_UnimplementedServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the grpc.testing.UnimplementedService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  public init(channel: GRPCChannel, defaultCallOptions: CallOptions = CallOptions()) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
  }
}

/// Usage: instantiate Grpc_Testing_ReconnectServiceClient, then call methods of this protocol to make API calls.
public protocol Grpc_Testing_ReconnectServiceClientProtocol: GRPCClient {
  func start(
    _ request: Grpc_Testing_ReconnectParams,
    callOptions: CallOptions?
  ) -> UnaryCall<Grpc_Testing_ReconnectParams, Grpc_Testing_Empty>

  func stop(
    _ request: Grpc_Testing_Empty,
    callOptions: CallOptions?
  ) -> UnaryCall<Grpc_Testing_Empty, Grpc_Testing_ReconnectInfo>

}

extension Grpc_Testing_ReconnectServiceClientProtocol {

  /// Unary call to Start
  ///
  /// - Parameters:
  ///   - request: Request to send to Start.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func start(
    _ request: Grpc_Testing_ReconnectParams,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Grpc_Testing_ReconnectParams, Grpc_Testing_Empty> {
    return self.makeUnaryCall(
      path: "/grpc.testing.ReconnectService/Start",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to Stop
  ///
  /// - Parameters:
  ///   - request: Request to send to Stop.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func stop(
    _ request: Grpc_Testing_Empty,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Grpc_Testing_Empty, Grpc_Testing_ReconnectInfo> {
    return self.makeUnaryCall(
      path: "/grpc.testing.ReconnectService/Stop",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Grpc_Testing_ReconnectServiceClient: Grpc_Testing_ReconnectServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the grpc.testing.ReconnectService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  public init(channel: GRPCChannel, defaultCallOptions: CallOptions = CallOptions()) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
  }
}

/// To build a server, implement a class that conforms to this protocol.
public protocol Grpc_Testing_TestServiceProvider: CallHandlerProvider {
  /// One empty request followed by one empty response.
  func emptyCall(request: Grpc_Testing_Empty, context: StatusOnlyCallContext) -> EventLoopFuture<Grpc_Testing_Empty>
  /// One request followed by one response.
  func unaryCall(request: Grpc_Testing_SimpleRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Grpc_Testing_SimpleResponse>
  /// One request followed by one response. Response has cache control
  /// headers set such that a caching HTTP proxy (such as GFE) can
  /// satisfy subsequent requests.
  func cacheableUnaryCall(request: Grpc_Testing_SimpleRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Grpc_Testing_SimpleResponse>
  /// One request followed by a sequence of responses (streamed download).
  /// The server returns the payload with client desired type and sizes.
  func streamingOutputCall(request: Grpc_Testing_StreamingOutputCallRequest, context: StreamingResponseCallContext<Grpc_Testing_StreamingOutputCallResponse>) -> EventLoopFuture<GRPCStatus>
  /// A sequence of requests followed by one response (streamed upload).
  /// The server returns the aggregated size of client payload as the result.
  func streamingInputCall(context: UnaryResponseCallContext<Grpc_Testing_StreamingInputCallResponse>) -> EventLoopFuture<(StreamEvent<Grpc_Testing_StreamingInputCallRequest>) -> Void>
  /// A sequence of requests with each request served by the server immediately.
  /// As one request could lead to multiple responses, this interface
  /// demonstrates the idea of full duplexing.
  func fullDuplexCall(context: StreamingResponseCallContext<Grpc_Testing_StreamingOutputCallResponse>) -> EventLoopFuture<(StreamEvent<Grpc_Testing_StreamingOutputCallRequest>) -> Void>
  /// A sequence of requests followed by a sequence of responses.
  /// The server buffers all the client requests and then serves them in order. A
  /// stream of responses are returned to the client when the server starts with
  /// first request.
  func halfDuplexCall(context: StreamingResponseCallContext<Grpc_Testing_StreamingOutputCallResponse>) -> EventLoopFuture<(StreamEvent<Grpc_Testing_StreamingOutputCallRequest>) -> Void>
}

extension Grpc_Testing_TestServiceProvider {
  public var serviceName: String { return "grpc.testing.TestService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: String, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "EmptyCall":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.emptyCall(request: request, context: context)
        }
      }

    case "UnaryCall":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.unaryCall(request: request, context: context)
        }
      }

    case "CacheableUnaryCall":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.cacheableUnaryCall(request: request, context: context)
        }
      }

    case "StreamingOutputCall":
      return CallHandlerFactory.makeServerStreaming(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.streamingOutputCall(request: request, context: context)
        }
      }

    case "StreamingInputCall":
      return CallHandlerFactory.makeClientStreaming(callHandlerContext: callHandlerContext) { context in
        return self.streamingInputCall(context: context)
      }

    case "FullDuplexCall":
      return CallHandlerFactory.makeBidirectionalStreaming(callHandlerContext: callHandlerContext) { context in
        return self.fullDuplexCall(context: context)
      }

    case "HalfDuplexCall":
      return CallHandlerFactory.makeBidirectionalStreaming(callHandlerContext: callHandlerContext) { context in
        return self.halfDuplexCall(context: context)
      }

    default: return nil
    }
  }
}

/// To build a server, implement a class that conforms to this protocol.
public protocol Grpc_Testing_UnimplementedServiceProvider: CallHandlerProvider {
  /// A call that no server should implement
  func unimplementedCall(request: Grpc_Testing_Empty, context: StatusOnlyCallContext) -> EventLoopFuture<Grpc_Testing_Empty>
}

extension Grpc_Testing_UnimplementedServiceProvider {
  public var serviceName: String { return "grpc.testing.UnimplementedService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: String, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "UnimplementedCall":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.unimplementedCall(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

/// To build a server, implement a class that conforms to this protocol.
public protocol Grpc_Testing_ReconnectServiceProvider: CallHandlerProvider {
  func start(request: Grpc_Testing_ReconnectParams, context: StatusOnlyCallContext) -> EventLoopFuture<Grpc_Testing_Empty>
  func stop(request: Grpc_Testing_Empty, context: StatusOnlyCallContext) -> EventLoopFuture<Grpc_Testing_ReconnectInfo>
}

extension Grpc_Testing_ReconnectServiceProvider {
  public var serviceName: String { return "grpc.testing.ReconnectService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: String, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "Start":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.start(request: request, context: context)
        }
      }

    case "Stop":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.stop(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}


