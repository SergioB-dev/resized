import Foundation
import UIKit

public extension UIImage {
    func resized(width: CGFloat) -> UIImage? {
        let canvas = CGSize(width: width, height: CGFloat(ceil(width/size.width * size.height)))
        if #available(iOS 10.0, *) {
            let format = imageRendererFormat
            return UIGraphicsImageRenderer(size: canvas, format: format).image { _ in
                draw(in: CGRect(origin: .zero, size: canvas))
            }
        } else {
            return nil
        }
    }
}

