Colors
===========
generate UIColor/CGColorRef by copying and pasting RGB code in swift project.

```swift
let color = UIColor.RGB(0xEB79BC) #pink
let color = UIColor.RGB(0x51E0BF) #green
let color = UIColor.RGB(0x5183E0) #blue

#color with alpha
let color = UIColor.RGBA(0xEB79BC, 0.8) #pink
let color = UIColor.RGBA(0x51E0BF, 0.9) #green
let color = UIColor.RGBA(0x5183E0, 0.7) #blue

#return CGColorRef
let color = UIColor.CGRGB(0xEB79BC, 0.8) #pink
let color = UIColor.CGRGB(0x51E0BF, 0.9) #green
let color = UIColor.CGRGB(0x5183E0, 0.7) #blue

#CGColorRef with alpha
let color = UIColor.CGRGBA(0xEB79BC, 0.8) #pink
let color = UIColor.CGRGBA(0x51E0BF, 0.9) #green
let color = UIColor.CGRGBA(0x5183E0, 0.7) #blue
```
###How to add?

Simply drag the Colors.swift file into your swift project.

###pre-defined colors

```swift
let color = UIColor.flatRedColor
let color = UIColor.flatGreenColor
let color = UIColor.flatDarkBlueColor

#return CGColorRef
let color = UIColor.CGflatRedColor
let color = UIColor.CGflatGreenColor
let color = UIColor.CGflatDarkBlueColor

```

Contribute
==========
Please feel free to [open a new pull request](https://github.com/ytbryan/colors/pulls).

Inspired by
==========
- [Google Material Design UI Color Palette](http://www.google.com/design/spec/style/color.html)
- [MLPFlatColors](https://github.com/EddyBorja/UIColor-MLPFlatColors)
- [colorpicker.com](http://colorpicker.com)

Contact
=======
- [@ytbryan](http://twitter.com/ytbryan)
- [@digitalasia](http://github.com/digitalasia)

License
=======
[MIT License](http://www.opensource.org/licenses/MIT).
