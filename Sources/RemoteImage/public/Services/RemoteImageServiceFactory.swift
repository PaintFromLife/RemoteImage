//
//  RemoteImageServiceFactory.swift
//  
//
//  Created by Christian Elies on 29.10.19.
//

#if canImport(UIKit)
import Foundation

public final class RemoteImageServiceFactory {
    public static func makeRemoteImageService() -> RemoteImageService {
        let dependencies = RemoteImageServiceDependencies()
        return RemoteImageService(dependencies: dependencies)
    }
}
#endif
