//
//  Apeture.swift
//  Rocc
//
//  Created by Simon Mitchell on 26/04/2018.
//  Copyright © 2018 Simon Mitchell. All rights reserved.
//

import Foundation

/// An enum representing capture modes available on the camera
///
/// - audio: Records audio only
/// - bulb: Records a still image with a bulb shutter
/// - photo: Records a single still image
/// - video: Records video
/// - timelapse: Records a set of images for creating a timelapse video
/// - continuous: Records a continuous set of still images
/// - loop: Records a loop
/// - interval: Records still images at a given interval duration
public enum ShootingMode: String, CaseIterable {
    
    case audio
    case bulb
    case photo
    case video
    case timelapse
    case continuous
    case loop
    case interval
}

/// Functions for configuring the shooting mode of the camera
public struct ShootMode: CameraFunction {
    
    public var function: _CameraFunction
    
    public typealias SendType = ShootingMode
    
    public typealias ReturnType = ShootingMode
    
    /// Sets the current shooting mode of the camera
    public static let set = ShootMode(function: .setShootMode)
    
    /// Returns the current shooting mode of the camera
    public static let get = ShootMode(function: .getShootMode)
}
