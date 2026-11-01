package androidx.collection;

import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class g0 extends t {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f2279f;

    public g0() {
        this(0, 1, null);
    }

    public g0(int i11) {
        super(null);
        if (!(i11 >= 0)) {
            n.d.a("Capacity must be a positive value.");
        }
        h(v0.g(i11));
    }

    public /* synthetic */ g0(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 6 : i11);
    }

    private final void f() {
        this.f2279f = v0.c(c()) - this.f2337e;
    }

    private final void g(int i11) {
        long[] jArr;
        if (i11 == 0) {
            jArr = v0.f2353a;
        } else {
            jArr = new long[((i11 + 15) & (-8)) >> 3];
            ArraysKt.z(jArr, -9187201950435737472L, 0, 0, 6, null);
        }
        this.f2333a = jArr;
        int i12 = i11 >> 3;
        long j11 = 255 << ((i11 & 7) << 3);
        jArr[i12] = (jArr[i12] & (~j11)) | j11;
        f();
    }

    private final void h(int i11) {
        int iMax = i11 > 0 ? Math.max(7, v0.f(i11)) : 0;
        this.f2336d = iMax;
        g(iMax);
        this.f2334b = new long[iMax];
        this.f2335c = new int[iMax];
    }
}
