package com.google.zxing.datamatrix.encoder;

/* JADX INFO: loaded from: classes4.dex */
final class a implements e {
    a() {
    }

    private static char b(char c11, char c12) {
        if (g.f(c11) && g.f(c12)) {
            return (char) (((c11 - '0') * 10) + (c12 - '0') + 130);
        }
        throw new IllegalArgumentException("not digits: " + c11 + c12);
    }

    @Override // com.google.zxing.datamatrix.encoder.e
    public void a(f fVar) {
        if (g.a(fVar.d(), fVar.f32895d) >= 2) {
            fVar.r(b(fVar.d().charAt(fVar.f32895d), fVar.d().charAt(fVar.f32895d + 1)));
            fVar.f32895d += 2;
            return;
        }
        char c11 = fVar.c();
        int iN = g.n(fVar.d(), fVar.f32895d, c());
        if (iN == c()) {
            if (!g.g(c11)) {
                fVar.r((char) (c11 + 1));
                fVar.f32895d++;
                return;
            } else {
                fVar.r((char) 235);
                fVar.r((char) (c11 - 127));
                fVar.f32895d++;
                return;
            }
        }
        if (iN == 1) {
            fVar.r((char) 230);
            fVar.o(1);
            return;
        }
        if (iN == 2) {
            fVar.r((char) 239);
            fVar.o(2);
            return;
        }
        if (iN == 3) {
            fVar.r((char) 238);
            fVar.o(3);
            return;
        }
        if (iN == 4) {
            fVar.r((char) 240);
            fVar.o(4);
        } else if (iN == 5) {
            fVar.r((char) 231);
            fVar.o(5);
        } else {
            throw new IllegalStateException("Illegal mode: " + iN);
        }
    }

    public int c() {
        return 0;
    }
}
