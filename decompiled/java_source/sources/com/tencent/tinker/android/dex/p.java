package com.tencent.tinker.android.dex;

/* JADX INFO: loaded from: classes5.dex */
public abstract class p {
    public static int a(gf.a aVar) {
        int i11;
        int i12 = 0;
        int i13 = -1;
        int i14 = 0;
        do {
            byte b11 = aVar.readByte();
            i12 |= (b11 & 127) << (i14 * 7);
            i13 <<= 7;
            i14++;
            i11 = b11 & 128;
            if (i11 != 128) {
                break;
            }
        } while (i14 < 5);
        if (i11 != 128) {
            return ((i13 >> 1) & i12) != 0 ? i12 | i13 : i12;
        }
        throw new DexException("invalid LEB128 sequence");
    }

    public static int b(gf.a aVar) {
        int i11;
        int i12 = 0;
        int i13 = 0;
        do {
            byte b11 = aVar.readByte();
            i12 |= (b11 & 127) << (i13 * 7);
            i13++;
            i11 = b11 & 128;
            if (i11 != 128) {
                break;
            }
        } while (i13 < 5);
        if (i11 != 128) {
            return i12;
        }
        throw new DexException("invalid LEB128 sequence");
    }

    public static int c(gf.a aVar) {
        return b(aVar) - 1;
    }

    public static int d(gf.b bVar, int i11) {
        int i12 = i11 >> 7;
        int i13 = (Integer.MIN_VALUE & i11) == 0 ? 0 : -1;
        int i14 = 0;
        boolean z10 = true;
        while (true) {
            int i15 = i12;
            int i16 = i11;
            i11 = i15;
            if (!z10) {
                return i14;
            }
            z10 = (i11 == i13 && (i11 & 1) == ((i16 >> 6) & 1)) ? false : true;
            bVar.writeByte((byte) ((i16 & 127) | (z10 ? 128 : 0)));
            i14++;
            i12 = i11 >> 7;
        }
    }

    public static int e(gf.b bVar, int i11) {
        int i12 = i11 >>> 7;
        int i13 = 0;
        while (true) {
            int i14 = i12;
            int i15 = i11;
            i11 = i14;
            if (i11 == 0) {
                bVar.writeByte((byte) (i15 & 127));
                return i13 + 1;
            }
            bVar.writeByte((byte) ((i15 & 127) | 128));
            i13++;
            i12 = i11 >>> 7;
        }
    }

    public static int f(gf.b bVar, int i11) {
        return e(bVar, i11 + 1);
    }
}
