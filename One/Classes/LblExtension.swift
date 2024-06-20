
import Foundation
import UIKit


internal extension UILabel {
    
   public func underlinedLabel() {
        guard let text = text else { return }
        let textRange = NSRange(location: 0, length: text.count)
        let attributedText = NSMutableAttributedString(string: text)
        attributedText.addAttribute(.underlineStyle,
                                    value: NSUnderlineStyle.styleSingle.rawValue,
                                    range: textRange)
        self.attributedText = attributedText
    }
    
    func partTextChangedStyle(fullText: String,
                          changeText: String,
                          color: UIColor = .black,
                          font: UIFont = .systemFont(ofSize: 14)) {
        let strNumber: NSString = fullText as NSString
        let range = (strNumber).range(of: changeText, options: .backwards)
        let attribute = NSMutableAttributedString.init(string: fullText)
        attribute.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)
        attribute.addAttribute(NSAttributedString.Key.font, value: font , range: range)

        self.attributedText = attribute
        self.setNeedsDisplay()
        self.layoutIfNeeded()
    }
    
}
