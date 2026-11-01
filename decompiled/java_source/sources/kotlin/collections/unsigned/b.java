package kotlin.collections.unsigned;

import java.util.Arrays;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShortArray;
import kotlin.collections.CollectionsKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class b extends a {
    public static boolean a(short[] sArr, short[] sArr2) {
        if (sArr == null) {
            sArr = null;
        }
        if (sArr2 == null) {
            sArr2 = null;
        }
        return Arrays.equals(sArr, sArr2);
    }

    public static boolean b(int[] iArr, int[] iArr2) {
        if (iArr == null) {
            iArr = null;
        }
        if (iArr2 == null) {
            iArr2 = null;
        }
        return Arrays.equals(iArr, iArr2);
    }

    public static boolean c(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            bArr = null;
        }
        if (bArr2 == null) {
            bArr2 = null;
        }
        return Arrays.equals(bArr, bArr2);
    }

    public static boolean d(long[] jArr, long[] jArr2) {
        if (jArr == null) {
            jArr = null;
        }
        if (jArr2 == null) {
            jArr2 = null;
        }
        return Arrays.equals(jArr, jArr2);
    }

    public static String e(byte[] bArr) {
        String strS0;
        return (bArr == null || (strS0 = CollectionsKt.s0(UByteArray.a(bArr), ", ", "[", "]", 0, null, null, 56, null)) == null) ? "null" : strS0;
    }

    public static String f(int[] iArr) {
        String strS0;
        return (iArr == null || (strS0 = CollectionsKt.s0(UIntArray.a(iArr), ", ", "[", "]", 0, null, null, 56, null)) == null) ? "null" : strS0;
    }

    public static String g(short[] sArr) {
        String strS0;
        return (sArr == null || (strS0 = CollectionsKt.s0(UShortArray.a(sArr), ", ", "[", "]", 0, null, null, 56, null)) == null) ? "null" : strS0;
    }

    public static String h(long[] jArr) {
        String strS0;
        return (jArr == null || (strS0 = CollectionsKt.s0(ULongArray.a(jArr), ", ", "[", "]", 0, null, null, 56, null)) == null) ? "null" : strS0;
    }
}
