package com.mbridge.msdk.playercommon.exoplayer2.util;

import java.io.IOException;
import java.util.Collections;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes5.dex */
public final class PriorityTaskManager {
    private final Object lock = new Object();
    private final PriorityQueue<Integer> queue = new PriorityQueue<>(10, Collections.reverseOrder());
    private int highestPriority = Integer.MIN_VALUE;

    public static class PriorityTooLowException extends IOException {
        public PriorityTooLowException(int i11, int i12) {
            super("Priority too low [priority=" + i11 + ", highest=" + i12 + "]");
        }
    }

    public void add(int i11) {
        synchronized (this.lock) {
            this.queue.add(Integer.valueOf(i11));
            this.highestPriority = Math.max(this.highestPriority, i11);
        }
    }

    public void proceed(int i11) throws InterruptedException {
        synchronized (this.lock) {
            while (this.highestPriority != i11) {
                try {
                    this.lock.wait();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public boolean proceedNonBlocking(int i11) {
        boolean z10;
        synchronized (this.lock) {
            z10 = this.highestPriority == i11;
        }
        return z10;
    }

    public void proceedOrThrow(int i11) throws PriorityTooLowException {
        synchronized (this.lock) {
            try {
                if (this.highestPriority != i11) {
                    throw new PriorityTooLowException(i11, this.highestPriority);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void remove(int i11) {
        synchronized (this.lock) {
            this.queue.remove(Integer.valueOf(i11));
            this.highestPriority = this.queue.isEmpty() ? Integer.MIN_VALUE : this.queue.peek().intValue();
            this.lock.notifyAll();
        }
    }
}
