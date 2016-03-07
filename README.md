AnimatedGIFImageSerialization
=============================

`AnimatedGIFImageSerialization` decodes an `UIImage` from [Animated GIFs](http://en.wikipedia.org/wiki/Graphics_Interchange_Format) image data, following the API conventions of Foundation's `NSJSONSerialization` class.

As it ships with iOS, `UIImage` does not support decoding animated gifs into an animated `UIImage`. But so long as `ANIMATED_GIF_NO_UIIMAGE_INITIALIZER_SWIZZLING` is not `#define`'d, the this library will swizzle the `UIImage` initializers to automatically support animated GIFs.

##Installation
If using CocoaPods:
```
pod 'AnimatedGIFImageSerialization', '~> 0.2'
```

## Usage

### Decoding

```objective-c
UIImageView *imageView = ...;
imageView.image = [UIImage imageNamed:@"animated.gif"];
```

![Animated GIF](https://raw.githubusercontent.com/mattt/AnimatedGIFImageSerialization/master/Example/Animated%20GIF%20Example/animated.gif)

## Storing GIFs locally
1. Store the gif files you want to use locally in your project directory. 
They don't have to be in the root directory. Use the finder (or explorer) and copy the gifs you want to the project directory (not the Project navigator in xCode)
2. Add the gif files to the Project navigator in xCode (you can place them inside their own group).
3. Done, you can now reference the gifs by their name, like in the above example.

### Encoding

```objective-c
UIImage *image = ...;
NSData *data = [AnimatedGIFImageSerialization animatedGIFDataWithImage:image
                                                              duration:1.0
                                                             loopCount:1
                                                                 error:nil];
```

---

## Contact

Mattt Thompson

- http://github.com/mattt
- http://twitter.com/mattt
- m@mattt.me

## License

AnimatedGIFImageSerialization is available under the MIT license. See the LICENSE file for more info.
