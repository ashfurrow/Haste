extension NSTimer {
    typealias Block = () -> ()

    private class BlockWrapper {
        let block: Block

        init(block: Block) {
            self.block = block
        }
    }

    class func scheduledTimerWithTimeInterval(interval: NSTimeInterval, block: Block, repeats: Bool) -> NSTimer {
        return scheduledTimerWithTimeInterval(interval, target: self, selector: "_timerDidFire:", userInfo: BlockWrapper(block), repeats: repeats)
    }

    class func _timerDidFire(timer: NSTimer) {
        if let blockWrapper = timer.userInfo as? BlockWrapper {
            blockWrapper.block()
        }
    }
}
