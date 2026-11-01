package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.UIntArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes7.dex */
public final class h2 extends p1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int[] f68150a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f68151b;

    private h2(int[] iArr) {
        this.f68150a = iArr;
        this.f68151b = UIntArray.o(iArr);
        b(10);
    }

    public /* synthetic */ h2(int[] iArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(iArr);
    }

    @Override // kotlinx.serialization.internal.p1
    public /* bridge */ /* synthetic */ Object a() {
        return UIntArray.a(f());
    }

    @Override // kotlinx.serialization.internal.p1
    public void b(int i11) {
        if (UIntArray.o(this.f68150a) < i11) {
            int[] iArr = this.f68150a;
            int[] iArrCopyOf = Arrays.copyOf(iArr, RangesKt.f(i11, UIntArray.o(iArr) * 2));
            Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
            this.f68150a = UIntArray.e(iArrCopyOf);
        }
    }

    @Override // kotlinx.serialization.internal.p1
    public int d() {
        return this.f68151b;
    }

    public final void e(int i11) {
        p1.c(this, 0, 1, null);
        int[] iArr = this.f68150a;
        int iD = d();
        this.f68151b = iD + 1;
        UIntArray.s(iArr, iD, i11);
    }

    public int[] f() {
        int[] iArrCopyOf = Arrays.copyOf(this.f68150a, d());
        Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
        return UIntArray.e(iArrCopyOf);
    }
}
