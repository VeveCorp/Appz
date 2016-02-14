//
//  OnePassword.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct OnePassword: ExternalApplication {
        
        public typealias ActionType = Applications.OnePassword.Action
        
        public let scheme = "onepassword:"
        public let fallbackURL = "https://agilebits.com/onepassword"
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.OnePassword {
    
    public enum Action {
        case Open
    }
}

extension Applications.OnePassword.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
        case .Open:
            return ActionPaths(
                app: Path(
                    pathComponents: ["app"],
                    queryParameters: [:]
                ),
                web: Path()
            )
        }
    }
}