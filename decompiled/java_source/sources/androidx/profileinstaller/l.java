package androidx.profileinstaller;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final byte[] f14055a = {112, 114, 111, 0};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final byte[] f14056b = {112, 114, 109, 0};

    private static void A(byte[] bArr, int i11, int i12, e eVar) {
        int iM = m(i11, i12, eVar.f14043g);
        int i13 = iM / 8;
        bArr[i13] = (byte) ((1 << (iM % 8)) | bArr[i13]);
    }

    private static void B(InputStream inputStream) {
        f.h(inputStream);
        int iJ = f.j(inputStream);
        if (iJ == 6 || iJ == 7) {
            return;
        }
        while (iJ > 0) {
            f.j(inputStream);
            for (int iJ2 = f.j(inputStream); iJ2 > 0; iJ2--) {
                f.h(inputStream);
            }
            iJ--;
        }
    }

    static boolean C(OutputStream outputStream, byte[] bArr, e[] eVarArr) throws IOException {
        if (Arrays.equals(bArr, n.f14068a)) {
            P(outputStream, eVarArr);
            return true;
        }
        if (Arrays.equals(bArr, n.f14069b)) {
            O(outputStream, eVarArr);
            return true;
        }
        if (Arrays.equals(bArr, n.f14071d)) {
            M(outputStream, eVarArr);
            return true;
        }
        if (Arrays.equals(bArr, n.f14070c)) {
            N(outputStream, eVarArr);
            return true;
        }
        if (!Arrays.equals(bArr, n.f14072e)) {
            return false;
        }
        L(outputStream, eVarArr);
        return true;
    }

    private static void D(OutputStream outputStream, e eVar) throws IOException {
        int[] iArr = eVar.f14044h;
        int length = iArr.length;
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            int i13 = iArr[i11];
            f.p(outputStream, i13 - i12);
            i11++;
            i12 = i13;
        }
    }

    private static o E(e[] eVarArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f.p(byteArrayOutputStream, eVarArr.length);
            int i11 = 2;
            for (e eVar : eVarArr) {
                f.q(byteArrayOutputStream, eVar.f14039c);
                f.q(byteArrayOutputStream, eVar.f14040d);
                f.q(byteArrayOutputStream, eVar.f14043g);
                String strJ = j(eVar.f14037a, eVar.f14038b, n.f14068a);
                int iK = f.k(strJ);
                f.p(byteArrayOutputStream, iK);
                i11 = i11 + 14 + iK;
                f.n(byteArrayOutputStream, strJ);
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (i11 == byteArray.length) {
                o oVar = new o(FileSectionType.DEX_FILES, i11, byteArray, false);
                byteArrayOutputStream.close();
                return oVar;
            }
            throw f.c("Expected size " + i11 + ", does not match actual size " + byteArray.length);
        } catch (Throwable th2) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    static void F(OutputStream outputStream, byte[] bArr) throws IOException {
        outputStream.write(f14055a);
        outputStream.write(bArr);
    }

    private static void G(OutputStream outputStream, e eVar) throws IOException {
        K(outputStream, eVar);
        D(outputStream, eVar);
        I(outputStream, eVar);
    }

    private static void H(OutputStream outputStream, e eVar, String str) throws IOException {
        f.p(outputStream, f.k(str));
        f.p(outputStream, eVar.f14041e);
        f.q(outputStream, eVar.f14042f);
        f.q(outputStream, eVar.f14039c);
        f.q(outputStream, eVar.f14043g);
        f.n(outputStream, str);
    }

    private static void I(OutputStream outputStream, e eVar) throws IOException {
        byte[] bArr = new byte[k(eVar.f14043g)];
        for (Map.Entry entry : eVar.f14045i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            int iIntValue2 = ((Integer) entry.getValue()).intValue();
            if ((iIntValue2 & 2) != 0) {
                A(bArr, 2, iIntValue, eVar);
            }
            if ((iIntValue2 & 4) != 0) {
                A(bArr, 4, iIntValue, eVar);
            }
        }
        outputStream.write(bArr);
    }

    private static void J(OutputStream outputStream, int i11, e eVar) throws IOException {
        byte[] bArr = new byte[l(i11, eVar.f14043g)];
        for (Map.Entry entry : eVar.f14045i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            int iIntValue2 = ((Integer) entry.getValue()).intValue();
            int i12 = 0;
            for (int i13 = 1; i13 <= 4; i13 <<= 1) {
                if (i13 != 1 && (i13 & i11) != 0) {
                    if ((i13 & iIntValue2) == i13) {
                        int i14 = (eVar.f14043g * i12) + iIntValue;
                        int i15 = i14 / 8;
                        bArr[i15] = (byte) ((1 << (i14 % 8)) | bArr[i15]);
                    }
                    i12++;
                }
            }
        }
        outputStream.write(bArr);
    }

    private static void K(OutputStream outputStream, e eVar) throws IOException {
        int i11 = 0;
        for (Map.Entry entry : eVar.f14045i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            if ((((Integer) entry.getValue()).intValue() & 1) != 0) {
                f.p(outputStream, iIntValue - i11);
                f.p(outputStream, 0);
                i11 = iIntValue;
            }
        }
    }

    private static void L(OutputStream outputStream, e[] eVarArr) throws IOException {
        f.p(outputStream, eVarArr.length);
        for (e eVar : eVarArr) {
            String strJ = j(eVar.f14037a, eVar.f14038b, n.f14072e);
            f.p(outputStream, f.k(strJ));
            f.p(outputStream, eVar.f14045i.size());
            f.p(outputStream, eVar.f14044h.length);
            f.q(outputStream, eVar.f14039c);
            f.n(outputStream, strJ);
            Iterator it = eVar.f14045i.keySet().iterator();
            while (it.hasNext()) {
                f.p(outputStream, ((Integer) it.next()).intValue());
            }
            for (int i11 : eVar.f14044h) {
                f.p(outputStream, i11);
            }
        }
    }

    private static void M(OutputStream outputStream, e[] eVarArr) throws IOException {
        f.r(outputStream, eVarArr.length);
        for (e eVar : eVarArr) {
            int size = eVar.f14045i.size() * 4;
            String strJ = j(eVar.f14037a, eVar.f14038b, n.f14071d);
            f.p(outputStream, f.k(strJ));
            f.p(outputStream, eVar.f14044h.length);
            f.q(outputStream, size);
            f.q(outputStream, eVar.f14039c);
            f.n(outputStream, strJ);
            Iterator it = eVar.f14045i.keySet().iterator();
            while (it.hasNext()) {
                f.p(outputStream, ((Integer) it.next()).intValue());
                f.p(outputStream, 0);
            }
            for (int i11 : eVar.f14044h) {
                f.p(outputStream, i11);
            }
        }
    }

    private static void N(OutputStream outputStream, e[] eVarArr) throws IOException {
        byte[] bArrB = b(eVarArr, n.f14070c);
        f.r(outputStream, eVarArr.length);
        f.m(outputStream, bArrB);
    }

    private static void O(OutputStream outputStream, e[] eVarArr) throws IOException {
        byte[] bArrB = b(eVarArr, n.f14069b);
        f.r(outputStream, eVarArr.length);
        f.m(outputStream, bArrB);
    }

    private static void P(OutputStream outputStream, e[] eVarArr) throws IOException {
        Q(outputStream, eVarArr);
    }

    private static void Q(OutputStream outputStream, e[] eVarArr) throws IOException {
        int length;
        ArrayList arrayList = new ArrayList(3);
        ArrayList arrayList2 = new ArrayList(3);
        arrayList.add(E(eVarArr));
        arrayList.add(c(eVarArr));
        arrayList.add(d(eVarArr));
        long length2 = ((long) n.f14068a.length) + ((long) f14055a.length) + 4 + ((long) (arrayList.size() * 16));
        f.q(outputStream, arrayList.size());
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            o oVar = (o) arrayList.get(i11);
            f.q(outputStream, oVar.f14075a.getValue());
            f.q(outputStream, length2);
            if (oVar.f14078d) {
                byte[] bArr = oVar.f14077c;
                long length3 = bArr.length;
                byte[] bArrB = f.b(bArr);
                arrayList2.add(bArrB);
                f.q(outputStream, bArrB.length);
                f.q(outputStream, length3);
                length = bArrB.length;
            } else {
                arrayList2.add(oVar.f14077c);
                f.q(outputStream, oVar.f14077c.length);
                f.q(outputStream, 0L);
                length = oVar.f14077c.length;
            }
            length2 += (long) length;
        }
        for (int i12 = 0; i12 < arrayList2.size(); i12++) {
            outputStream.write((byte[]) arrayList2.get(i12));
        }
    }

    private static int a(e eVar) {
        Iterator it = eVar.f14045i.entrySet().iterator();
        int iIntValue = 0;
        while (it.hasNext()) {
            iIntValue |= ((Integer) ((Map.Entry) it.next()).getValue()).intValue();
        }
        return iIntValue;
    }

    private static byte[] b(e[] eVarArr, byte[] bArr) throws IOException {
        int i11 = 0;
        int iK = 0;
        for (e eVar : eVarArr) {
            iK += f.k(j(eVar.f14037a, eVar.f14038b, bArr)) + 16 + (eVar.f14041e * 2) + eVar.f14042f + k(eVar.f14043g);
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(iK);
        if (Arrays.equals(bArr, n.f14070c)) {
            int length = eVarArr.length;
            while (i11 < length) {
                e eVar2 = eVarArr[i11];
                H(byteArrayOutputStream, eVar2, j(eVar2.f14037a, eVar2.f14038b, bArr));
                G(byteArrayOutputStream, eVar2);
                i11++;
            }
        } else {
            for (e eVar3 : eVarArr) {
                H(byteArrayOutputStream, eVar3, j(eVar3.f14037a, eVar3.f14038b, bArr));
            }
            int length2 = eVarArr.length;
            while (i11 < length2) {
                G(byteArrayOutputStream, eVarArr[i11]);
                i11++;
            }
        }
        if (byteArrayOutputStream.size() == iK) {
            return byteArrayOutputStream.toByteArray();
        }
        throw f.c("The bytes saved do not match expectation. actual=" + byteArrayOutputStream.size() + " expected=" + iK);
    }

    private static o c(e[] eVarArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i11 = 0;
        for (int i12 = 0; i12 < eVarArr.length; i12++) {
            try {
                e eVar = eVarArr[i12];
                f.p(byteArrayOutputStream, i12);
                f.p(byteArrayOutputStream, eVar.f14041e);
                i11 = i11 + 4 + (eVar.f14041e * 2);
                D(byteArrayOutputStream, eVar);
            } catch (Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (i11 == byteArray.length) {
            o oVar = new o(FileSectionType.CLASSES, i11, byteArray, true);
            byteArrayOutputStream.close();
            return oVar;
        }
        throw f.c("Expected size " + i11 + ", does not match actual size " + byteArray.length);
    }

    private static o d(e[] eVarArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i11 = 0;
        for (int i12 = 0; i12 < eVarArr.length; i12++) {
            try {
                e eVar = eVarArr[i12];
                int iA = a(eVar);
                byte[] bArrE = e(iA, eVar);
                byte[] bArrF = f(eVar);
                f.p(byteArrayOutputStream, i12);
                int length = bArrE.length + 2 + bArrF.length;
                f.q(byteArrayOutputStream, length);
                f.p(byteArrayOutputStream, iA);
                byteArrayOutputStream.write(bArrE);
                byteArrayOutputStream.write(bArrF);
                i11 = i11 + 6 + length;
            } catch (Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (i11 == byteArray.length) {
            o oVar = new o(FileSectionType.METHODS, i11, byteArray, true);
            byteArrayOutputStream.close();
            return oVar;
        }
        throw f.c("Expected size " + i11 + ", does not match actual size " + byteArray.length);
    }

    private static byte[] e(int i11, e eVar) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            J(byteArrayOutputStream, i11, eVar);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th2) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private static byte[] f(e eVar) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            K(byteArrayOutputStream, eVar);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th2) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private static String g(String str, String str2) {
        if ("!".equals(str2)) {
            return str.replace(":", "!");
        }
        return ":".equals(str2) ? str.replace("!", ":") : str;
    }

    private static String h(String str) {
        int iIndexOf = str.indexOf("!");
        if (iIndexOf < 0) {
            iIndexOf = str.indexOf(":");
        }
        return iIndexOf > 0 ? str.substring(iIndexOf + 1) : str;
    }

    private static e i(e[] eVarArr, String str) {
        if (eVarArr.length <= 0) {
            return null;
        }
        String strH = h(str);
        for (int i11 = 0; i11 < eVarArr.length; i11++) {
            if (eVarArr[i11].f14038b.equals(strH)) {
                return eVarArr[i11];
            }
        }
        return null;
    }

    private static String j(String str, String str2, byte[] bArr) {
        String strA = n.a(bArr);
        if (str.length() <= 0) {
            return g(str2, strA);
        }
        if (str2.equals("classes.dex")) {
            return str;
        }
        if (str2.contains("!") || str2.contains(":")) {
            return g(str2, strA);
        }
        if (str2.endsWith(".apk")) {
            return str2;
        }
        return str + n.a(bArr) + str2;
    }

    private static int k(int i11) {
        return z(i11 * 2) / 8;
    }

    private static int l(int i11, int i12) {
        return z(Integer.bitCount(i11 & (-2)) * i12) / 8;
    }

    private static int m(int i11, int i12, int i13) {
        if (i11 == 1) {
            throw f.c("HOT methods are not stored in the bitmap");
        }
        if (i11 == 2) {
            return i12;
        }
        if (i11 == 4) {
            return i12 + i13;
        }
        throw f.c("Unexpected flag: " + i11);
    }

    private static int[] n(InputStream inputStream, int i11) {
        int[] iArr = new int[i11];
        int iH = 0;
        for (int i12 = 0; i12 < i11; i12++) {
            iH += f.h(inputStream);
            iArr[i12] = iH;
        }
        return iArr;
    }

    private static int o(BitSet bitSet, int i11, int i12) {
        int i13 = bitSet.get(m(2, i11, i12)) ? 2 : 0;
        return bitSet.get(m(4, i11, i12)) ? i13 | 4 : i13;
    }

    static byte[] p(InputStream inputStream, byte[] bArr) {
        if (Arrays.equals(bArr, f.d(inputStream, bArr.length))) {
            return f.d(inputStream, n.f14069b.length);
        }
        throw f.c("Invalid magic");
    }

    private static void q(InputStream inputStream, e eVar) {
        int iAvailable = inputStream.available() - eVar.f14042f;
        int iH = 0;
        while (inputStream.available() > iAvailable) {
            iH += f.h(inputStream);
            eVar.f14045i.put(Integer.valueOf(iH), 1);
            for (int iH2 = f.h(inputStream); iH2 > 0; iH2--) {
                B(inputStream);
            }
        }
        if (inputStream.available() != iAvailable) {
            throw f.c("Read too much data during profile line parse");
        }
    }

    static e[] r(InputStream inputStream, byte[] bArr, byte[] bArr2, e[] eVarArr) {
        if (Arrays.equals(bArr, n.f14073f)) {
            if (Arrays.equals(n.f14068a, bArr2)) {
                throw f.c("Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher");
            }
            return s(inputStream, bArr, eVarArr);
        }
        if (Arrays.equals(bArr, n.f14074g)) {
            return u(inputStream, bArr2, eVarArr);
        }
        throw f.c("Unsupported meta version");
    }

    static e[] s(InputStream inputStream, byte[] bArr, e[] eVarArr) throws IOException {
        if (!Arrays.equals(bArr, n.f14073f)) {
            throw f.c("Unsupported meta version");
        }
        int iJ = f.j(inputStream);
        byte[] bArrE = f.e(inputStream, (int) f.i(inputStream), (int) f.i(inputStream));
        if (inputStream.read() > 0) {
            throw f.c("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrE);
        try {
            e[] eVarArrT = t(byteArrayInputStream, iJ, eVarArr);
            byteArrayInputStream.close();
            return eVarArrT;
        } catch (Throwable th2) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private static e[] t(InputStream inputStream, int i11, e[] eVarArr) {
        if (inputStream.available() == 0) {
            return new e[0];
        }
        if (i11 != eVarArr.length) {
            throw f.c("Mismatched number of dex files found in metadata");
        }
        String[] strArr = new String[i11];
        int[] iArr = new int[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            int iH = f.h(inputStream);
            iArr[i12] = f.h(inputStream);
            strArr[i12] = f.f(inputStream, iH);
        }
        for (int i13 = 0; i13 < i11; i13++) {
            e eVar = eVarArr[i13];
            if (!eVar.f14038b.equals(strArr[i13])) {
                throw f.c("Order of dexfiles in metadata did not match baseline");
            }
            int i14 = iArr[i13];
            eVar.f14041e = i14;
            eVar.f14044h = n(inputStream, i14);
        }
        return eVarArr;
    }

    static e[] u(InputStream inputStream, byte[] bArr, e[] eVarArr) throws IOException {
        int iH = f.h(inputStream);
        byte[] bArrE = f.e(inputStream, (int) f.i(inputStream), (int) f.i(inputStream));
        if (inputStream.read() > 0) {
            throw f.c("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrE);
        try {
            e[] eVarArrV = v(byteArrayInputStream, bArr, iH, eVarArr);
            byteArrayInputStream.close();
            return eVarArrV;
        } catch (Throwable th2) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private static e[] v(InputStream inputStream, byte[] bArr, int i11, e[] eVarArr) {
        if (inputStream.available() == 0) {
            return new e[0];
        }
        if (i11 != eVarArr.length) {
            throw f.c("Mismatched number of dex files found in metadata");
        }
        for (int i12 = 0; i12 < i11; i12++) {
            f.h(inputStream);
            String strF = f.f(inputStream, f.h(inputStream));
            long jI = f.i(inputStream);
            int iH = f.h(inputStream);
            e eVarI = i(eVarArr, strF);
            if (eVarI == null) {
                throw f.c("Missing profile key: " + strF);
            }
            eVarI.f14040d = jI;
            int[] iArrN = n(inputStream, iH);
            if (Arrays.equals(bArr, n.f14072e)) {
                eVarI.f14041e = iH;
                eVarI.f14044h = iArrN;
            }
        }
        return eVarArr;
    }

    private static void w(InputStream inputStream, e eVar) {
        BitSet bitSetValueOf = BitSet.valueOf(f.d(inputStream, f.a(eVar.f14043g * 2)));
        int i11 = 0;
        while (true) {
            int i12 = eVar.f14043g;
            if (i11 >= i12) {
                return;
            }
            int iO = o(bitSetValueOf, i11, i12);
            if (iO != 0) {
                Integer num = (Integer) eVar.f14045i.get(Integer.valueOf(i11));
                if (num == null) {
                    num = 0;
                }
                eVar.f14045i.put(Integer.valueOf(i11), Integer.valueOf(iO | num.intValue()));
            }
            i11++;
        }
    }

    static e[] x(InputStream inputStream, byte[] bArr, String str) throws IOException {
        if (!Arrays.equals(bArr, n.f14069b)) {
            throw f.c("Unsupported version");
        }
        int iJ = f.j(inputStream);
        byte[] bArrE = f.e(inputStream, (int) f.i(inputStream), (int) f.i(inputStream));
        if (inputStream.read() > 0) {
            throw f.c("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrE);
        try {
            e[] eVarArrY = y(byteArrayInputStream, str, iJ);
            byteArrayInputStream.close();
            return eVarArrY;
        } catch (Throwable th2) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private static e[] y(InputStream inputStream, String str, int i11) {
        if (inputStream.available() == 0) {
            return new e[0];
        }
        e[] eVarArr = new e[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            int iH = f.h(inputStream);
            int iH2 = f.h(inputStream);
            eVarArr[i12] = new e(str, f.f(inputStream, iH), f.i(inputStream), 0L, iH2, (int) f.i(inputStream), (int) f.i(inputStream), new int[iH2], new TreeMap());
        }
        for (int i13 = 0; i13 < i11; i13++) {
            e eVar = eVarArr[i13];
            q(inputStream, eVar);
            eVar.f14044h = n(inputStream, eVar.f14041e);
            w(inputStream, eVar);
        }
        return eVarArr;
    }

    private static int z(int i11) {
        return (i11 + 7) & (-8);
    }
}
