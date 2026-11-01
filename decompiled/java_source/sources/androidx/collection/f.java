package androidx.collection;

import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int[] f2273a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2275c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2276d;

    @JvmOverloads
    public f() {
        this(0, 1, null);
    }

    public f(int i11) {
        if (!(i11 >= 1)) {
            n.d.a("capacity must be >= 1");
        }
        if (!(i11 <= 1073741824)) {
            n.d.a("capacity must be <= 2^30");
        }
        i11 = Integer.bitCount(i11) != 1 ? Integer.highestOneBit(i11 - 1) << 1 : i11;
        this.f2276d = i11 - 1;
        this.f2273a = new int[i11];
    }

    public /* synthetic */ f(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 8 : i11);
    }

    private final void c() {
        int[] iArr = this.f2273a;
        int length = iArr.length;
        int i11 = this.f2274b;
        int i12 = length - i11;
        int i13 = length << 1;
        if (i13 < 0) {
            throw new RuntimeException("Max array capacity exceeded");
        }
        int[] iArr2 = new int[i13];
        ArraysKt.l(iArr, iArr2, 0, i11, length);
        ArraysKt.l(this.f2273a, iArr2, i12, 0, this.f2274b);
        this.f2273a = iArr2;
        this.f2274b = 0;
        this.f2275c = length;
        this.f2276d = i13 - 1;
    }

    public final void a(int i11) {
        int[] iArr = this.f2273a;
        int i12 = this.f2275c;
        iArr[i12] = i11;
        int i13 = this.f2276d & (i12 + 1);
        this.f2275c = i13;
        if (i13 == this.f2274b) {
            c();
        }
    }

    public final void b() {
        this.f2275c = this.f2274b;
    }

    public final boolean d() {
        return this.f2274b == this.f2275c;
    }

    public final int e() {
        int i11 = this.f2274b;
        if (i11 == this.f2275c) {
            g gVar = g.f2278a;
            throw new ArrayIndexOutOfBoundsException();
        }
        int i12 = this.f2273a[i11];
        this.f2274b = (i11 + 1) & this.f2276d;
        return i12;
    }
}
