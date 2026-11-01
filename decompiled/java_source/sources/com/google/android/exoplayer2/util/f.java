package com.google.android.exoplayer2.util;

import android.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final byte[] f27572a = {0, 0, 0, 1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f27573b = {"", "A", "B", "C"};

    public static String a(int i11, int i12, int i13) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13));
    }

    public static List b(boolean z10) {
        return Collections.singletonList(z10 ? new byte[]{1} : new byte[]{0});
    }

    public static String c(int i11, boolean z10, int i12, int i13, int[] iArr, int i14) {
        StringBuilder sb2 = new StringBuilder(p0.C("hvc1.%s%d.%X.%c%d", f27573b[i11], Integer.valueOf(i12), Integer.valueOf(i13), Character.valueOf(z10 ? 'H' : 'L'), Integer.valueOf(i14)));
        int length = iArr.length;
        while (length > 0 && iArr[length - 1] == 0) {
            length--;
        }
        for (int i15 = 0; i15 < length; i15++) {
            sb2.append(String.format(".%02X", Integer.valueOf(iArr[i15])));
        }
        return sb2.toString();
    }

    public static byte[] d(byte[] bArr, int i11, int i12) {
        byte[] bArr2 = f27572a;
        byte[] bArr3 = new byte[bArr2.length + i12];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i11, bArr3, bArr2.length, i12);
        return bArr3;
    }

    private static int e(byte[] bArr, int i11) {
        int length = bArr.length - f27572a.length;
        while (i11 <= length) {
            if (f(bArr, i11)) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    private static boolean f(byte[] bArr, int i11) {
        if (bArr.length - i11 <= f27572a.length) {
            return false;
        }
        int i12 = 0;
        while (true) {
            byte[] bArr2 = f27572a;
            if (i12 >= bArr2.length) {
                return true;
            }
            if (bArr[i11 + i12] != bArr2[i12]) {
                return false;
            }
            i12++;
        }
    }

    public static Pair g(byte[] bArr) {
        d0 d0Var = new d0(bArr);
        d0Var.P(9);
        int iD = d0Var.D();
        d0Var.P(20);
        return Pair.create(Integer.valueOf(d0Var.H()), Integer.valueOf(iD));
    }

    public static boolean h(List list) {
        return list.size() == 1 && ((byte[]) list.get(0)).length == 1 && ((byte[]) list.get(0))[0] == 1;
    }

    public static byte[][] i(byte[] bArr) {
        if (!f(bArr, 0)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int iE = 0;
        do {
            arrayList.add(Integer.valueOf(iE));
            iE = e(bArr, iE + f27572a.length);
        } while (iE != -1);
        byte[][] bArr2 = new byte[arrayList.size()][];
        int i11 = 0;
        while (i11 < arrayList.size()) {
            int iIntValue = ((Integer) arrayList.get(i11)).intValue();
            int iIntValue2 = (i11 < arrayList.size() + (-1) ? ((Integer) arrayList.get(i11 + 1)).intValue() : bArr.length) - iIntValue;
            byte[] bArr3 = new byte[iIntValue2];
            System.arraycopy(bArr, iIntValue, bArr3, 0, iIntValue2);
            bArr2[i11] = bArr3;
            i11++;
        }
        return bArr2;
    }
}
