package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes7.dex */
public final class f0 extends p1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float[] f68135a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f68136b;

    public f0(float[] bufferWithData) {
        Intrinsics.h(bufferWithData, "bufferWithData");
        this.f68135a = bufferWithData;
        this.f68136b = bufferWithData.length;
        b(10);
    }

    @Override // kotlinx.serialization.internal.p1
    public void b(int i11) {
        float[] fArr = this.f68135a;
        if (fArr.length < i11) {
            float[] fArrCopyOf = Arrays.copyOf(fArr, RangesKt.f(i11, fArr.length * 2));
            Intrinsics.g(fArrCopyOf, "copyOf(this, newSize)");
            this.f68135a = fArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.p1
    public int d() {
        return this.f68136b;
    }

    public final void e(float f11) {
        p1.c(this, 0, 1, null);
        float[] fArr = this.f68135a;
        int iD = d();
        this.f68136b = iD + 1;
        fArr[iD] = f11;
    }

    @Override // kotlinx.serialization.internal.p1
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public float[] a() {
        float[] fArrCopyOf = Arrays.copyOf(this.f68135a, d());
        Intrinsics.g(fArrCopyOf, "copyOf(this, newSize)");
        return fArrCopyOf;
    }
}
