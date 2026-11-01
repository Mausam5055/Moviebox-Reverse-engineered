package com.google.zxing.datamatrix.encoder;

/* JADX INFO: loaded from: classes4.dex */
final class d implements e {
    d() {
    }

    private static void b(char c11, StringBuilder sb2) {
        if (c11 >= ' ' && c11 <= '?') {
            sb2.append(c11);
        } else if (c11 < '@' || c11 > '^') {
            g.e(c11);
        } else {
            sb2.append((char) (c11 - '@'));
        }
    }

    private static String c(CharSequence charSequence) {
        int length = charSequence.length();
        if (length == 0) {
            throw new IllegalStateException("StringBuilder must not be empty");
        }
        int iCharAt = (charSequence.charAt(0) << 18) + ((length >= 2 ? charSequence.charAt(1) : (char) 0) << '\f') + ((length >= 3 ? charSequence.charAt(2) : (char) 0) << 6) + (length >= 4 ? charSequence.charAt(3) : (char) 0);
        char c11 = (char) ((iCharAt >> 16) & 255);
        char c12 = (char) ((iCharAt >> 8) & 255);
        char c13 = (char) (iCharAt & 255);
        StringBuilder sb2 = new StringBuilder(3);
        sb2.append(c11);
        if (length >= 2) {
            sb2.append(c12);
        }
        if (length >= 3) {
            sb2.append(c13);
        }
        return sb2.toString();
    }

    private static void e(f fVar, CharSequence charSequence) {
        try {
            int length = charSequence.length();
            if (length == 0) {
                fVar.o(0);
                return;
            }
            boolean z10 = true;
            if (length == 1) {
                fVar.p();
                int iA = fVar.g().a() - fVar.a();
                int iF = fVar.f();
                if (iF > iA) {
                    fVar.q(fVar.a() + 1);
                    iA = fVar.g().a() - fVar.a();
                }
                if (iF <= iA && iA <= 2) {
                    fVar.o(0);
                    return;
                }
            }
            if (length > 4) {
                throw new IllegalStateException("Count must not exceed 4");
            }
            int i11 = length - 1;
            String strC = c(charSequence);
            if (fVar.i() || i11 > 2) {
                z10 = false;
            }
            if (i11 <= 2) {
                fVar.q(fVar.a() + i11);
                if (fVar.g().a() - fVar.a() >= 3) {
                    fVar.q(fVar.a() + strC.length());
                    z10 = false;
                }
            }
            if (z10) {
                fVar.k();
                fVar.f32895d -= i11;
            } else {
                fVar.s(strC);
            }
            fVar.o(0);
        } catch (Throwable th2) {
            fVar.o(0);
            throw th2;
        }
    }

    @Override // com.google.zxing.datamatrix.encoder.e
    public void a(f fVar) {
        StringBuilder sb2 = new StringBuilder();
        while (fVar.i()) {
            b(fVar.c(), sb2);
            fVar.f32895d++;
            if (sb2.length() >= 4) {
                fVar.s(c(sb2));
                sb2.delete(0, 4);
                if (g.n(fVar.d(), fVar.f32895d, d()) != d()) {
                    fVar.o(0);
                    break;
                }
            }
        }
        sb2.append((char) 31);
        e(fVar, sb2);
    }

    public int d() {
        return 4;
    }
}
