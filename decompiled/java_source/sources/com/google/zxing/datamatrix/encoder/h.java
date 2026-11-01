package com.google.zxing.datamatrix.encoder;

/* JADX INFO: loaded from: classes4.dex */
final class h extends c {
    h() {
    }

    @Override // com.google.zxing.datamatrix.encoder.c
    int c(char c11, StringBuilder sb2) {
        if (c11 == ' ') {
            sb2.append((char) 3);
            return 1;
        }
        if (c11 >= '0' && c11 <= '9') {
            sb2.append((char) (c11 - ','));
            return 1;
        }
        if (c11 >= 'a' && c11 <= 'z') {
            sb2.append((char) (c11 - 'S'));
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
        if (c11 >= '[' && c11 <= '_') {
            sb2.append((char) 1);
            sb2.append((char) (c11 - 'E'));
            return 2;
        }
        if (c11 == '`') {
            sb2.append((char) 2);
            sb2.append((char) 0);
            return 2;
        }
        if (c11 <= 'Z') {
            sb2.append((char) 2);
            sb2.append((char) (c11 - '@'));
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

    @Override // com.google.zxing.datamatrix.encoder.c
    public int f() {
        return 2;
    }
}
