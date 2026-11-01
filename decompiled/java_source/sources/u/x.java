package u;

import java.util.Arrays;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class x {
    public static final int f(int i11, int i12) {
        return (i11 >> i12) & 31;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object[] g(Object[] objArr, int i11, Object obj, Object obj2) {
        Object[] objArr2 = new Object[objArr.length + 2];
        ArraysKt.r(objArr, objArr2, 0, 0, i11, 6, null);
        ArraysKt.n(objArr, objArr2, i11 + 2, i11, objArr.length);
        objArr2[i11] = obj;
        objArr2[i11 + 1] = obj2;
        return objArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object[] h(Object[] objArr, int i11) {
        Object[] objArr2 = new Object[objArr.length - 2];
        ArraysKt.r(objArr, objArr2, 0, 0, i11, 6, null);
        ArraysKt.n(objArr, objArr2, i11, i11 + 2, objArr.length);
        return objArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object[] i(Object[] objArr, int i11) {
        Object[] objArr2 = new Object[objArr.length - 1];
        ArraysKt.r(objArr, objArr2, 0, 0, i11, 6, null);
        ArraysKt.n(objArr, objArr2, i11, i11 + 1, objArr.length);
        return objArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object[] j(Object[] objArr, int i11, int i12, t tVar) {
        Object[] objArr2 = new Object[objArr.length - 1];
        ArraysKt.r(objArr, objArr2, 0, 0, i11, 6, null);
        ArraysKt.n(objArr, objArr2, i11, i11 + 2, i12);
        objArr2[i12 - 2] = tVar;
        ArraysKt.n(objArr, objArr2, i12 - 1, i12, objArr.length);
        return objArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object[] k(Object[] objArr, int i11, int i12, Object obj, Object obj2) {
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length + 1);
        Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
        ArraysKt.n(objArrCopyOf, objArrCopyOf, i11 + 2, i11 + 1, objArr.length);
        ArraysKt.n(objArrCopyOf, objArrCopyOf, i12 + 2, i12, i11);
        objArrCopyOf[i12] = obj;
        objArrCopyOf[i12 + 1] = obj2;
        return objArrCopyOf;
    }
}
