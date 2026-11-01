package id;

import androidx.core.view.InputDeviceCompat;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class m implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f65185a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f65186b;

    /* JADX INFO: loaded from: classes5.dex */
    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final char f65187a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f65188b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final b f65189c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f65190d;

        private b(char c11, g gVar, int i11, b bVar, int i12) {
            char c12 = c11 == i12 ? (char) 1000 : c11;
            this.f65187a = c12;
            this.f65188b = i11;
            this.f65189c = bVar;
            int length = c12 == 1000 ? 1 : gVar.b(c11, i11).length;
            length = (bVar == null ? 0 : bVar.f65188b) != i11 ? length + 3 : length;
            this.f65190d = bVar != null ? length + bVar.f65190d : length;
        }

        boolean e() {
            return this.f65187a == 1000;
        }
    }

    public m(String str, Charset charset, int i11) {
        this.f65186b = i11;
        g gVar = new g(str, charset, i11);
        if (gVar.g() != 1) {
            this.f65185a = e(str, gVar, i11);
            return;
        }
        this.f65185a = new int[str.length()];
        for (int i12 = 0; i12 < this.f65185a.length; i12++) {
            char cCharAt = str.charAt(i12);
            int[] iArr = this.f65185a;
            if (cCharAt == i11) {
                cCharAt = 1000;
            }
            iArr[i12] = cCharAt;
        }
    }

    static void c(b[][] bVarArr, int i11, b bVar) {
        if (bVarArr[i11][bVar.f65188b] == null || bVarArr[i11][bVar.f65188b].f65190d > bVar.f65190d) {
            bVarArr[i11][bVar.f65188b] = bVar;
        }
    }

    static void d(String str, g gVar, b[][] bVarArr, int i11, b bVar, int i12) {
        int i13;
        int iF;
        char cCharAt = str.charAt(i11);
        int iG = gVar.g();
        if (gVar.f() < 0 || !(cCharAt == i12 || gVar.a(cCharAt, gVar.f()))) {
            i13 = iG;
            iF = 0;
        } else {
            iF = gVar.f();
            i13 = iF + 1;
        }
        for (int i14 = iF; i14 < i13; i14++) {
            if (cCharAt == i12 || gVar.a(cCharAt, i14)) {
                c(bVarArr, i11 + 1, new b(cCharAt, gVar, i14, bVar, i12));
            }
        }
    }

    static int[] e(String str, g gVar, int i11) {
        int length = str.length();
        b[][] bVarArr = (b[][]) Array.newInstance((Class<?>) b.class, length + 1, gVar.g());
        d(str, gVar, bVarArr, 0, null, i11);
        for (int i12 = 1; i12 <= length; i12++) {
            for (int i13 = 0; i13 < gVar.g(); i13++) {
                b bVar = bVarArr[i12][i13];
                if (bVar != null && i12 < length) {
                    d(str, gVar, bVarArr, i12, bVar, i11);
                }
            }
            for (int i14 = 0; i14 < gVar.g(); i14++) {
                bVarArr[i12 - 1][i14] = null;
            }
        }
        int i15 = -1;
        int i16 = Integer.MAX_VALUE;
        for (int i17 = 0; i17 < gVar.g(); i17++) {
            b bVar2 = bVarArr[length][i17];
            if (bVar2 != null && bVar2.f65190d < i16) {
                i16 = bVar2.f65190d;
                i15 = i17;
            }
        }
        if (i15 < 0) {
            throw new IllegalStateException("Failed to encode \"" + str + "\"");
        }
        ArrayList arrayList = new ArrayList();
        for (b bVar3 = bVarArr[length][i15]; bVar3 != null; bVar3 = bVar3.f65189c) {
            if (bVar3.e()) {
                arrayList.add(0, 1000);
            } else {
                byte[] bArrB = gVar.b(bVar3.f65187a, bVar3.f65188b);
                for (int length2 = bArrB.length - 1; length2 >= 0; length2--) {
                    arrayList.add(0, Integer.valueOf(bArrB[length2] & 255));
                }
            }
            if ((bVar3.f65189c == null ? 0 : bVar3.f65189c.f65188b) != bVar3.f65188b) {
                arrayList.add(0, Integer.valueOf(gVar.e(bVar3.f65188b) + 256));
            }
        }
        int size = arrayList.size();
        int[] iArr = new int[size];
        for (int i18 = 0; i18 < size; i18++) {
            iArr[i18] = ((Integer) arrayList.get(i18)).intValue();
        }
        return iArr;
    }

    @Override // id.h
    public boolean a(int i11) {
        if (i11 >= 0 && i11 < length()) {
            int i12 = this.f65185a[i11];
            return i12 > 255 && i12 <= 999;
        }
        throw new IndexOutOfBoundsException("" + i11);
    }

    @Override // id.h
    public int b(int i11) {
        if (i11 < 0 || i11 >= length()) {
            throw new IndexOutOfBoundsException("" + i11);
        }
        if (a(i11)) {
            return this.f65185a[i11] + InputDeviceCompat.SOURCE_ANY;
        }
        throw new IllegalArgumentException("value at " + i11 + " is not an ECI but a character");
    }

    @Override // id.h
    public char charAt(int i11) {
        if (i11 < 0 || i11 >= length()) {
            throw new IndexOutOfBoundsException("" + i11);
        }
        if (!a(i11)) {
            return (char) (h(i11) ? this.f65186b : this.f65185a[i11]);
        }
        throw new IllegalArgumentException("value at " + i11 + " is not a character but an ECI");
    }

    public int f() {
        return this.f65186b;
    }

    public boolean g(int i11, int i12) {
        if ((i11 + i12) - 1 >= this.f65185a.length) {
            return false;
        }
        for (int i13 = 0; i13 < i12; i13++) {
            if (a(i11 + i13)) {
                return false;
            }
        }
        return true;
    }

    public boolean h(int i11) {
        if (i11 >= 0 && i11 < length()) {
            return this.f65185a[i11] == 1000;
        }
        throw new IndexOutOfBoundsException("" + i11);
    }

    @Override // id.h
    public int length() {
        return this.f65185a.length;
    }

    @Override // id.h
    public CharSequence subSequence(int i11, int i12) {
        if (i11 < 0 || i11 > i12 || i12 > length()) {
            throw new IndexOutOfBoundsException("" + i11);
        }
        StringBuilder sb2 = new StringBuilder();
        while (i11 < i12) {
            if (a(i11)) {
                throw new IllegalArgumentException("value at " + i11 + " is not a character but an ECI");
            }
            sb2.append(charAt(i11));
            i11++;
        }
        return sb2;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < length(); i11++) {
            if (i11 > 0) {
                sb2.append(", ");
            }
            if (a(i11)) {
                sb2.append("ECI(");
                sb2.append(b(i11));
                sb2.append(')');
            } else if (charAt(i11) < 128) {
                sb2.append('\'');
                sb2.append(charAt(i11));
                sb2.append('\'');
            } else {
                sb2.append((int) charAt(i11));
            }
        }
        return sb2.toString();
    }
}
