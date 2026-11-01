package com.google.zxing.datamatrix.encoder;

import androidx.core.view.InputDeviceCompat;

/* JADX INFO: loaded from: classes4.dex */
final class b implements e {
    b() {
    }

    private static char c(char c11, int i11) {
        int i12 = c11 + ((i11 * 149) % 255) + 1;
        return i12 <= 255 ? (char) i12 : (char) (i12 + InputDeviceCompat.SOURCE_ANY);
    }

    @Override // com.google.zxing.datamatrix.encoder.e
    public void a(f fVar) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append((char) 0);
        while (fVar.i()) {
            sb2.append(fVar.c());
            fVar.f32895d++;
            if (g.n(fVar.d(), fVar.f32895d, b()) != b()) {
                fVar.o(0);
                break;
            }
        }
        int length = sb2.length() - 1;
        int iA = fVar.a() + length + 1;
        fVar.q(iA);
        boolean z10 = fVar.g().a() - iA > 0;
        if (fVar.i() || z10) {
            if (length <= 249) {
                sb2.setCharAt(0, (char) length);
            } else {
                if (length > 1555) {
                    throw new IllegalStateException("Message length not in valid ranges: " + length);
                }
                sb2.setCharAt(0, (char) ((length / 250) + 249));
                sb2.insert(1, (char) (length % 250));
            }
        }
        int length2 = sb2.length();
        for (int i11 = 0; i11 < length2; i11++) {
            fVar.r(c(sb2.charAt(i11), fVar.a() + 1));
        }
    }

    public int b() {
        return 5;
    }
}
