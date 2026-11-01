package androidx.collection;

import java.util.Arrays;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class d0 extends m {
    public d0() {
        this(0, 1, null);
    }

    public d0(int i11) {
        super(i11, null);
    }

    public /* synthetic */ d0(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 16 : i11);
    }

    public final boolean e(int i11) {
        g(this.f2299b + 1);
        int[] iArr = this.f2298a;
        int i12 = this.f2299b;
        iArr[i12] = i11;
        this.f2299b = i12 + 1;
        return true;
    }

    public final boolean f(int i11, int[] elements) {
        int i12;
        Intrinsics.h(elements, "elements");
        if (i11 < 0 || i11 > (i12 = this.f2299b)) {
            throw new IndexOutOfBoundsException("Index " + i11 + " must be in 0.." + this.f2299b);
        }
        if (elements.length == 0) {
            return false;
        }
        g(i12 + elements.length);
        int[] iArr = this.f2298a;
        int i13 = this.f2299b;
        if (i11 != i13) {
            ArraysKt.l(iArr, iArr, elements.length + i11, i11, i13);
        }
        ArraysKt.q(elements, iArr, i11, 0, 0, 12, null);
        this.f2299b += elements.length;
        return true;
    }

    public final void g(int i11) {
        int[] iArr = this.f2298a;
        if (iArr.length < i11) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, Math.max(i11, (iArr.length * 3) / 2));
            Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
            this.f2298a = iArrCopyOf;
        }
    }

    public final void h(int[] elements) {
        Intrinsics.h(elements, "elements");
        f(this.f2299b, elements);
    }

    public final int i(int i11) {
        int i12;
        if (i11 < 0 || i11 >= (i12 = this.f2299b)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Index ");
            sb2.append(i11);
            sb2.append(" must be in 0..");
            sb2.append(this.f2299b - 1);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        int[] iArr = this.f2298a;
        int i13 = iArr[i11];
        if (i11 != i12 - 1) {
            ArraysKt.l(iArr, iArr, i11, i11 + 1, i12);
        }
        this.f2299b--;
        return i13;
    }

    public final int j(int i11, int i12) {
        if (i11 >= 0 && i11 < this.f2299b) {
            int[] iArr = this.f2298a;
            int i13 = iArr[i11];
            iArr[i11] = i12;
            return i13;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("set index ");
        sb2.append(i11);
        sb2.append(" must be between 0 .. ");
        sb2.append(this.f2299b - 1);
        throw new IndexOutOfBoundsException(sb2.toString());
    }
}
