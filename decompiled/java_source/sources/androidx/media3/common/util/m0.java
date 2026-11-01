package androidx.media3.common.util;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
public class m0 implements i {
    protected m0() {
    }

    @Override // androidx.media3.common.util.i
    public void a() {
    }

    @Override // androidx.media3.common.util.i
    public p createHandler(Looper looper, Handler.Callback callback) {
        return new n0(new Handler(looper, callback));
    }

    @Override // androidx.media3.common.util.i
    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }

    @Override // androidx.media3.common.util.i
    public long elapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }

    @Override // androidx.media3.common.util.i
    public long nanoTime() {
        return System.nanoTime();
    }

    @Override // androidx.media3.common.util.i
    public long uptimeMillis() {
        return SystemClock.uptimeMillis();
    }
}
