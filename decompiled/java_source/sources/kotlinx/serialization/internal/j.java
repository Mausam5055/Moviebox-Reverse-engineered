package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes7.dex */
public final class j extends p1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f68156a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f68157b;

    public j(byte[] bufferWithData) {
        Intrinsics.h(bufferWithData, "bufferWithData");
        this.f68156a = bufferWithData;
        this.f68157b = bufferWithData.length;
        b(10);
    }

    @Override // kotlinx.serialization.internal.p1
    public void b(int i11) {
        byte[] bArr = this.f68156a;
        if (bArr.length < i11) {
            byte[] bArrCopyOf = Arrays.copyOf(bArr, RangesKt.f(i11, bArr.length * 2));
            Intrinsics.g(bArrCopyOf, "copyOf(this, newSize)");
            this.f68156a = bArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.p1
    public int d() {
        return this.f68157b;
    }

    public final void e(byte b11) {
        p1.c(this, 0, 1, null);
        byte[] bArr = this.f68156a;
        int iD = d();
        this.f68157b = iD + 1;
        bArr[iD] = b11;
    }

    @Override // kotlinx.serialization.internal.p1
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public byte[] a() {
        byte[] bArrCopyOf = Arrays.copyOf(this.f68156a, d());
        Intrinsics.g(bArrCopyOf, "copyOf(this, newSize)");
        return bArrCopyOf;
    }
}
