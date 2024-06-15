//
//  ConverterRepositoryImpl.swift
//  JPEGConverter
//
//  Created by A_Mcflurry on 6/5/24.
//

import Foundation
import UIKit
import ImageIO

final class ConverterRepositoryImpl: ConverterRepository {
	func makeJpeg(
		_ image: UIImage,
		scale: Float,
		isEXIFSaved: Bool
	) -> UIImage? {

		guard let jpegImage = image.jpegData(compressionQuality: CGFloat(scale)) else { return nil }
        
		return UIImage(data: jpegImage)
	}
    
    private func getExifData(from image: UIImage) -> [String: Any]? {
        guard let imageData = image.jpegData(compressionQuality: 1.0),
              let source = CGImageSourceCreateWithData(imageData as CFData, nil) else {
            return nil
        }

        guard let metadata = CGImageSourceCopyPropertiesAtIndex(source, 0, nil) as? [String: Any] else {
            return nil
        }

        guard let exifData = metadata[kCGImagePropertyExifDictionary as String] as? [String: Any] else {
            return nil
        }

        return exifData
    }
}
