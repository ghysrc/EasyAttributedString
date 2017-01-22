//
//  EasyAttributedString.swift
//  EasyAttributedString
//
//  Created by ghysrc on 16/2/15.
//  Copyright © 2016年 ghy. All rights reserved.
//

import UIKit

open class EasyAttributedStringBuilder {
    
    open var attrString:NSMutableAttributedString!
    
    public init(str:String) {
        attrString = NSMutableAttributedString(string: str)
    }
    
    open func setNewString(_ str:String) {
        attrString = NSMutableAttributedString(string: str)
    }
    
    open func range(_ range:NSRange) -> EasyAttributedStringRange {
        let easr = EasyAttributedStringRange(attrString: self.attrString)
        easr.range = range
        return easr
    }
    
    open func rangeWith(_ location:Int, length:Int) -> EasyAttributedStringRange {
        let easr = EasyAttributedStringRange(attrString: self.attrString)
        easr.range = NSMakeRange(location, length)
        return easr
    }
    
    open func allRange() -> EasyAttributedStringRange {
        let easr = EasyAttributedStringRange(attrString: self.attrString)
        easr.range = NSMakeRange(0, self.attrString.length)
        return easr
    }
    
    open func firstCharacter() -> EasyAttributedStringRange {
        let easr = EasyAttributedStringRange(attrString: self.attrString)
        easr.range = NSMakeRange(0, 1)
        return easr
    }
    
    open func rangeOfString(_ string:String) -> EasyAttributedStringRange {
        let easr = EasyAttributedStringRange(attrString: self.attrString)
        let nsStr = self.attrString.string as NSString
        easr.range = nsStr.range(of: string)
        return easr
    }
    
    open func rangeOfString(_ string:String, option:NSString.CompareOptions) -> EasyAttributedStringRange {
        let easr = EasyAttributedStringRange(attrString: self.attrString)
        let nsStr = self.attrString.string as NSString
        easr.range = nsStr.range(of: string, options: option)
        return easr
    }
    
    open func build() -> NSMutableAttributedString{
        return self.attrString
    }
    
}

open class EasyAttributedStringRange {
    
    open var range:NSRange!
    fileprivate var attrString:NSMutableAttributedString!
    
    public init(attrString:NSMutableAttributedString) {
        self.attrString = attrString
    }
    @discardableResult
    open func setFont(_ font:UIFont) -> EasyAttributedStringRange {
        attrString.addAttribute(NSFontAttributeName, value: font, range: range)
        return self
    }
    @discardableResult
    open func setFontSize(_ size:CGFloat) -> EasyAttributedStringRange {
        attrString.addAttribute(NSFontAttributeName, value: UIFont.systemFont(ofSize: size), range: range)
        return self
    }
    @discardableResult
    open func setTextColor(_ color:UIColor) -> EasyAttributedStringRange {
        attrString.addAttribute(NSForegroundColorAttributeName, value: color, range: range)
        return self
    }
    @discardableResult
    open func setBackgroundColor(_ color:UIColor) -> EasyAttributedStringRange {
        attrString.addAttribute(NSBackgroundColorAttributeName, value: color, range: range)
        return self
    }
    @discardableResult
    open func setKern(_ kern:Float) -> EasyAttributedStringRange {
        attrString.addAttribute(NSKernAttributeName, value: kern, range: range)
        return self
    }
    @discardableResult
    open func setLineSpacing(_ lineSpacing:CGFloat) -> EasyAttributedStringRange {
        let ps = NSMutableParagraphStyle()
        ps.lineSpacing = lineSpacing
        attrString.addAttribute(NSParagraphStyleAttributeName, value: ps, range: range)
        return self
    }
    @discardableResult
    open func setLineSpacing(_ lineSpacing:CGFloat, alignment:NSTextAlignment) -> EasyAttributedStringRange {
        let ps = NSMutableParagraphStyle()
        ps.lineSpacing = lineSpacing
        ps.alignment = alignment
        attrString.addAttribute(NSParagraphStyleAttributeName, value: ps, range: range)
        return self
    }
    @discardableResult
    open func setParagraphStyle(_ style:NSMutableParagraphStyle) -> EasyAttributedStringRange {
        attrString.addAttribute(NSParagraphStyleAttributeName, value: style, range: range)
        return self
    }
    @discardableResult
    open func setUnderlineStyle(_ style:NSUnderlineStyle) -> EasyAttributedStringRange {
        attrString.addAttribute(NSUnderlineStyleAttributeName, value: style.rawValue, range: range)
        return self
    }
    @discardableResult
    open func setUnderlineColor(_ color:UIColor) -> EasyAttributedStringRange {
        attrString.addAttribute(NSUnderlineColorAttributeName, value: color, range: range)
        return self
    }
    @discardableResult
    open func setStrikethroughStyle(_ style:NSUnderlineStyle) -> EasyAttributedStringRange {
        attrString.addAttribute(NSStrikethroughStyleAttributeName, value: style.rawValue, range: range)
        return self
    }
    
    open func setStrikethroughColor(_ color:UIColor) -> EasyAttributedStringRange {
        attrString.addAttribute(NSStrikethroughColorAttributeName, value: color, range: range)
        return self
    }
    
    open func setStrokeColor(_ color:UIColor) -> EasyAttributedStringRange {
        attrString.addAttribute(NSStrokeColorAttributeName, value: color, range: range)
        return self
    }
    
    open func setStrokeWidth(_ width:Float) -> EasyAttributedStringRange {
        attrString.addAttribute(NSStrokeWidthAttributeName, value: width, range: range)
        return self
    }
    
    open func setShadow(_ shadow:NSShadow) -> EasyAttributedStringRange {
        attrString.addAttribute(NSShadowAttributeName, value: shadow, range: range)
        return self
    }
    
    open func setLigature(_ ligature:Bool) -> EasyAttributedStringRange {
        attrString.addAttribute(NSLigatureAttributeName, value: ligature, range: range)
        return self
    }
    
    open func setTextEffect() -> EasyAttributedStringRange {
        attrString.addAttribute(NSTextEffectAttributeName, value: NSTextEffectLetterpressStyle, range: range)
        return self
    }
    
    open func setBaselineOffset(_ offset:Float) -> EasyAttributedStringRange {
        attrString.addAttribute(NSBaselineOffsetAttributeName, value: offset, range: range)
        return self
    }
    
    open func setExpansion(_ expansion:Float) -> EasyAttributedStringRange {
        attrString.addAttribute(NSExpansionAttributeName, value: expansion, range: range)
        return self
    }
    
    open func setObliqueness(_ obiqueness:Float) -> EasyAttributedStringRange {
        attrString.addAttribute(NSObliquenessAttributeName, value: obiqueness, range: range)
        return self
    }
    
    open func setAttributes(_ attributes:[String: AnyObject]) -> EasyAttributedStringRange {
        attrString.addAttributes(attributes, range: range)
        return self
    }
    
}
