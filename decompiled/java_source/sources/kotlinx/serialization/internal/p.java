package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes7.dex */
public final class p extends p1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private char[] f68179a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f68180b;

    public p(char[] bufferWithData) {
        Intrinsics.h(bufferWithData, "bufferWithData");
        this.f68179a = bufferWithData;
        this.f68180b = bufferWithData.length;
        b(10);
    }

    @Override // kotlinx.serialization.internal.p1
    public void b(int i11) {
        char[] cArr = this.f68179a;
        if (cArr.length < i11) {
            char[] cArrCopyOf = Arrays.copyOf(cArr, RangesKt.f(i11, cArr.length * 2));
            Intrinsics.g(cArrCopyOf, "copyOf(this, newSize)");
            this.f68179a = cArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.p1
    public int d() {
        return this.f68180b;
    }

    public final void e(char c11) {
        p1.c(this, 0, 1, null);
        char[] cArr = this.f68179a;
        int iD = d();
        this.f68180b = iD + 1;
        cArr[iD] = c11;
    }

    @Override // kotlinx.serialization.internal.p1
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public char[] a() {
        char[] cArrCopyOf = Arrays.copyOf(this.f68179a, d());
        Intrinsics.g(cArrCopyOf, "copyOf(this, newSize)");
        return cArrCopyOf;
    }
}
