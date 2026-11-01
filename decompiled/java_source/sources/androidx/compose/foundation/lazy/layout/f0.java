package androidx.compose.foundation.lazy.layout;

import androidx.collection.m0;
import androidx.collection.t0;

/* JADX INFO: loaded from: classes.dex */
public final class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m0 f3053a = t0.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m0 f3054b = t0.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f3055c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f3056d;

    /* JADX INFO: Access modifiers changed from: private */
    public final long d(long j11, long j12) {
        if (j12 == 0) {
            return j11;
        }
        long j13 = 4;
        return (j11 / j13) + ((j12 / j13) * ((long) 3));
    }

    public final long e() {
        return this.f3055c;
    }

    public final m0 f() {
        return this.f3053a;
    }

    public final long g() {
        return this.f3056d;
    }

    public final m0 h() {
        return this.f3054b;
    }
}
