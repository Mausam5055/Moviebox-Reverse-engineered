package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes7.dex */
public final class y1 extends p1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private short[] f68217a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f68218b;

    public y1(short[] bufferWithData) {
        Intrinsics.h(bufferWithData, "bufferWithData");
        this.f68217a = bufferWithData;
        this.f68218b = bufferWithData.length;
        b(10);
    }

    @Override // kotlinx.serialization.internal.p1
    public void b(int i11) {
        short[] sArr = this.f68217a;
        if (sArr.length < i11) {
            short[] sArrCopyOf = Arrays.copyOf(sArr, RangesKt.f(i11, sArr.length * 2));
            Intrinsics.g(sArrCopyOf, "copyOf(this, newSize)");
            this.f68217a = sArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.p1
    public int d() {
        return this.f68218b;
    }

    public final void e(short s11) {
        p1.c(this, 0, 1, null);
        short[] sArr = this.f68217a;
        int iD = d();
        this.f68218b = iD + 1;
        sArr[iD] = s11;
    }

    @Override // kotlinx.serialization.internal.p1
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public short[] a() {
        short[] sArrCopyOf = Arrays.copyOf(this.f68217a, d());
        Intrinsics.g(sArrCopyOf, "copyOf(this, newSize)");
        return sArrCopyOf;
    }
}
