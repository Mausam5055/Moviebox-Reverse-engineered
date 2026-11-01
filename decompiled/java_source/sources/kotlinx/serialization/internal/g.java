package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes7.dex */
public final class g extends p1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean[] f68138a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f68139b;

    public g(boolean[] bufferWithData) {
        Intrinsics.h(bufferWithData, "bufferWithData");
        this.f68138a = bufferWithData;
        this.f68139b = bufferWithData.length;
        b(10);
    }

    @Override // kotlinx.serialization.internal.p1
    public void b(int i11) {
        boolean[] zArr = this.f68138a;
        if (zArr.length < i11) {
            boolean[] zArrCopyOf = Arrays.copyOf(zArr, RangesKt.f(i11, zArr.length * 2));
            Intrinsics.g(zArrCopyOf, "copyOf(this, newSize)");
            this.f68138a = zArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.p1
    public int d() {
        return this.f68139b;
    }

    public final void e(boolean z10) {
        p1.c(this, 0, 1, null);
        boolean[] zArr = this.f68138a;
        int iD = d();
        this.f68139b = iD + 1;
        zArr[iD] = z10;
    }

    @Override // kotlinx.serialization.internal.p1
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public boolean[] a() {
        boolean[] zArrCopyOf = Arrays.copyOf(this.f68138a, d());
        Intrinsics.g(zArrCopyOf, "copyOf(this, newSize)");
        return zArrCopyOf;
    }
}
