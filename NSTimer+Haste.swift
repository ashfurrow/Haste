public extension NSTimer {
    typealias Block = () -> ()

    private class BlockWrapper {
        let block: Block

        init(block: Block) {
            self.block = block
        }
    }

    public class func scheduledTimerWithTimeInterval(interval: NSTimeInterval, block: Block, repeats: Bool) -> NSTimer {
        return scheduledTimerWithTimeInterval(interval, target: self, selector: "_timerDidFire:", userInfo: BlockWrapper(block), repeats: repeats)
    }

    // This function can't be private, or else NSTimer can't access it.
    internal class func _timerDidFire(timer: NSTimer) {
        if let blockWrapper = timer.userInfo as? BlockWrapper {
            blockWrapper.block()
        }
    }
}
