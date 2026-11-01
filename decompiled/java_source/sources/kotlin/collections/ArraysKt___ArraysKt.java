package kotlin.collections;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class ArraysKt___ArraysKt extends ArraysKt___ArraysJvmKt {
    public static Object A0(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        if (objArr.length == 1) {
            return objArr[0];
        }
        return null;
    }

    public static List B0(Comparable[] comparableArr) {
        Intrinsics.h(comparableArr, "<this>");
        return ArraysKt.i(C0(comparableArr));
    }

    public static final Comparable[] C0(Comparable[] comparableArr) {
        Intrinsics.h(comparableArr, "<this>");
        if (comparableArr.length == 0) {
            return comparableArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(comparableArr, comparableArr.length);
        Intrinsics.g(objArrCopyOf, "copyOf(...)");
        Comparable[] comparableArr2 = (Comparable[]) objArrCopyOf;
        ArraysKt.F(comparableArr2);
        return comparableArr2;
    }

    public static List D0(byte[] bArr, int i11) {
        Intrinsics.h(bArr, "<this>");
        if (i11 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i11 + " is less than zero.").toString());
        }
        if (i11 == 0) {
            return CollectionsKt.l();
        }
        if (i11 >= bArr.length) {
            return H0(bArr);
        }
        if (i11 == 1) {
            return CollectionsKt.e(Byte.valueOf(bArr[0]));
        }
        ArrayList arrayList = new ArrayList(i11);
        int i12 = 0;
        for (byte b11 : bArr) {
            arrayList.add(Byte.valueOf(b11));
            i12++;
            if (i12 == i11) {
                break;
            }
        }
        return arrayList;
    }

    public static final List E0(Object[] objArr, int i11) {
        Intrinsics.h(objArr, "<this>");
        if (i11 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i11 + " is less than zero.").toString());
        }
        if (i11 == 0) {
            return CollectionsKt.l();
        }
        int length = objArr.length;
        if (i11 >= length) {
            return ArraysKt.K0(objArr);
        }
        if (i11 == 1) {
            return CollectionsKt.e(objArr[length - 1]);
        }
        ArrayList arrayList = new ArrayList(i11);
        for (int i12 = length - i11; i12 < length; i12++) {
            arrayList.add(objArr[i12]);
        }
        return arrayList;
    }

    public static final Collection F0(int[] iArr, Collection destination) {
        Intrinsics.h(iArr, "<this>");
        Intrinsics.h(destination, "destination");
        for (int i11 : iArr) {
            destination.add(Integer.valueOf(i11));
        }
        return destination;
    }

    public static final Collection G0(Object[] objArr, Collection destination) {
        Intrinsics.h(objArr, "<this>");
        Intrinsics.h(destination, "destination");
        for (Object obj : objArr) {
            destination.add(obj);
        }
        return destination;
    }

    public static final List H0(byte[] bArr) {
        Intrinsics.h(bArr, "<this>");
        int length = bArr.length;
        if (length != 0) {
            return length != 1 ? L0(bArr) : CollectionsKt.e(Byte.valueOf(bArr[0]));
        }
        return CollectionsKt.l();
    }

    public static List I0(int[] iArr) {
        Intrinsics.h(iArr, "<this>");
        int length = iArr.length;
        if (length != 0) {
            return length != 1 ? M0(iArr) : CollectionsKt.e(Integer.valueOf(iArr[0]));
        }
        return CollectionsKt.l();
    }

    public static Iterable J(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        return objArr.length == 0 ? CollectionsKt.l() : new ArraysKt___ArraysKt$asIterable$$inlined$Iterable$1(objArr);
    }

    public static List J0(long[] jArr) {
        Intrinsics.h(jArr, "<this>");
        int length = jArr.length;
        if (length != 0) {
            return length != 1 ? N0(jArr) : CollectionsKt.e(Long.valueOf(jArr[0]));
        }
        return CollectionsKt.l();
    }

    public static boolean K(byte[] bArr, byte b11) {
        Intrinsics.h(bArr, "<this>");
        return ArraysKt.d0(bArr, b11) >= 0;
    }

    public static List K0(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        int length = objArr.length;
        if (length != 0) {
            return length != 1 ? ArraysKt.O0(objArr) : CollectionsKt.e(objArr[0]);
        }
        return CollectionsKt.l();
    }

    public static boolean L(char[] cArr, char c11) {
        Intrinsics.h(cArr, "<this>");
        return e0(cArr, c11) >= 0;
    }

    public static final List L0(byte[] bArr) {
        Intrinsics.h(bArr, "<this>");
        ArrayList arrayList = new ArrayList(bArr.length);
        for (byte b11 : bArr) {
            arrayList.add(Byte.valueOf(b11));
        }
        return arrayList;
    }

    public static boolean M(int[] iArr, int i11) {
        Intrinsics.h(iArr, "<this>");
        return ArraysKt.f0(iArr, i11) >= 0;
    }

    public static final List M0(int[] iArr) {
        Intrinsics.h(iArr, "<this>");
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i11 : iArr) {
            arrayList.add(Integer.valueOf(i11));
        }
        return arrayList;
    }

    public static boolean N(long[] jArr, long j11) {
        Intrinsics.h(jArr, "<this>");
        return ArraysKt.g0(jArr, j11) >= 0;
    }

    public static final List N0(long[] jArr) {
        Intrinsics.h(jArr, "<this>");
        ArrayList arrayList = new ArrayList(jArr.length);
        for (long j11 : jArr) {
            arrayList.add(Long.valueOf(j11));
        }
        return arrayList;
    }

    public static boolean O(Object[] objArr, Object obj) {
        Intrinsics.h(objArr, "<this>");
        return ArraysKt.h0(objArr, obj) >= 0;
    }

    public static List O0(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        return new ArrayList(i.i(objArr));
    }

    public static boolean P(short[] sArr, short s11) {
        Intrinsics.h(sArr, "<this>");
        return ArraysKt.i0(sArr, s11) >= 0;
    }

    public static Set P0(int[] iArr) {
        Intrinsics.h(iArr, "<this>");
        int length = iArr.length;
        if (length != 0) {
            return length != 1 ? (Set) F0(iArr, new LinkedHashSet(MapsKt.e(iArr.length))) : SetsKt.d(Integer.valueOf(iArr[0]));
        }
        return SetsKt.f();
    }

    public static final boolean Q(boolean[] zArr, boolean z10) {
        Intrinsics.h(zArr, "<this>");
        return j0(zArr, z10) >= 0;
    }

    public static Set Q0(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        int length = objArr.length;
        if (length != 0) {
            return length != 1 ? (Set) G0(objArr, new LinkedHashSet(MapsKt.e(objArr.length))) : SetsKt.d(objArr[0]);
        }
        return SetsKt.f();
    }

    public static List R(Object[] objArr, int i11) {
        Intrinsics.h(objArr, "<this>");
        if (i11 >= 0) {
            return E0(objArr, RangesKt.f(objArr.length - i11, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i11 + " is less than zero.").toString());
    }

    public static Iterable R0(final Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        return new IndexingIterable(new Function0() { // from class: kotlin.collections.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ArraysKt___ArraysKt.S0(objArr);
            }
        });
    }

    public static List S(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        return (List) T(objArr, new ArrayList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Iterator S0(Object[] objArr) {
        return ArrayIteratorKt.a(objArr);
    }

    public static final Collection T(Object[] objArr, Collection destination) {
        Intrinsics.h(objArr, "<this>");
        Intrinsics.h(destination, "destination");
        for (Object obj : objArr) {
            if (obj != null) {
                destination.add(obj);
            }
        }
        return destination;
    }

    public static int U(int[] iArr) {
        Intrinsics.h(iArr, "<this>");
        if (iArr.length != 0) {
            return iArr[0];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static Object V(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        if (objArr.length != 0) {
            return objArr[0];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static Integer W(int[] iArr) {
        Intrinsics.h(iArr, "<this>");
        if (iArr.length == 0) {
            return null;
        }
        return Integer.valueOf(iArr[0]);
    }

    public static Object X(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        if (objArr.length == 0) {
            return null;
        }
        return objArr[0];
    }

    public static IntRange Y(int[] iArr) {
        Intrinsics.h(iArr, "<this>");
        return new IntRange(0, ArraysKt.Z(iArr));
    }

    public static int Z(int[] iArr) {
        Intrinsics.h(iArr, "<this>");
        return iArr.length - 1;
    }

    public static int a0(long[] jArr) {
        Intrinsics.h(jArr, "<this>");
        return jArr.length - 1;
    }

    public static int b0(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        return objArr.length - 1;
    }

    public static Object c0(Object[] objArr, int i11) {
        Intrinsics.h(objArr, "<this>");
        if (i11 < 0 || i11 >= objArr.length) {
            return null;
        }
        return objArr[i11];
    }

    public static int d0(byte[] bArr, byte b11) {
        Intrinsics.h(bArr, "<this>");
        int length = bArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (b11 == bArr[i11]) {
                return i11;
            }
        }
        return -1;
    }

    public static final int e0(char[] cArr, char c11) {
        Intrinsics.h(cArr, "<this>");
        int length = cArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (c11 == cArr[i11]) {
                return i11;
            }
        }
        return -1;
    }

    public static int f0(int[] iArr, int i11) {
        Intrinsics.h(iArr, "<this>");
        int length = iArr.length;
        for (int i12 = 0; i12 < length; i12++) {
            if (i11 == iArr[i12]) {
                return i12;
            }
        }
        return -1;
    }

    public static int g0(long[] jArr, long j11) {
        Intrinsics.h(jArr, "<this>");
        int length = jArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (j11 == jArr[i11]) {
                return i11;
            }
        }
        return -1;
    }

    public static int h0(Object[] objArr, Object obj) {
        Intrinsics.h(objArr, "<this>");
        int i11 = 0;
        if (obj == null) {
            int length = objArr.length;
            while (i11 < length) {
                if (objArr[i11] == null) {
                    return i11;
                }
                i11++;
            }
            return -1;
        }
        int length2 = objArr.length;
        while (i11 < length2) {
            if (Intrinsics.c(obj, objArr[i11])) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    public static int i0(short[] sArr, short s11) {
        Intrinsics.h(sArr, "<this>");
        int length = sArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (s11 == sArr[i11]) {
                return i11;
            }
        }
        return -1;
    }

    public static final int j0(boolean[] zArr, boolean z10) {
        Intrinsics.h(zArr, "<this>");
        int length = zArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (z10 == zArr[i11]) {
                return i11;
            }
        }
        return -1;
    }

    public static final Appendable k0(byte[] bArr, Appendable buffer, CharSequence separator, CharSequence prefix, CharSequence postfix, int i11, CharSequence truncated, Function1 function1) throws IOException {
        Intrinsics.h(bArr, "<this>");
        Intrinsics.h(buffer, "buffer");
        Intrinsics.h(separator, "separator");
        Intrinsics.h(prefix, "prefix");
        Intrinsics.h(postfix, "postfix");
        Intrinsics.h(truncated, "truncated");
        buffer.append(prefix);
        int i12 = 0;
        for (byte b11 : bArr) {
            i12++;
            if (i12 > 1) {
                buffer.append(separator);
            }
            if (i11 >= 0 && i12 > i11) {
                break;
            }
            if (function1 != null) {
                buffer.append((CharSequence) function1.invoke(Byte.valueOf(b11)));
            } else {
                buffer.append(String.valueOf((int) b11));
            }
        }
        if (i11 >= 0 && i12 > i11) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static final Appendable l0(Object[] objArr, Appendable buffer, CharSequence separator, CharSequence prefix, CharSequence postfix, int i11, CharSequence truncated, Function1 function1) throws IOException {
        Intrinsics.h(objArr, "<this>");
        Intrinsics.h(buffer, "buffer");
        Intrinsics.h(separator, "separator");
        Intrinsics.h(prefix, "prefix");
        Intrinsics.h(postfix, "postfix");
        Intrinsics.h(truncated, "truncated");
        buffer.append(prefix);
        int i12 = 0;
        for (Object obj : objArr) {
            i12++;
            if (i12 > 1) {
                buffer.append(separator);
            }
            if (i11 >= 0 && i12 > i11) {
                break;
            }
            StringsKt.a(buffer, obj, function1);
        }
        if (i11 >= 0 && i12 > i11) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static final String m0(byte[] bArr, CharSequence separator, CharSequence prefix, CharSequence postfix, int i11, CharSequence truncated, Function1 function1) {
        Intrinsics.h(bArr, "<this>");
        Intrinsics.h(separator, "separator");
        Intrinsics.h(prefix, "prefix");
        Intrinsics.h(postfix, "postfix");
        Intrinsics.h(truncated, "truncated");
        return ((StringBuilder) k0(bArr, new StringBuilder(), separator, prefix, postfix, i11, truncated, function1)).toString();
    }

    public static final String n0(Object[] objArr, CharSequence separator, CharSequence prefix, CharSequence postfix, int i11, CharSequence truncated, Function1 function1) {
        Intrinsics.h(objArr, "<this>");
        Intrinsics.h(separator, "separator");
        Intrinsics.h(prefix, "prefix");
        Intrinsics.h(postfix, "postfix");
        Intrinsics.h(truncated, "truncated");
        return ((StringBuilder) l0(objArr, new StringBuilder(), separator, prefix, postfix, i11, truncated, function1)).toString();
    }

    public static /* synthetic */ String o0(byte[] bArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i11, CharSequence charSequence4, Function1 function1, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i12 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i12 & 4) == 0 ? charSequence3 : "";
        if ((i12 & 8) != 0) {
            i11 = -1;
        }
        int i13 = i11;
        if ((i12 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i12 & 32) != 0) {
            function1 = null;
        }
        return m0(bArr, charSequence, charSequence5, charSequence6, i13, charSequence7, function1);
    }

    public static /* synthetic */ String p0(Object[] objArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i11, CharSequence charSequence4, Function1 function1, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i12 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i12 & 4) == 0 ? charSequence3 : "";
        if ((i12 & 8) != 0) {
            i11 = -1;
        }
        int i13 = i11;
        if ((i12 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i12 & 32) != 0) {
            function1 = null;
        }
        return n0(objArr, charSequence, charSequence5, charSequence6, i13, charSequence7, function1);
    }

    public static Object q0(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        if (objArr.length != 0) {
            return objArr[ArraysKt.b0(objArr)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static int r0(byte[] bArr, byte b11) {
        Intrinsics.h(bArr, "<this>");
        int length = bArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i11 = length - 1;
                if (b11 == bArr[length]) {
                    return length;
                }
                if (i11 >= 0) {
                    length = i11;
                }
            }
        }
        return -1;
    }

    public static final int s0(char[] cArr, char c11) {
        Intrinsics.h(cArr, "<this>");
        int length = cArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i11 = length - 1;
                if (c11 == cArr[length]) {
                    return length;
                }
                if (i11 >= 0) {
                    length = i11;
                }
            }
        }
        return -1;
    }

    public static int t0(int[] iArr, int i11) {
        Intrinsics.h(iArr, "<this>");
        int length = iArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i12 = length - 1;
                if (i11 == iArr[length]) {
                    return length;
                }
                if (i12 >= 0) {
                    length = i12;
                }
            }
        }
        return -1;
    }

    public static int u0(long[] jArr, long j11) {
        Intrinsics.h(jArr, "<this>");
        int length = jArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i11 = length - 1;
                if (j11 == jArr[length]) {
                    return length;
                }
                if (i11 >= 0) {
                    length = i11;
                }
            }
        }
        return -1;
    }

    public static int v0(Object[] objArr, Object obj) {
        Intrinsics.h(objArr, "<this>");
        if (obj == null) {
            int length = objArr.length - 1;
            if (length >= 0) {
                while (true) {
                    int i11 = length - 1;
                    if (objArr[length] == null) {
                        return length;
                    }
                    if (i11 >= 0) {
                        length = i11;
                    }
                }
            }
        } else {
            int length2 = objArr.length - 1;
            if (length2 >= 0) {
                while (true) {
                    int i12 = length2 - 1;
                    if (Intrinsics.c(obj, objArr[length2])) {
                        return length2;
                    }
                    if (i12 < 0) {
                        break;
                    }
                    length2 = i12;
                }
            }
        }
        return -1;
    }

    public static int w0(short[] sArr, short s11) {
        Intrinsics.h(sArr, "<this>");
        int length = sArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i11 = length - 1;
                if (s11 == sArr[length]) {
                    return length;
                }
                if (i11 >= 0) {
                    length = i11;
                }
            }
        }
        return -1;
    }

    public static final int x0(boolean[] zArr, boolean z10) {
        Intrinsics.h(zArr, "<this>");
        int length = zArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i11 = length - 1;
                if (z10 == zArr[length]) {
                    return length;
                }
                if (i11 >= 0) {
                    length = i11;
                }
            }
        }
        return -1;
    }

    public static Object y0(Object[] objArr, Random random) {
        Intrinsics.h(objArr, "<this>");
        Intrinsics.h(random, "random");
        if (objArr.length != 0) {
            return objArr[random.nextInt(objArr.length)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static char z0(char[] cArr) {
        Intrinsics.h(cArr, "<this>");
        int length = cArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return cArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }
}
