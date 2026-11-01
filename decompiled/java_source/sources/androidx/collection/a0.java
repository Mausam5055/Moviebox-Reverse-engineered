package androidx.collection;

import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class a0 extends i {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2260e;

    public a0() {
        this(0, 1, null);
    }

    public a0(int i11) {
        super(null);
        if (!(i11 >= 0)) {
            n.d.a("Capacity must be a positive value.");
        }
        g(v0.g(i11));
    }

    public /* synthetic */ a0(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 6 : i11);
    }

    private final void e() {
        this.f2260e = v0.c(b()) - this.f2284d;
    }

    private final void f(int i11) {
        long[] jArr;
        if (i11 == 0) {
            jArr = v0.f2353a;
        } else {
            jArr = new long[((i11 + 15) & (-8)) >> 3];
            ArraysKt.z(jArr, -9187201950435737472L, 0, 0, 6, null);
        }
        this.f2281a = jArr;
        int i12 = i11 >> 3;
        long j11 = 255 << ((i11 & 7) << 3);
        jArr[i12] = (jArr[i12] & (~j11)) | j11;
        e();
    }

    private final void g(int i11) {
        int iMax = i11 > 0 ? Math.max(7, v0.f(i11)) : 0;
        this.f2283c = iMax;
        f(iMax);
        this.f2282b = new float[iMax];
    }
}
