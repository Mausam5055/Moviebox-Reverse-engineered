package com.google.android.exoplayer2.util;

import java.io.IOException;
import java.util.Collections;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes3.dex */
public final class PriorityTaskManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f27551a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PriorityQueue f27552b = new PriorityQueue(10, Collections.reverseOrder());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f27553c = Integer.MIN_VALUE;

    public static class PriorityTooLowException extends IOException {
        public PriorityTooLowException(int i11, int i12) {
            super("Priority too low [priority=" + i11 + ", highest=" + i12 + "]");
        }
    }

    public void a(int i11) {
        synchronized (this.f27551a) {
            this.f27552b.add(Integer.valueOf(i11));
            this.f27553c = Math.max(this.f27553c, i11);
        }
    }

    public void b(int i11) {
        synchronized (this.f27551a) {
            while (this.f27553c != i11) {
                try {
                    this.f27551a.wait();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void c(int i11) {
        synchronized (this.f27551a) {
            try {
                if (this.f27553c != i11) {
                    throw new PriorityTooLowException(i11, this.f27553c);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void d(int i11) {
        synchronized (this.f27551a) {
            this.f27552b.remove(Integer.valueOf(i11));
            this.f27553c = this.f27552b.isEmpty() ? Integer.MIN_VALUE : ((Integer) p0.j((Integer) this.f27552b.peek())).intValue();
            this.f27551a.notifyAll();
        }
    }
}
