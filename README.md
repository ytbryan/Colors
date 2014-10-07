Colors
===========
generate UIColor/CGColorRef by copying and pasting RGB code in swift project.

![demo](gif/demo.gif)

```swift
let color = UIColor.RGB(0xEB79BC) #pink
let color = UIColor.RGB(0x51E0BF) #green
let color = UIColor.RGB(0x5183E0) #blue

#color with alpha
let color = UIColor.RGBA(0xEB79BC, 0.8) #pink
let color = UIColor.RGBA(0x51E0BF, 0.9) #green
let color = UIColor.RGBA(0x5183E0, 0.7) #blue

#return CGColorRef
let color = UIColor.CGRGB(0xEB79BC, 0.8) #pink in CGColorRef
let color = UIColor.CGRGB(0x51E0BF, 0.9) #green in CGColorRef
let color = UIColor.CGRGB(0x5183E0, 0.7) #blue in CGColorRef

#CGColorRef with alpha
let color = UIColor.CGRGBA(0xEB79BC, 0.8) #pink
let color = UIColor.CGRGBA(0x51E0BF, 0.9) #green
let color = UIColor.CGRGBA(0x5183E0, 0.7) #blue
```
###How to use?

Simply drag the Colors.swift file into your swift project.

###pre-defined colors

```swift
let color1 = UIColor.flatRed
let color2 = UIColor.flatGreen
let color3 = UIColor.flatDarkBlue

#return CGColorRef
let color4 = UIColor.CGflatRed
let color5 = UIColor.CGflatGreen
let color6 = UIColor.CGflatDarkBlue

#note that material colors aren't completed
#from google's material design color palatte
let color7 = UIColor.pink50 #fce4ec
let color8 = UIColor.pink100 #f8bbd0
let color9 = UIColor.pink200 #f48fb1
let color10 = UIColor.pink300 #f06292

#with CGColorRef
let color11 = UIColor.CGPink50 #fce4ec
let color12 = UIColor.CGPink100 #f8bbd0
let color13 = UIColor.CGPink200 #f48fb1
let color14 = UIColor.CGPink300 #f06292


```

Contribute
==========
Please feel free to [open a new pull request](https://github.com/ytbryan/colors/pulls).

Inspired by
==========
- [BFPaperColors](https://github.com/bfeher/BFPaperColors)
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
