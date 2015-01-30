Haste
================

Everyone has made block NSTimer categories for `NSTimer` in Objective-C. But who has done it in Swift? Well, probably lots of people, but the point is that it is not as straightforward as you might think.

Usage
----------------

1. Add `pod 'Haste'` to your Podfile.
2. Add `import Haste` whevever you want to time things with closures.
3. Call the following function. 

	```swift
	NSTimer.scheduledTimerWithTimeInterval(1, block: { () -> () in
	    println("Why does anyone do the things they do?")
	}, repeats: true)

	```

4. That function returns the `NSTimer` instance, so you can call `invalidate()` on it when you want things to stop. 
