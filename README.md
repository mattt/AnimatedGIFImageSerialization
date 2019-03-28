# AnimatedGIFImageSerialization

`AnimatedGIFImageSerialization` decodes an `UIImage` from
[Animated GIFs](http://en.wikipedia.org/wiki/Graphics_Interchange_Format),
following the API conventions of Foundation's `NSJSONSerialization` class.

By default, `UIImage` initializers can't decode animated images from GIF files.
This library uses swizzling to provide this functionality for you.
To opt out of this behavior,
set `ANIMATED_GIF_NO_UIIMAGE_INITIALIZER_SWIZZLING` in your build environment.
If you're using CocoaPods,
you can add this build setting to your `Podfile`:

```ruby
post_install do |r|
  r.pods_project.targets.each do |target|
    if target.name == 'AnimatedGIFImageSerialization' then
      target.build_configurations.each do |config|
        config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] ||=
          ['$(inherited)', 'ANIMATED_GIF_NO_UIIMAGE_INITIALIZER_SWIZZLING=1']
      end
    end
  end
end
```

## Usage

### Decoding

```objective-c
UIImageView *imageView = ...;
imageView.image = [UIImage imageNamed:@"animated.gif"];
```

![Animated GIF](https://raw.githubusercontent.com/mattt/AnimatedGIFImageSerialization/master/Example/Animated%20GIF%20Example/animated.gif)

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

Mattt ([@mattt](https://twitter.com/mattt))

## License

AnimatedGIFImageSerialization is available under the MIT license.
See the LICENSE file for more info.
