//
//  ConverterRepositoryImpl.swift
//  JPEGConverter
//
//  Created by A_Mcflurry on 6/5/24.
//

import Foundation
import UIKit

final class ConverterRepositoryImpl: ConverterRepository {
	func makeJpeg(
		_ image: UIImage,
		scale: Float,
		isEXIFSaved: Bool
	) -> UIImage? {

		guard let jpegImage = image.jpegData(compressionQuality: CGFloat(scale)) else { return nil }

		return UIImage(data: jpegImage)
	}
}
