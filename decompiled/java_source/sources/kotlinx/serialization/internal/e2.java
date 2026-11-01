package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.UByteArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes7.dex */
public final class e2 extends p1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f68132a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f68133b;

    private e2(byte[] bArr) {
        this.f68132a = bArr;
        this.f68133b = UByteArray.o(bArr);
        b(10);
    }

    public /* synthetic */ e2(byte[] bArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(bArr);
    }

    @Override // kotlinx.serialization.internal.p1
    public /* bridge */ /* synthetic */ Object a() {
        return UByteArray.a(f());
    }

    @Override // kotlinx.serialization.internal.p1
    public void b(int i11) {
        if (UByteArray.o(this.f68132a) < i11) {
            byte[] bArr = this.f68132a;
            byte[] bArrCopyOf = Arrays.copyOf(bArr, RangesKt.f(i11, UByteArray.o(bArr) * 2));
            Intrinsics.g(bArrCopyOf, "copyOf(this, newSize)");
            this.f68132a = UByteArray.e(bArrCopyOf);
        }
    }

    @Override // kotlinx.serialization.internal.p1
    public int d() {
        return this.f68133b;
    }

    public final void e(byte b11) {
        p1.c(this, 0, 1, null);
        byte[] bArr = this.f68132a;
        int iD = d();
        this.f68133b = iD + 1;
        UByteArray.s(bArr, iD, b11);
    }

    public byte[] f() {
        byte[] bArrCopyOf = Arrays.copyOf(this.f68132a, d());
        Intrinsics.g(bArrCopyOf, "copyOf(this, newSize)");
        return UByteArray.e(bArrCopyOf);
    }
}
