package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.UShortArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes7.dex */
public final class n2 extends p1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private short[] f68173a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f68174b;

    private n2(short[] sArr) {
        this.f68173a = sArr;
        this.f68174b = UShortArray.o(sArr);
        b(10);
    }

    public /* synthetic */ n2(short[] sArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(sArr);
    }

    @Override // kotlinx.serialization.internal.p1
    public /* bridge */ /* synthetic */ Object a() {
        return UShortArray.a(f());
    }

    @Override // kotlinx.serialization.internal.p1
    public void b(int i11) {
        if (UShortArray.o(this.f68173a) < i11) {
            short[] sArr = this.f68173a;
            short[] sArrCopyOf = Arrays.copyOf(sArr, RangesKt.f(i11, UShortArray.o(sArr) * 2));
            Intrinsics.g(sArrCopyOf, "copyOf(this, newSize)");
            this.f68173a = UShortArray.e(sArrCopyOf);
        }
    }

    @Override // kotlinx.serialization.internal.p1
    public int d() {
        return this.f68174b;
    }

    public final void e(short s11) {
        p1.c(this, 0, 1, null);
        short[] sArr = this.f68173a;
        int iD = d();
        this.f68174b = iD + 1;
        UShortArray.s(sArr, iD, s11);
    }

    public short[] f() {
        short[] sArrCopyOf = Arrays.copyOf(this.f68173a, d());
        Intrinsics.g(sArrCopyOf, "copyOf(this, newSize)");
        return UShortArray.e(sArrCopyOf);
    }
}
