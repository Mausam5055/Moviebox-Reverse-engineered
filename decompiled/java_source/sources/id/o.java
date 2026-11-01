package id;

import com.google.zxing.DecodeHintType;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.charset.UnsupportedCharsetException;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Charset f65200a = Charset.defaultCharset();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Charset f65201b = Charset.forName("SJIS");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Charset f65202c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Charset f65203d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final boolean f65204e;

    static {
        Charset charsetForName;
        try {
            charsetForName = Charset.forName("GB2312");
        } catch (UnsupportedCharsetException unused) {
            charsetForName = null;
        }
        f65202c = charsetForName;
        Charset charsetForName2 = Charset.forName("EUC_JP");
        f65203d = charsetForName2;
        Charset charset = f65201b;
        Charset charset2 = f65200a;
        f65204e = charset.equals(charset2) || charsetForName2.equals(charset2);
    }

    /* JADX WARN: Code duplicated, block: B:83:0x00d6  */
    public static Charset a(byte[] bArr, Map map) {
        int i11;
        byte b11;
        byte[] bArr2 = bArr;
        if (map != null) {
            DecodeHintType decodeHintType = DecodeHintType.CHARACTER_SET;
            if (map.containsKey(decodeHintType)) {
                return Charset.forName(map.get(decodeHintType).toString());
            }
        }
        boolean z10 = true;
        int i12 = 0;
        if (bArr2.length > 2 && (((b11 = bArr2[0]) == -2 && bArr2[1] == -1) || (b11 == -1 && bArr2[1] == -2))) {
            return StandardCharsets.UTF_16;
        }
        int length = bArr2.length;
        boolean z11 = bArr2.length > 3 && bArr2[0] == -17 && bArr2[1] == -69 && bArr2[2] == -65;
        boolean z12 = true;
        boolean z13 = true;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        while (i14 < length && (z10 || z12 || z13)) {
            byte b12 = bArr2[i14];
            int i24 = b12 & 255;
            if (z13) {
                if (i15 <= 0) {
                    i11 = length;
                    if ((b12 & 128) != 0) {
                        if ((b12 & 64) != 0) {
                            int i25 = i15 + 1;
                            if ((b12 & 32) == 0) {
                                i17++;
                            } else {
                                i25 = i15 + 2;
                                if ((b12 & 16) == 0) {
                                    i18++;
                                } else {
                                    i15 += 3;
                                    if ((b12 & 8) == 0) {
                                        i19++;
                                    }
                                }
                            }
                            i15 = i25;
                        }
                    }
                } else if ((b12 & 128) == 0) {
                    i11 = length;
                } else {
                    i15--;
                    i11 = length;
                }
                z13 = false;
            } else {
                i11 = length;
            }
            if (z10) {
                if (i24 > 127 && i24 < 160) {
                    z10 = false;
                } else if (i24 > 159 && (i24 < 192 || i24 == 215 || i24 == 247)) {
                    i21++;
                }
            }
            if (z12) {
                if (i16 > 0) {
                    if (i24 < 64 || i24 == 127 || i24 > 252) {
                        z12 = false;
                    } else {
                        i16--;
                    }
                } else if (i24 == 128 || i24 == 160 || i24 > 239) {
                    z12 = false;
                } else if (i24 <= 160 || i24 >= 224) {
                    if (i24 > 127) {
                        i16++;
                        int i26 = i22 + 1;
                        if (i26 > i12) {
                            i12 = i26;
                            i22 = i12;
                        } else {
                            i22 = i26;
                        }
                    } else {
                        i22 = 0;
                    }
                    i23 = 0;
                } else {
                    i13++;
                    int i27 = i23 + 1;
                    if (i27 > i20) {
                        i20 = i27;
                        i23 = i20;
                    } else {
                        i23 = i27;
                    }
                    i22 = 0;
                }
            }
            i14++;
            bArr2 = bArr;
            length = i11;
        }
        int i28 = length;
        if (z13 && i15 > 0) {
            z13 = false;
        }
        if (z12 && i16 > 0) {
            z12 = false;
        }
        if (z13 && (z11 || i17 + i18 + i19 > 0)) {
            return StandardCharsets.UTF_8;
        }
        if (z12 && (f65204e || i20 >= 3 || i12 >= 3)) {
            return f65201b;
        }
        if (z10 && z12) {
            return (!(i20 == 2 && i13 == 2) && i21 * 10 < i28) ? StandardCharsets.ISO_8859_1 : f65201b;
        }
        if (z10) {
            return StandardCharsets.ISO_8859_1;
        }
        if (z12) {
            return f65201b;
        }
        return z13 ? StandardCharsets.UTF_8 : f65200a;
    }
}
