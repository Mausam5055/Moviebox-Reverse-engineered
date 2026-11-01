package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes7.dex */
public final class p0 extends p1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int[] f68181a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f68182b;

    public p0(int[] bufferWithData) {
        Intrinsics.h(bufferWithData, "bufferWithData");
        this.f68181a = bufferWithData;
        this.f68182b = bufferWithData.length;
        b(10);
    }

    @Override // kotlinx.serialization.internal.p1
    public void b(int i11) {
        int[] iArr = this.f68181a;
        if (iArr.length < i11) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, RangesKt.f(i11, iArr.length * 2));
            Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
            this.f68181a = iArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.p1
    public int d() {
        return this.f68182b;
    }

    public final void e(int i11) {
        p1.c(this, 0, 1, null);
        int[] iArr = this.f68181a;
        int iD = d();
        this.f68182b = iD + 1;
        iArr[iD] = i11;
    }

    @Override // kotlinx.serialization.internal.p1
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public int[] a() {
        int[] iArrCopyOf = Arrays.copyOf(this.f68181a, d());
        Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
        return iArrCopyOf;
    }
}
