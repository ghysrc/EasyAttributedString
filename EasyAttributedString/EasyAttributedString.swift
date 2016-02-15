//
//  EasyAttributedString.swift
//  EasyAttributedString
//
//  Created by ghysrc on 16/2/15.
//  Copyright © 2016年 ghy. All rights reserved.
//

import UIKit

public class EasyAttributedStringBuilder {
    
    private var attrString:NSMutableAttributedString!
    
    public init(str:String) {
        attrString = NSMutableAttributedString(string: str)
    }
    
    public func range(range:NSRange) -> EasyAttributedStringRange {
        let easr = EasyAttributedStringRange(attrString: self.attrString)
        easr.range = range
        return easr
    }
    
    public func rangeWith(location:Int, length:Int) -> EasyAttributedStringRange {
        let easr = EasyAttributedStringRange(attrString: self.attrString)
        easr.range = NSMakeRange(location, length)
        return easr
    }
    
    public func allRange() -> EasyAttributedStringRange {
        let easr = EasyAttributedStringRange(attrString: self.attrString)
        easr.range = NSMakeRange(0, self.attrString.length)
        return easr
    }
    
    public func firstCharacter() -> EasyAttributedStringRange {
        let easr = EasyAttributedStringRange(attrString: self.attrString)
        easr.range = NSMakeRange(0, 1)
        return easr
    }
    
    public func rangeOfString(string:String) -> EasyAttributedStringRange {
        let easr = EasyAttributedStringRange(attrString: self.attrString)
        let nsStr = self.attrString.string as NSString
        easr.range = nsStr.rangeOfString(string)
        return easr
    }
    
    public func rangeOfString(string:String, option:NSStringCompareOptions) -> EasyAttributedStringRange {
        let easr = EasyAttributedStringRange(attrString: self.attrString)
        let nsStr = self.attrString.string as NSString
        easr.range = nsStr.rangeOfString(string, options: option)
        return easr
    }
    
    public func build() -> NSMutableAttributedString{
        return self.attrString
    }
    
}

public class EasyAttributedStringRange {
    
    public var range:NSRange!
    private var attrString:NSMutableAttributedString!
    
    public init(attrString:NSMutableAttributedString) {
        self.attrString = attrString
    }
    
    public func setFont(font:UIFont) -> EasyAttributedStringRange {
        attrString.addAttribute(NSFontAttributeName, value: font, range: range)
        return self
    }
    
    public func setTextColor(color:UIColor) -> EasyAttributedStringRange {
        attrString.addAttribute(NSForegroundColorAttributeName, value: color, range: range)
        return self
    }
    
    public func setBackgroundColor(color:UIColor) -> EasyAttributedStringRange {
        attrString.addAttribute(NSBackgroundColorAttributeName, value: color, range: range)
        return self
    }
    
    public func setKern(kern:Float) -> EasyAttributedStringRange {
        attrString.addAttribute(NSKernAttributeName, value: kern, range: range)
        return self
    }
    
    public func setLineSpacing(lineSpacing:CGFloat) -> EasyAttributedStringRange {
        let ps = NSMutableParagraphStyle()
        ps.lineSpacing = lineSpacing
        attrString.addAttribute(NSParagraphStyleAttributeName, value: ps, range: range)
        return self
    }
    
    public func setUnderlineStyle(style:NSUnderlineStyle) -> EasyAttributedStringRange {
        attrString.addAttribute(NSUnderlineStyleAttributeName, value: style.rawValue, range: range)
        return self
    }
    
    public func setUnderlineColor(color:UIColor) -> EasyAttributedStringRange {
        attrString.addAttribute(NSUnderlineColorAttributeName, value: color, range: range)
        return self
    }
    
    public func setStrikethroughStyle(style:NSUnderlineStyle) -> EasyAttributedStringRange {
        attrString.addAttribute(NSStrikethroughStyleAttributeName, value: style.rawValue, range: range)
        return self
    }
    
    public func setStrikethroughColor(color:UIColor) -> EasyAttributedStringRange {
        attrString.addAttribute(NSStrikethroughColorAttributeName, value: color, range: range)
        return self
    }
    
    public func setStrokeColor(color:UIColor) -> EasyAttributedStringRange {
        attrString.addAttribute(NSStrokeColorAttributeName, value: color, range: range)
        return self
    }
    
    public func setStrokeWidth(width:Float) -> EasyAttributedStringRange {
        attrString.addAttribute(NSStrokeWidthAttributeName, value: width, range: range)
        return self
    }
    
    public func setShadow(shadow:NSShadow) -> EasyAttributedStringRange {
        attrString.addAttribute(NSShadowAttributeName, value: shadow, range: range)
        return self
    }
    
    public func setLigature(ligature:Bool) -> EasyAttributedStringRange {
        attrString.addAttribute(NSLigatureAttributeName, value: ligature, range: range)
        return self
    }
    
    public func setTextEffect() -> EasyAttributedStringRange {
        attrString.addAttribute(NSTextEffectAttributeName, value: NSTextEffectLetterpressStyle, range: range)
        return self
    }
    
    public func setBaselineOffset(offset:Float) -> EasyAttributedStringRange {
        attrString.addAttribute(NSBaselineOffsetAttributeName, value: offset, range: range)
        return self
    }
    
    public func setExpansion(expansion:Float) -> EasyAttributedStringRange {
        attrString.addAttribute(NSExpansionAttributeName, value: expansion, range: range)
        return self
    }
    
    public func setObliqueness(obiqueness:Float) -> EasyAttributedStringRange {
        attrString.addAttribute(NSObliquenessAttributeName, value: obiqueness, range: range)
        return self
    }
    
    public func setAttributes(attributes:[String: AnyObject]) -> EasyAttributedStringRange {
        attrString.addAttributes(attributes, range: range)
        return self
    }
    
}