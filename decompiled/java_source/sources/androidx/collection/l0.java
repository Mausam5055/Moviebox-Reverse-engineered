package androidx.collection;

import java.util.Arrays;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class l0 extends ObjectList {
    public l0() {
        this(0, 1, null);
    }

    public l0(int i11) {
        super(i11, null);
    }

    public /* synthetic */ l0(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 16 : i11);
    }

    public final boolean e(Object obj) {
        g(this.f2245b + 1);
        Object[] objArr = this.f2244a;
        int i11 = this.f2245b;
        objArr[i11] = obj;
        this.f2245b = i11 + 1;
        return true;
    }

    public final void f() {
        ArraysKt.w(this.f2244a, null, 0, this.f2245b);
        this.f2245b = 0;
    }

    public final void g(int i11) {
        Object[] objArr = this.f2244a;
        if (objArr.length < i11) {
            Object[] objArrCopyOf = Arrays.copyOf(objArr, Math.max(i11, (objArr.length * 3) / 2));
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            this.f2244a = objArrCopyOf;
        }
    }
}
