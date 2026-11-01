package qd;

import com.google.zxing.ReaderException;

/* JADX INFO: loaded from: classes5.dex */
final class v {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f73595c = {1, 1, 2};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final t f73596a = new t();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final u f73597b = new u();

    v() {
    }

    com.google.zxing.j a(int i11, id.a aVar, int i12) {
        int[] iArrN = w.n(aVar, i12, false, f73595c);
        try {
            return this.f73597b.b(i11, aVar, iArrN);
        } catch (ReaderException unused) {
            return this.f73596a.b(i11, aVar, iArrN);
        }
    }
}
