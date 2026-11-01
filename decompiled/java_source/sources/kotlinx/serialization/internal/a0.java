package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes7.dex */
public final class a0 extends p1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private double[] f68104a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f68105b;

    public a0(double[] bufferWithData) {
        Intrinsics.h(bufferWithData, "bufferWithData");
        this.f68104a = bufferWithData;
        this.f68105b = bufferWithData.length;
        b(10);
    }

    @Override // kotlinx.serialization.internal.p1
    public void b(int i11) {
        double[] dArr = this.f68104a;
        if (dArr.length < i11) {
            double[] dArrCopyOf = Arrays.copyOf(dArr, RangesKt.f(i11, dArr.length * 2));
            Intrinsics.g(dArrCopyOf, "copyOf(this, newSize)");
            this.f68104a = dArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.p1
    public int d() {
        return this.f68105b;
    }

    public final void e(double d11) {
        p1.c(this, 0, 1, null);
        double[] dArr = this.f68104a;
        int iD = d();
        this.f68105b = iD + 1;
        dArr[iD] = d11;
    }

    @Override // kotlinx.serialization.internal.p1
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public double[] a() {
        double[] dArrCopyOf = Arrays.copyOf(this.f68104a, d());
        Intrinsics.g(dArrCopyOf, "copyOf(this, newSize)");
        return dArrCopyOf;
    }
}
