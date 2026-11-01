package tz;

/* JADX INFO: loaded from: classes7.dex */
class d extends h {
    d() {
    }

    @Override // tz.h
    String b() {
        return "UTF-8";
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0068  */
    /* JADX WARN: Code duplicated, block: B:45:0x0072  */
    @Override // tz.h
    b c(a aVar) {
        int i11;
        byte[] bArr = aVar.f76424e;
        int i12 = 0;
        boolean z10 = aVar.f76425f >= 3 && (bArr[0] & 255) == 239 && (bArr[1] & 255) == 187 && (bArr[2] & 255) == 191;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (i13 < aVar.f76425f) {
            byte b11 = bArr[i13];
            if ((b11 & 128) != 0) {
                if ((b11 & 224) != 192) {
                    if ((b11 & 240) != 224) {
                        if ((b11 & 248) != 240) {
                            i14++;
                            break;
                        }
                        i11 = 3;
                    } else {
                        i11 = 2;
                    }
                } else {
                    i11 = 1;
                }
                while (true) {
                    i13++;
                    if (i13 >= aVar.f76425f) {
                        break;
                    }
                    if ((bArr[i13] & 192) != 128) {
                        i14++;
                        break;
                        break;
                    }
                    i11--;
                    if (i11 == 0) {
                        i15++;
                        break;
                    }
                }
            }
            i13++;
        }
        if (z10 && i14 == 0) {
            i12 = 100;
        } else if (z10 && i15 > i14 * 10) {
            i12 = 80;
        } else if (i15 > 3 && i14 == 0) {
            i12 = 100;
        } else if (i15 > 0 && i14 == 0) {
            i12 = 80;
        } else if (i15 == 0 && i14 == 0) {
            i12 = 15;
        } else if (i15 > i14 * 10) {
            i12 = 25;
        }
        if (i12 == 0) {
            return null;
        }
        return new b(aVar, this, i12);
    }
}
