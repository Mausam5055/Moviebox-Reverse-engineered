package kotlin.collections;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class ArraysKt___ArraysJvmKt extends e {
    public static /* synthetic */ void A(Object[] objArr, Object obj, int i11, int i12, int i13, Object obj2) {
        if ((i13 & 2) != 0) {
            i11 = 0;
        }
        if ((i13 & 4) != 0) {
            i12 = objArr.length;
        }
        ArraysKt.w(objArr, obj, i11, i12);
    }

    public static /* synthetic */ void B(boolean[] zArr, boolean z10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i11 = 0;
        }
        if ((i13 & 4) != 0) {
            i12 = zArr.length;
        }
        x(zArr, z10, i11, i12);
    }

    public static int[] C(int[] iArr, int i11) {
        Intrinsics.h(iArr, "<this>");
        int length = iArr.length;
        int[] iArrCopyOf = Arrays.copyOf(iArr, length + 1);
        iArrCopyOf[length] = i11;
        Intrinsics.e(iArrCopyOf);
        return iArrCopyOf;
    }

    public static int[] D(int[] iArr, int[] elements) {
        Intrinsics.h(iArr, "<this>");
        Intrinsics.h(elements, "elements");
        int length = iArr.length;
        int length2 = elements.length;
        int[] iArrCopyOf = Arrays.copyOf(iArr, length + length2);
        System.arraycopy(elements, 0, iArrCopyOf, length, length2);
        Intrinsics.e(iArrCopyOf);
        return iArrCopyOf;
    }

    public static Object[] E(Object[] objArr, Object obj) {
        Intrinsics.h(objArr, "<this>");
        int length = objArr.length;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, length + 1);
        objArrCopyOf[length] = obj;
        Intrinsics.e(objArrCopyOf);
        return objArrCopyOf;
    }

    public static void F(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        if (objArr.length > 1) {
            Arrays.sort(objArr);
        }
    }

    public static final void G(Object[] objArr, Comparator comparator) {
        Intrinsics.h(objArr, "<this>");
        Intrinsics.h(comparator, "comparator");
        if (objArr.length > 1) {
            Arrays.sort(objArr, comparator);
        }
    }

    public static void H(Object[] objArr, Comparator comparator, int i11, int i12) {
        Intrinsics.h(objArr, "<this>");
        Intrinsics.h(comparator, "comparator");
        Arrays.sort(objArr, i11, i12, comparator);
    }

    public static List g(byte[] bArr) {
        Intrinsics.h(bArr, "<this>");
        return new ArraysKt___ArraysJvmKt$asList$1(bArr);
    }

    public static List h(int[] iArr) {
        Intrinsics.h(iArr, "<this>");
        return new ArraysKt___ArraysJvmKt$asList$3(iArr);
    }

    public static List i(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        List listA = g.a(objArr);
        Intrinsics.g(listA, "asList(...)");
        return listA;
    }

    public static byte[] j(byte[] bArr, byte[] destination, int i11, int i12, int i13) {
        Intrinsics.h(bArr, "<this>");
        Intrinsics.h(destination, "destination");
        System.arraycopy(bArr, i12, destination, i11, i13 - i12);
        return destination;
    }

    public static float[] k(float[] fArr, float[] destination, int i11, int i12, int i13) {
        Intrinsics.h(fArr, "<this>");
        Intrinsics.h(destination, "destination");
        System.arraycopy(fArr, i12, destination, i11, i13 - i12);
        return destination;
    }

    public static int[] l(int[] iArr, int[] destination, int i11, int i12, int i13) {
        Intrinsics.h(iArr, "<this>");
        Intrinsics.h(destination, "destination");
        System.arraycopy(iArr, i12, destination, i11, i13 - i12);
        return destination;
    }

    public static long[] m(long[] jArr, long[] destination, int i11, int i12, int i13) {
        Intrinsics.h(jArr, "<this>");
        Intrinsics.h(destination, "destination");
        System.arraycopy(jArr, i12, destination, i11, i13 - i12);
        return destination;
    }

    public static Object[] n(Object[] objArr, Object[] destination, int i11, int i12, int i13) {
        Intrinsics.h(objArr, "<this>");
        Intrinsics.h(destination, "destination");
        System.arraycopy(objArr, i12, destination, i11, i13 - i12);
        return destination;
    }

    public static /* synthetic */ byte[] o(byte[] bArr, byte[] bArr2, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 2) != 0) {
            i11 = 0;
        }
        if ((i14 & 4) != 0) {
            i12 = 0;
        }
        if ((i14 & 8) != 0) {
            i13 = bArr.length;
        }
        return ArraysKt.j(bArr, bArr2, i11, i12, i13);
    }

    public static /* synthetic */ float[] p(float[] fArr, float[] fArr2, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 2) != 0) {
            i11 = 0;
        }
        if ((i14 & 4) != 0) {
            i12 = 0;
        }
        if ((i14 & 8) != 0) {
            i13 = fArr.length;
        }
        return ArraysKt.k(fArr, fArr2, i11, i12, i13);
    }

    public static /* synthetic */ int[] q(int[] iArr, int[] iArr2, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 2) != 0) {
            i11 = 0;
        }
        if ((i14 & 4) != 0) {
            i12 = 0;
        }
        if ((i14 & 8) != 0) {
            i13 = iArr.length;
        }
        return ArraysKt.l(iArr, iArr2, i11, i12, i13);
    }

    public static /* synthetic */ Object[] r(Object[] objArr, Object[] objArr2, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 2) != 0) {
            i11 = 0;
        }
        if ((i14 & 4) != 0) {
            i12 = 0;
        }
        if ((i14 & 8) != 0) {
            i13 = objArr.length;
        }
        return ArraysKt.n(objArr, objArr2, i11, i12, i13);
    }

    public static byte[] s(byte[] bArr, int i11, int i12) {
        Intrinsics.h(bArr, "<this>");
        d.c(i12, bArr.length);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i11, i12);
        Intrinsics.g(bArrCopyOfRange, "copyOfRange(...)");
        return bArrCopyOfRange;
    }

    public static Object[] t(Object[] objArr, int i11, int i12) {
        Intrinsics.h(objArr, "<this>");
        d.c(i12, objArr.length);
        Object[] objArrCopyOfRange = Arrays.copyOfRange(objArr, i11, i12);
        Intrinsics.g(objArrCopyOfRange, "copyOfRange(...)");
        return objArrCopyOfRange;
    }

    public static final void u(int[] iArr, int i11, int i12, int i13) {
        Intrinsics.h(iArr, "<this>");
        Arrays.fill(iArr, i12, i13, i11);
    }

    public static final void v(long[] jArr, long j11, int i11, int i12) {
        Intrinsics.h(jArr, "<this>");
        Arrays.fill(jArr, i11, i12, j11);
    }

    public static void w(Object[] objArr, Object obj, int i11, int i12) {
        Intrinsics.h(objArr, "<this>");
        Arrays.fill(objArr, i11, i12, obj);
    }

    public static final void x(boolean[] zArr, boolean z10, int i11, int i12) {
        Intrinsics.h(zArr, "<this>");
        Arrays.fill(zArr, i11, i12, z10);
    }

    public static /* synthetic */ void y(int[] iArr, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 2) != 0) {
            i12 = 0;
        }
        if ((i14 & 4) != 0) {
            i13 = iArr.length;
        }
        u(iArr, i11, i12, i13);
    }

    public static /* synthetic */ void z(long[] jArr, long j11, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i11 = 0;
        }
        if ((i13 & 4) != 0) {
            i12 = jArr.length;
        }
        v(jArr, j11, i11, i12);
    }
}
