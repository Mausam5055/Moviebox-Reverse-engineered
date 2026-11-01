package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes7.dex */
public final class z0 extends p1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long[] f68221a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f68222b;

    public z0(long[] bufferWithData) {
        Intrinsics.h(bufferWithData, "bufferWithData");
        this.f68221a = bufferWithData;
        this.f68222b = bufferWithData.length;
        b(10);
    }

    @Override // kotlinx.serialization.internal.p1
    public void b(int i11) {
        long[] jArr = this.f68221a;
        if (jArr.length < i11) {
            long[] jArrCopyOf = Arrays.copyOf(jArr, RangesKt.f(i11, jArr.length * 2));
            Intrinsics.g(jArrCopyOf, "copyOf(this, newSize)");
            this.f68221a = jArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.p1
    public int d() {
        return this.f68222b;
    }

    public final void e(long j11) {
        p1.c(this, 0, 1, null);
        long[] jArr = this.f68221a;
        int iD = d();
        this.f68222b = iD + 1;
        jArr[iD] = j11;
    }

    @Override // kotlinx.serialization.internal.p1
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public long[] a() {
        long[] jArrCopyOf = Arrays.copyOf(this.f68221a, d());
        Intrinsics.g(jArrCopyOf, "copyOf(this, newSize)");
        return jArrCopyOf;
    }
}
