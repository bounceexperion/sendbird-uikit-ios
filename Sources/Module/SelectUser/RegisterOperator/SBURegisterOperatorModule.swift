//
//  SBURegisterOperatorModule.swift
//  SendbirdUIKit
//
//  Created by Tez Park on 2021/09/30.
//  Copyright © 2021 Sendbird, Inc. All rights reserved.
//

import UIKit

// MARK: SBURegisterOperatorModule

/// This class is responsible for registering operators in the Sendbird UIKit.
extension SBURegisterOperatorModule {
    /// The module component that contains ``SBUBaseSelectUserModule/Header/titleView``, ``SBUBaseSelectUserModule/Header/leftBarButton`` and ``SBUBaseSelectUserModule/Header/rightBarButton``
    /// - Since: 3.6.0
    public static var HeaderComponent: SBURegisterOperatorModule.Header.Type = SBURegisterOperatorModule.Header.self
    /// The module component that shows the list of the operators in the channel
    /// - Since: 3.6.0
    public static var ListComponent: SBURegisterOperatorModule.List.Type = SBURegisterOperatorModule.List.self
}

// MARK: Header
extension SBURegisterOperatorModule.Header {
    /// Represents the metatype of left bar button in ``SBURegisterOperatorModule.Header``.
    /// - Since: 3.28.0
    public static var LeftBarButton: SBUBarButtonItem.Type = SBUBarButtonItem.self
    
    /// Represents the metatype of title view in ``SBURegisterOperatorModule.Header``.
    /// - Since: 3.28.0
    public static var TitleView: SBUNavigationTitleView.Type = SBUNavigationTitleView.self
    
    /// Represents the metatype of right bar button in ``SBURegisterOperatorModule.Header``.
    /// - Since: 3.28.0
    public static var RightBarButton: SBUBarButtonItem.Type = SBUBarButtonItem.self
}

// MARK: List
extension SBURegisterOperatorModule.List {
    /// Represents the type of empty view on the register operator module.
    /// - Since: 3.28.0
    public static var EmptyView: SBUEmptyView.Type = SBUEmptyView.self
    
    /// Represents the type of user cell on the register operator module.
    /// - Since: 3.28.0
    public static var UserCell: SBUUserCell.Type = SBUUserCell.self
}
