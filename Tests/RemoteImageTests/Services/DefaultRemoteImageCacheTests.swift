//
//  DefaultRemoteImageCacheTests.swift
//  RemoteImageTests
//
//  Created by Christian Elies on 14.12.19.
//

@testable import RemoteImage
import XCTest

final class DefaultRemoteImageCacheTests: XCTestCase {
    let remoteImageCache = DefaultRemoteImageCache()

    override func setUp() {
        remoteImageCache.cache.removeAllObjects()
    }

    func testSetImage() {
        let key = "Test" as NSString
        let image = PlatformSpecificImageType()
        remoteImageCache.setObject(image, forKey: key)
        XCTAssertEqual(remoteImageCache.object(forKey: key), image)
    }

    func testRemoveImage() {
        let key = "Test" as NSString
        let image = PlatformSpecificImageType()
        remoteImageCache.setObject(image, forKey: key)
        XCTAssertEqual(remoteImageCache.object(forKey: key), image)
        remoteImageCache.removeObject(forKey: key)
        XCTAssertNil(remoteImageCache.object(forKey: key))
    }

    static var allTests = [
        ("testSetImage", testSetImage),
        ("testRemoveImage", testRemoveImage)
    ]
}
