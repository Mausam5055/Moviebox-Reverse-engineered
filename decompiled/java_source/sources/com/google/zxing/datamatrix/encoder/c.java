package com.google.zxing.datamatrix.encoder;

/* JADX INFO: loaded from: classes4.dex */
class c implements e {
    c() {
    }

    private int b(f fVar, StringBuilder sb2, StringBuilder sb3, int i11) {
        int length = sb2.length();
        sb2.delete(length - i11, length);
        fVar.f32895d--;
        int iC = c(fVar.c(), sb3);
        fVar.k();
        return iC;
    }

    private static String e(CharSequence charSequence) {
        int iCharAt = (charSequence.charAt(0) * 1600) + (charSequence.charAt(1) * '(') + charSequence.charAt(2) + 1;
        return new String(new char[]{(char) (iCharAt / 256), (char) (iCharAt % 256)});
    }

    static void h(f fVar, StringBuilder sb2) {
        fVar.s(e(sb2));
        sb2.delete(0, 3);
    }

    @Override // com.google.zxing.datamatrix.encoder.e
    public void a(f fVar) {
        StringBuilder sb2 = new StringBuilder();
        while (fVar.i()) {
            char c11 = fVar.c();
            fVar.f32895d++;
            int iC = c(c11, sb2);
            int iA = fVar.a() + ((sb2.length() / 3) * 2);
            fVar.q(iA);
            int iA2 = fVar.g().a() - iA;
            if (!fVar.i()) {
                StringBuilder sb3 = new StringBuilder();
                if (sb2.length() % 3 == 2 && iA2 != 2) {
                    iC = b(fVar, sb2, sb3, iC);
                }
                while (sb2.length() % 3 == 1 && (iC > 3 || iA2 != 1)) {
                    iC = b(fVar, sb2, sb3, iC);
                }
                break;
            }
            if (sb2.length() % 3 == 0 && g.n(fVar.d(), fVar.f32895d, f()) != f()) {
                fVar.o(0);
                break;
            }
        }
        g(fVar, sb2);
    }

    int c(char c11, StringBuilder sb2) {
        if (c11 == ' ') {
            sb2.append((char) 3);
            return 1;
        }
        if (c11 >= '0' && c11 <= '9') {
            sb2.append((char) (c11 - ','));
            return 1;
        }
        if (c11 >= 'A' && c11 <= 'Z') {
            sb2.append((char) (c11 - '3'));
            return 1;
        }
        if (c11 < ' ') {
            sb2.append((char) 0);
            sb2.append(c11);
            return 2;
        }
        if (c11 <= '/') {
            sb2.append((char) 1);
            sb2.append((char) (c11 - '!'));
            return 2;
        }
        if (c11 <= '@') {
            sb2.append((char) 1);
            sb2.append((char) (c11 - '+'));
            return 2;
        }
        if (c11 <= '_') {
            sb2.append((char) 1);
            sb2.append((char) (c11 - 'E'));
            return 2;
        }
        if (c11 > 127) {
            sb2.append("\u0001\u001e");
            return c((char) (c11 - 128), sb2) + 2;
        }
        sb2.append((char) 2);
        sb2.append((char) (c11 - '`'));
        return 2;
    }

    void d(f fVar) {
        StringBuilder sb2 = new StringBuilder();
        int i11 = fVar.f32895d;
        int length = 0;
        int iC = 0;
        while (fVar.i()) {
            char c11 = fVar.c();
            fVar.f32895d++;
            iC = c(c11, sb2);
            if (sb2.length() % 3 == 0) {
                i11 = fVar.f32895d;
                length = sb2.length();
            }
        }
        if (length != sb2.length()) {
            int iA = fVar.a() + ((sb2.length() / 3) * 2) + 1;
            fVar.q(iA);
            int iA2 = fVar.g().a() - iA;
            int length2 = sb2.length() % 3;
            if ((length2 == 2 && iA2 != 2) || (length2 == 1 && (iC > 3 || iA2 != 1))) {
                sb2.setLength(length);
                fVar.f32895d = i11;
            }
        }
        if (sb2.length() > 0) {
            fVar.r((char) 230);
        }
        g(fVar, sb2);
    }

    public int f() {
        return 1;
    }

    void g(f fVar, StringBuilder sb2) {
        int length = (sb2.length() / 3) * 2;
        int length2 = sb2.length() % 3;
        int iA = fVar.a() + length;
        fVar.q(iA);
        int iA2 = fVar.g().a() - iA;
        if (length2 == 2) {
            sb2.append((char) 0);
            while (sb2.length() >= 3) {
                h(fVar, sb2);
            }
            if (fVar.i()) {
                fVar.r((char) 254);
            }
        } else if (iA2 == 1 && length2 == 1) {
            while (sb2.length() >= 3) {
                h(fVar, sb2);
            }
            if (fVar.i()) {
                fVar.r((char) 254);
            }
            fVar.f32895d--;
        } else {
            if (length2 != 0) {
                throw new IllegalStateException("Unexpected case. Please report!");
            }
            while (sb2.length() >= 3) {
                h(fVar, sb2);
            }
            if (iA2 > 0 || fVar.i()) {
                fVar.r((char) 254);
            }
        }
        fVar.o(0);
    }
}
