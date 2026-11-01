package com.google.zxing.aztec.encoder;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
final class e {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final e f32842f = new e(f.f32848b, 0, 0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f32843a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f32844b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f32845c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f32846d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f32847e;

    private e(f fVar, int i11, int i12, int i13) {
        this.f32844b = fVar;
        this.f32843a = i11;
        this.f32845c = i12;
        this.f32846d = i13;
        this.f32847e = c(i12);
    }

    private static int c(int i11) {
        if (i11 > 62) {
            return 21;
        }
        if (i11 > 31) {
            return 20;
        }
        return i11 > 0 ? 10 : 0;
    }

    e a(int i11) {
        int i12;
        f fVarA = this.f32844b;
        int i13 = this.f32843a;
        int i14 = this.f32846d;
        if (i13 == 4 || i13 == 2) {
            int i15 = HighLevelEncoder.f32827d[i13][0];
            int i16 = 65535 & i15;
            int i17 = i15 >> 16;
            fVarA = fVarA.a(i16, i17);
            i14 += i17;
            i13 = 0;
        }
        int i18 = this.f32845c;
        if (i18 == 0 || i18 == 31) {
            i12 = 18;
        } else {
            i12 = i18 == 62 ? 9 : 8;
        }
        e eVar = new e(fVarA, i13, i18 + 1, i14 + i12);
        return eVar.f32845c == 2078 ? eVar.d(i11 + 1) : eVar;
    }

    e b(int i11) {
        f fVarA;
        f fVar = j(4, 0).f32844b;
        int length = 3;
        if (i11 < 0) {
            fVarA = fVar.a(0, 3);
        } else {
            if (i11 > 999999) {
                throw new IllegalArgumentException("ECI code must be between 0 and 999999");
            }
            byte[] bytes = Integer.toString(i11).getBytes(StandardCharsets.ISO_8859_1);
            f fVarA2 = fVar.a(bytes.length, 3);
            for (byte b11 : bytes) {
                fVarA2 = fVarA2.a(b11 - 46, 4);
            }
            length = 3 + (bytes.length * 4);
            fVarA = fVarA2;
        }
        return new e(fVarA, this.f32843a, 0, this.f32846d + length);
    }

    e d(int i11) {
        int i12 = this.f32845c;
        return i12 == 0 ? this : new e(this.f32844b.b(i11 - i12, i12), this.f32843a, 0, this.f32846d);
    }

    int e() {
        return this.f32845c;
    }

    int f() {
        return this.f32846d;
    }

    int g() {
        return this.f32843a;
    }

    boolean h(e eVar) {
        int i11 = this.f32846d + (HighLevelEncoder.f32827d[this.f32843a][eVar.f32843a] >> 16);
        int i12 = this.f32845c;
        int i13 = eVar.f32845c;
        if (i12 < i13) {
            i11 += eVar.f32847e - this.f32847e;
        } else if (i12 > i13 && i13 > 0) {
            i11 += 10;
        }
        return i11 <= eVar.f32846d;
    }

    e i(int i11, int i12) {
        int i13 = this.f32846d;
        f fVarA = this.f32844b;
        int i14 = this.f32843a;
        if (i11 != i14) {
            int i15 = HighLevelEncoder.f32827d[i14][i11];
            int i16 = 65535 & i15;
            int i17 = i15 >> 16;
            fVarA = fVarA.a(i16, i17);
            i13 += i17;
        }
        int i18 = i11 == 2 ? 4 : 5;
        return new e(fVarA.a(i12, i18), i11, 0, i13 + i18);
    }

    e j(int i11, int i12) {
        f fVar = this.f32844b;
        int i13 = this.f32843a;
        int i14 = i13 == 2 ? 4 : 5;
        return new e(fVar.a(HighLevelEncoder.f32829f[i13][i11], i14).a(i12, 5), this.f32843a, 0, this.f32846d + i14 + 5);
    }

    id.a k(byte[] bArr) {
        ArrayList arrayList = new ArrayList();
        for (f fVarD = d(bArr.length).f32844b; fVarD != null; fVarD = fVarD.d()) {
            arrayList.add(fVarD);
        }
        id.a aVar = new id.a();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((f) arrayList.get(size)).c(aVar, bArr);
        }
        return aVar;
    }

    public String toString() {
        return String.format("%s bits=%d bytes=%d", HighLevelEncoder.f32826c[this.f32843a], Integer.valueOf(this.f32846d), Integer.valueOf(this.f32845c));
    }
}
