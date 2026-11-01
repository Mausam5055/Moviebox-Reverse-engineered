package androidx.media3.exoplayer;

import android.os.HandlerThread;
import android.os.Looper;

/* JADX INFO: loaded from: classes2.dex */
public final class s3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f12571a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Looper f12572b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private HandlerThread f12573c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f12574d;

    public s3() {
        this(null);
    }

    public s3(Looper looper) {
        this.f12571a = new Object();
        this.f12572b = looper;
        this.f12573c = null;
        this.f12574d = 0;
    }

    public Looper a() {
        Looper looper;
        synchronized (this.f12571a) {
            try {
                if (this.f12572b == null) {
                    androidx.media3.common.util.a.g(this.f12574d == 0 && this.f12573c == null);
                    HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
                    this.f12573c = handlerThread;
                    handlerThread.start();
                    this.f12572b = this.f12573c.getLooper();
                }
                this.f12574d++;
                looper = this.f12572b;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return looper;
    }

    public void b() {
        HandlerThread handlerThread;
        synchronized (this.f12571a) {
            try {
                androidx.media3.common.util.a.g(this.f12574d > 0);
                int i11 = this.f12574d - 1;
                this.f12574d = i11;
                if (i11 == 0 && (handlerThread = this.f12573c) != null) {
                    handlerThread.quit();
                    this.f12573c = null;
                    this.f12572b = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
