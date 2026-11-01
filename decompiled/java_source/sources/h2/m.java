package h2;

import androidx.media3.common.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class m extends e {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f64350j;

    public m(androidx.media3.datasource.a aVar, w1.h hVar, r rVar, int i11, Object obj, long j11, long j12, long j13) {
        super(aVar, hVar, 1, rVar, i11, obj, j11, j12);
        androidx.media3.common.util.a.e(rVar);
        this.f64350j = j13;
    }

    public long e() {
        long j11 = this.f64350j;
        if (j11 != -1) {
            return 1 + j11;
        }
        return -1L;
    }

    public abstract boolean f();
}
