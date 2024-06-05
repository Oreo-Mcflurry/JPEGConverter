//
//  ConverterRepository.swift
//  JPEGConverter
//
//  Created by A_Mcflurry on 6/5/24.
//

import Foundation
import UIKit

protocol ConverterRepository {
	func makeJpeg(
		_ image: UIImage,
		scale: Float,
		isEXIFSaved: Bool
	) -> UIImage?
}
