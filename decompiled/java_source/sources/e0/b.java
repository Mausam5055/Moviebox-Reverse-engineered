package e0;

import androidx.compose.ui.input.pointer.v;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f61465a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long[] f61466b = new long[2];

    public final boolean a(long j11) {
        if (d(j11)) {
            return false;
        }
        k(this.f61465a, j11);
        return true;
    }

    public final boolean b(long j11) {
        return a(j11);
    }

    public final void c() {
        this.f61465a = 0;
    }

    public final boolean d(long j11) {
        int i11 = this.f61465a;
        for (int i12 = 0; i12 < i11; i12++) {
            if (this.f61466b[i12] == j11) {
                return true;
            }
        }
        return false;
    }

    public final long e(int i11) {
        return v.b(this.f61466b[i11]);
    }

    public final int f() {
        return this.f61465a;
    }

    public final boolean g() {
        return this.f61465a == 0;
    }

    public final boolean h(long j11) {
        int i11 = this.f61465a;
        for (int i12 = 0; i12 < i11; i12++) {
            if (j11 == e(i12)) {
                j(i12);
                return true;
            }
        }
        return false;
    }

    public final boolean i(long j11) {
        return h(j11);
    }

    public final boolean j(int i11) {
        int i12 = this.f61465a;
        if (i11 >= i12) {
            return false;
        }
        int i13 = i12 - 1;
        while (i11 < i13) {
            long[] jArr = this.f61466b;
            int i14 = i11 + 1;
            jArr[i11] = jArr[i14];
            i11 = i14;
        }
        this.f61465a--;
        return true;
    }

    public final void k(int i11, long j11) {
        long[] jArr = this.f61466b;
        if (i11 >= jArr.length) {
            long[] jArrCopyOf = Arrays.copyOf(jArr, Math.max(i11 + 1, jArr.length * 2));
            Intrinsics.g(jArrCopyOf, "copyOf(this, newSize)");
            this.f61466b = jArrCopyOf;
        }
        this.f61466b[i11] = j11;
        if (i11 >= this.f61465a) {
            this.f61465a = i11 + 1;
        }
    }
}
