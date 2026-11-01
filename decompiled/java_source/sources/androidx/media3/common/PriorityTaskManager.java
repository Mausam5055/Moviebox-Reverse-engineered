package androidx.media3.common;

import androidx.media3.common.util.a1;
import java.io.IOException;
import java.util.Collections;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes2.dex */
public final class PriorityTaskManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f9783a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PriorityQueue f9784b = new PriorityQueue(10, Collections.reverseOrder());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f9785c = Integer.MIN_VALUE;

    public static class PriorityTooLowException extends IOException {
        public PriorityTooLowException(int i11, int i12) {
            super("Priority too low [priority=" + i11 + ", highest=" + i12 + "]");
        }
    }

    public void a(int i11) {
        synchronized (this.f9783a) {
            this.f9784b.add(Integer.valueOf(i11));
            this.f9785c = Math.max(this.f9785c, i11);
        }
    }

    public void b(int i11) {
        synchronized (this.f9783a) {
            while (this.f9785c != i11) {
                try {
                    this.f9783a.wait();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void c(int i11) {
        synchronized (this.f9783a) {
            try {
                if (this.f9785c != i11) {
                    throw new PriorityTooLowException(i11, this.f9785c);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void d(int i11) {
        synchronized (this.f9783a) {
            this.f9784b.remove(Integer.valueOf(i11));
            this.f9785c = this.f9784b.isEmpty() ? Integer.MIN_VALUE : ((Integer) a1.i((Integer) this.f9784b.peek())).intValue();
            this.f9783a.notifyAll();
        }
    }
}
