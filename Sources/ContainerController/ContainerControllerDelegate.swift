//
//  ContainerControllerDelegate.swift
//  PatternsSwift
//
//  Created by mrustaa on 21/04/2020.
//  Copyright © 2020 mrustaa. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)
public protocol ContainerControllerDelegate {
    
    /// Reports rotation and orientation changes
    func containerControllerRotation(_ containerController: ContainerController)
    
    /// Reports a click on the background shadow
    func containerControllerShadowClick(_ containerController: ContainerController)
    
    /// Reports the changes current position of the container, after its use
    func containerControllerMove(_ containerController: ContainerController, position: CGFloat, type: ContainerMoveType, animation: Bool)
    
}

@available(iOS 13.0, *)
public extension ContainerControllerDelegate {
    
    func containerControllerRotation(_ containerController: ContainerController) {
        
        if UIDevice.current.userInterfaceIdiom == .pad  {
            let width = UIScreen.main.bounds.height
            let frame = CGRect(x: 0, y: 0, width: 400, height: containerController.deviceHeight * 2)
            containerController.view.refreshContentView(frame: frame)
            containerController.layout.insets = ContainerInsets(right: width - 400 - 10, left: 10)
            containerController.callBack?()
        }
    }
    
    func containerControllerShadowClick(_ containerController: ContainerController) {
    }
    
    func containerControllerMove(_ containerController: ContainerController, position: CGFloat, type: ContainerMoveType, animation: Bool) {
    }
}

