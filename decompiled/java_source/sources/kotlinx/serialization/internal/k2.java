package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.ULongArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes7.dex */
public final class k2 extends p1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long[] f68162a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f68163b;

    private k2(long[] jArr) {
        this.f68162a = jArr;
        this.f68163b = ULongArray.o(jArr);
        b(10);
    }

    public /* synthetic */ k2(long[] jArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(jArr);
    }

    @Override // kotlinx.serialization.internal.p1
    public /* bridge */ /* synthetic */ Object a() {
        return ULongArray.a(f());
    }

    @Override // kotlinx.serialization.internal.p1
    public void b(int i11) {
        if (ULongArray.o(this.f68162a) < i11) {
            long[] jArr = this.f68162a;
            long[] jArrCopyOf = Arrays.copyOf(jArr, RangesKt.f(i11, ULongArray.o(jArr) * 2));
            Intrinsics.g(jArrCopyOf, "copyOf(this, newSize)");
            this.f68162a = ULongArray.e(jArrCopyOf);
        }
    }

    @Override // kotlinx.serialization.internal.p1
    public int d() {
        return this.f68163b;
    }

    public final void e(long j11) {
        p1.c(this, 0, 1, null);
        long[] jArr = this.f68162a;
        int iD = d();
        this.f68163b = iD + 1;
        ULongArray.s(jArr, iD, j11);
    }

    public long[] f() {
        long[] jArrCopyOf = Arrays.copyOf(this.f68162a, d());
        Intrinsics.g(jArrCopyOf, "copyOf(this, newSize)");
        return ULongArray.e(jArrCopyOf);
    }
}
