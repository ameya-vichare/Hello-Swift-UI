// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public struct Hike: Identifiable {
    public let id: UUID = UUID()
    public let name: String
    public let photoURL: String
    public let miles: Double
    
    public init(
        name: String,
        photoURL: String,
        miles: Double
    ) {
        self.name = name
        self.photoURL = photoURL
        self.miles = miles
    }
}
