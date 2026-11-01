package tz;

/* JADX INFO: loaded from: classes7.dex */
abstract class c extends h {

    static class a extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private byte[][] f76437a = {new byte[]{27, 36, 41, 65}, new byte[]{27, 36, 41, 71}, new byte[]{27, 36, 42, 72}, new byte[]{27, 36, 41, 69}, new byte[]{27, 36, 43, 73}, new byte[]{27, 36, 43, 74}, new byte[]{27, 36, 43, 75}, new byte[]{27, 36, 43, 76}, new byte[]{27, 36, 43, 77}, new byte[]{27, 78}, new byte[]{27, 79}};

        a() {
        }

        @Override // tz.h
        String b() {
            return "ISO-2022-CN";
        }

        @Override // tz.h
        tz.b c(tz.a aVar) {
            int iD = d(aVar.f76420a, aVar.f76421b, this.f76437a);
            if (iD == 0) {
                return null;
            }
            return new tz.b(aVar, this, iD);
        }
    }

    static class b extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private byte[][] f76438a = {new byte[]{27, 36, 40, 67}, new byte[]{27, 36, 40, 68}, new byte[]{27, 36, 64}, new byte[]{27, 36, 65}, new byte[]{27, 36, 66}, new byte[]{27, 38, 64}, new byte[]{27, 40, 66}, new byte[]{27, 40, 72}, new byte[]{27, 40, 73}, new byte[]{27, 40, 74}, new byte[]{27, 46, 65}, new byte[]{27, 46, 70}};

        b() {
        }

        @Override // tz.h
        String b() {
            return "ISO-2022-JP";
        }

        @Override // tz.h
        tz.b c(tz.a aVar) {
            int iD = d(aVar.f76420a, aVar.f76421b, this.f76438a);
            if (iD == 0) {
                return null;
            }
            return new tz.b(aVar, this, iD);
        }
    }

    /* JADX INFO: renamed from: tz.c$c, reason: collision with other inner class name */
    static class C0929c extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private byte[][] f76439a = {new byte[]{27, 36, 41, 67}};

        C0929c() {
        }

        @Override // tz.h
        String b() {
            return "ISO-2022-KR";
        }

        @Override // tz.h
        tz.b c(tz.a aVar) {
            int iD = d(aVar.f76420a, aVar.f76421b, this.f76439a);
            if (iD == 0) {
                return null;
            }
            return new tz.b(aVar, this, iD);
        }
    }

    c() {
    }

    /* JADX WARN: Code duplicated, block: B:25:0x003e  */
    int d(byte[] bArr, int i11, byte[][] bArr2) {
        byte b11;
        int length = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (length < i11) {
            if (bArr[length] == 27) {
                int i15 = 0;
                while (true) {
                    if (i15 < bArr2.length) {
                        byte[] bArr3 = bArr2[i15];
                        if (i11 - length >= bArr3.length) {
                            int i16 = 1;
                            while (true) {
                                if (i16 >= bArr3.length) {
                                    i12++;
                                    length += bArr3.length - 1;
                                } else if (bArr3[i16] == bArr[length + i16]) {
                                    i16++;
                                }
                            }
                        }
                        i15++;
                    } else {
                        i13++;
                        b11 = bArr[length];
                        if (b11 != 14 || b11 == 15) {
                            i14++;
                        }
                    }
                }
            } else {
                b11 = bArr[length];
                if (b11 != 14) {
                    i14++;
                } else {
                    i14++;
                }
            }
            length++;
        }
        if (i12 == 0) {
            return 0;
        }
        int i17 = ((i12 * 100) - (i13 * 100)) / (i13 + i12);
        int i18 = i12 + i14;
        if (i18 < 5) {
            i17 -= (5 - i18) * 10;
        }
        if (i17 < 0) {
            return 0;
        }
        return i17;
    }
}
