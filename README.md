# EasyAttributedString

![screenshot](https://github.com/ghysrc/EasyAttributedString/blob/master/EasyAttributedString/EasyAttributedString.png)

# How to use
```swift
let str = EasyAttributedStringBuilder(str: "Some Text")
str.firstCharacter().setFont(UIFont.systemFontOfSize(22)).setTextColor(UIColor.blueColor())
str.allRange().setBackgroundColor(UIColor.orangeColor()).setTextColor(UIColor.whiteColor())
str.rangeOfString("kern").setKern(10)
str.rangeWith(7, length: 4).setBaselineOffset(-5)

cell?.textLabel?.attributedText = str.build()
```
