package com.google.zxing.datamatrix.decoder;

import com.google.zxing.FormatException;
import id.i;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
abstract class DecodedBitStreamParser {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final char[] f32854b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final char[] f32856d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f32853a = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final char[] f32855c = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final char[] f32857e = {'`', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '{', '|', '}', '~', 127};

    private enum Mode {
        PAD_ENCODE,
        ASCII_ENCODE,
        C40_ENCODE,
        TEXT_ENCODE,
        ANSIX12_ENCODE,
        EDIFACT_ENCODE,
        BASE256_ENCODE,
        ECI_ENCODE
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f32858a;

        static {
            int[] iArr = new int[Mode.values().length];
            f32858a = iArr;
            try {
                iArr[Mode.C40_ENCODE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32858a[Mode.TEXT_ENCODE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f32858a[Mode.ANSIX12_ENCODE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f32858a[Mode.EDIFACT_ENCODE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f32858a[Mode.BASE256_ENCODE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f32858a[Mode.ECI_ENCODE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    static {
        char[] cArr = {'!', '\"', '#', '$', '%', '&', '\'', '(', ')', '*', '+', ',', '-', '.', '/', ':', ';', '<', '=', '>', '?', '@', '[', '\\', ']', '^', '_'};
        f32854b = cArr;
        f32856d = cArr;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0069  */
    /* JADX WARN: Code duplicated, block: B:26:0x0070  */
    /* JADX WARN: Code duplicated, block: B:39:0x0097  */
    /* JADX WARN: Code duplicated, block: B:40:0x0099  */
    /* JADX WARN: Code duplicated, block: B:50:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:53:0x00ca  */
    static id.d a(byte[] bArr) throws FormatException {
        int i11;
        id.c cVar = new id.c(bArr);
        i iVar = new i(100);
        boolean z10 = false;
        StringBuilder sb2 = new StringBuilder(0);
        int i12 = 1;
        ArrayList arrayList = new ArrayList(1);
        Mode modeC = Mode.ASCII_ENCODE;
        HashSet hashSet = new HashSet();
        do {
            Mode mode = Mode.ASCII_ENCODE;
            if (modeC == mode) {
                modeC = c(cVar, iVar, sb2, hashSet);
            } else {
                switch (a.f32858a[modeC.ordinal()]) {
                    case 1:
                        e(cVar, iVar, hashSet);
                        break;
                    case 2:
                        h(cVar, iVar, hashSet);
                        break;
                    case 3:
                        b(cVar, iVar);
                        break;
                    case 4:
                        g(cVar, iVar);
                        break;
                    case 5:
                        d(cVar, iVar, arrayList);
                        break;
                    case 6:
                        f(cVar, iVar);
                        z10 = true;
                        break;
                    default:
                        throw FormatException.getFormatInstance();
                }
                modeC = mode;
            }
            if (modeC != Mode.PAD_ENCODE) {
            }
            if (sb2.length() > 0) {
                iVar.e(sb2);
            }
            if (z10) {
                if (!hashSet.contains(0) || hashSet.contains(4)) {
                    i11 = 5;
                } else if (hashSet.contains(1) || hashSet.contains(5)) {
                    i12 = 6;
                } else {
                    i11 = 4;
                }
                String string = iVar.toString();
                if (arrayList.isEmpty()) {
                    arrayList = null;
                }
                return new id.d(bArr, string, arrayList, null, i11);
            }
            if (!hashSet.contains(0) || hashSet.contains(4)) {
                i12 = 2;
            } else if (hashSet.contains(1) || hashSet.contains(5)) {
                i12 = 3;
            }
            i11 = i12;
            String string2 = iVar.toString();
            if (arrayList.isEmpty()) {
                arrayList = null;
            }
            return new id.d(bArr, string2, arrayList, null, i11);
        } while (cVar.a() > 0);
        if (sb2.length() > 0) {
            iVar.e(sb2);
        }
        if (z10) {
            if (hashSet.contains(0)) {
                i11 = 5;
            } else {
                i11 = 5;
            }
            String string3 = iVar.toString();
            if (arrayList.isEmpty()) {
                arrayList = null;
            }
            return new id.d(bArr, string3, arrayList, null, i11);
        }
        if (hashSet.contains(0)) {
            i12 = 2;
        } else {
            i12 = 2;
        }
        i11 = i12;
        String string4 = iVar.toString();
        if (arrayList.isEmpty()) {
            arrayList = null;
        }
        return new id.d(bArr, string4, arrayList, null, i11);
    }

    private static void b(id.c cVar, i iVar) throws FormatException {
        int iD;
        int[] iArr = new int[3];
        while (cVar.a() != 8 && (iD = cVar.d(8)) != 254) {
            i(iD, cVar.d(8), iArr);
            for (int i11 = 0; i11 < 3; i11++) {
                int i12 = iArr[i11];
                if (i12 == 0) {
                    iVar.b('\r');
                } else if (i12 == 1) {
                    iVar.b('*');
                } else if (i12 == 2) {
                    iVar.b('>');
                } else if (i12 == 3) {
                    iVar.b(' ');
                } else if (i12 < 14) {
                    iVar.b((char) (i12 + 44));
                } else {
                    if (i12 >= 40) {
                        throw FormatException.getFormatInstance();
                    }
                    iVar.b((char) (i12 + 51));
                }
            }
            if (cVar.a() <= 0) {
                return;
            }
        }
    }

    private static Mode c(id.c cVar, i iVar, StringBuilder sb2, Set set) throws FormatException {
        boolean z10 = false;
        do {
            int iD = cVar.d(8);
            if (iD == 0) {
                throw FormatException.getFormatInstance();
            }
            if (iD > 128) {
                if (iD != 129) {
                    if (iD > 229) {
                        switch (iD) {
                            case 230:
                                return Mode.C40_ENCODE;
                            case 231:
                                return Mode.BASE256_ENCODE;
                            case 232:
                                set.add(Integer.valueOf(iVar.i()));
                                iVar.b((char) 29);
                                break;
                            case 233:
                            case 234:
                                break;
                            case 235:
                                z10 = true;
                                break;
                            case 236:
                                iVar.d("[)>\u001e05\u001d");
                                sb2.insert(0, "\u001e\u0004");
                                break;
                            case 237:
                                iVar.d("[)>\u001e06\u001d");
                                sb2.insert(0, "\u001e\u0004");
                                break;
                            case 238:
                                return Mode.ANSIX12_ENCODE;
                            case 239:
                                return Mode.TEXT_ENCODE;
                            case 240:
                                return Mode.EDIFACT_ENCODE;
                            case 241:
                                return Mode.ECI_ENCODE;
                            default:
                                if (iD != 254 || cVar.a() != 0) {
                                    throw FormatException.getFormatInstance();
                                }
                                break;
                        }
                    } else {
                        int i11 = iD - 130;
                        if (i11 < 10) {
                            iVar.b('0');
                        }
                        iVar.c(i11);
                    }
                } else {
                    return Mode.PAD_ENCODE;
                }
            } else {
                if (z10) {
                    iD += 128;
                }
                iVar.b((char) (iD - 1));
                return Mode.ASCII_ENCODE;
            }
        } while (cVar.a() > 0);
        return Mode.ASCII_ENCODE;
    }

    private static void d(id.c cVar, i iVar, Collection collection) throws FormatException {
        int iC = cVar.c();
        int i11 = iC + 2;
        int iJ = j(cVar.d(8), iC + 1);
        if (iJ == 0) {
            iJ = cVar.a() / 8;
        } else if (iJ >= 250) {
            iJ = ((iJ - 249) * 250) + j(cVar.d(8), i11);
            i11 = iC + 3;
        }
        if (iJ < 0) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[iJ];
        int i12 = 0;
        while (i12 < iJ) {
            if (cVar.a() < 8) {
                throw FormatException.getFormatInstance();
            }
            bArr[i12] = (byte) j(cVar.d(8), i11);
            i12++;
            i11++;
        }
        collection.add(bArr);
        iVar.d(new String(bArr, StandardCharsets.ISO_8859_1));
    }

    private static void e(id.c cVar, i iVar, Set set) throws FormatException {
        int iD;
        int[] iArr = new int[3];
        boolean z10 = false;
        int i11 = 0;
        while (cVar.a() != 8 && (iD = cVar.d(8)) != 254) {
            i(iD, cVar.d(8), iArr);
            for (int i12 = 0; i12 < 3; i12++) {
                int i13 = iArr[i12];
                if (i11 != 0) {
                    if (i11 != 1) {
                        if (i11 == 2) {
                            char[] cArr = f32854b;
                            if (i13 < cArr.length) {
                                char c11 = cArr[i13];
                                if (z10) {
                                    iVar.b((char) (c11 + 128));
                                    z10 = false;
                                } else {
                                    iVar.b(c11);
                                }
                            } else if (i13 == 27) {
                                set.add(Integer.valueOf(iVar.i()));
                                iVar.b((char) 29);
                            } else {
                                if (i13 != 30) {
                                    throw FormatException.getFormatInstance();
                                }
                                z10 = true;
                            }
                        } else {
                            if (i11 != 3) {
                                throw FormatException.getFormatInstance();
                            }
                            if (z10) {
                                iVar.b((char) (i13 + 224));
                                z10 = false;
                            } else {
                                iVar.b((char) (i13 + 96));
                            }
                        }
                    } else if (z10) {
                        iVar.b((char) (i13 + 128));
                        z10 = false;
                    } else {
                        iVar.b((char) i13);
                    }
                    i11 = 0;
                } else if (i13 < 3) {
                    i11 = i13 + 1;
                } else {
                    char[] cArr2 = f32853a;
                    if (i13 >= cArr2.length) {
                        throw FormatException.getFormatInstance();
                    }
                    char c12 = cArr2[i13];
                    if (z10) {
                        iVar.b((char) (c12 + 128));
                        z10 = false;
                    } else {
                        iVar.b(c12);
                    }
                }
            }
            if (cVar.a() <= 0) {
                return;
            }
        }
    }

    private static void f(id.c cVar, i iVar) throws FormatException {
        if (cVar.a() < 8) {
            throw FormatException.getFormatInstance();
        }
        int iD = cVar.d(8);
        if (iD <= 127) {
            iVar.f(iD - 1);
        }
    }

    private static void g(id.c cVar, i iVar) {
        while (cVar.a() > 16) {
            for (int i11 = 0; i11 < 4; i11++) {
                int iD = cVar.d(6);
                if (iD == 31) {
                    int iB = 8 - cVar.b();
                    if (iB != 8) {
                        cVar.d(iB);
                        return;
                    }
                    return;
                }
                if ((iD & 32) == 0) {
                    iD |= 64;
                }
                iVar.b((char) iD);
            }
            if (cVar.a() <= 0) {
                return;
            }
        }
    }

    private static void h(id.c cVar, i iVar, Set set) throws FormatException {
        int iD;
        int[] iArr = new int[3];
        boolean z10 = false;
        int i11 = 0;
        while (cVar.a() != 8 && (iD = cVar.d(8)) != 254) {
            i(iD, cVar.d(8), iArr);
            for (int i12 = 0; i12 < 3; i12++) {
                int i13 = iArr[i12];
                if (i11 != 0) {
                    if (i11 != 1) {
                        if (i11 == 2) {
                            char[] cArr = f32856d;
                            if (i13 < cArr.length) {
                                char c11 = cArr[i13];
                                if (z10) {
                                    iVar.b((char) (c11 + 128));
                                    z10 = false;
                                } else {
                                    iVar.b(c11);
                                }
                            } else if (i13 == 27) {
                                set.add(Integer.valueOf(iVar.i()));
                                iVar.b((char) 29);
                            } else {
                                if (i13 != 30) {
                                    throw FormatException.getFormatInstance();
                                }
                                z10 = true;
                            }
                        } else {
                            if (i11 != 3) {
                                throw FormatException.getFormatInstance();
                            }
                            char[] cArr2 = f32857e;
                            if (i13 >= cArr2.length) {
                                throw FormatException.getFormatInstance();
                            }
                            char c12 = cArr2[i13];
                            if (z10) {
                                iVar.b((char) (c12 + 128));
                                z10 = false;
                            } else {
                                iVar.b(c12);
                            }
                        }
                    } else if (z10) {
                        iVar.b((char) (i13 + 128));
                        z10 = false;
                    } else {
                        iVar.b((char) i13);
                    }
                    i11 = 0;
                } else if (i13 < 3) {
                    i11 = i13 + 1;
                } else {
                    char[] cArr3 = f32855c;
                    if (i13 >= cArr3.length) {
                        throw FormatException.getFormatInstance();
                    }
                    char c13 = cArr3[i13];
                    if (z10) {
                        iVar.b((char) (c13 + 128));
                        z10 = false;
                    } else {
                        iVar.b(c13);
                    }
                }
            }
            if (cVar.a() <= 0) {
                return;
            }
        }
    }

    private static void i(int i11, int i12, int[] iArr) {
        int i13 = ((i11 << 8) + i12) - 1;
        int i14 = i13 / 1600;
        iArr[0] = i14;
        int i15 = i13 - (i14 * 1600);
        int i16 = i15 / 40;
        iArr[1] = i16;
        iArr[2] = i15 - (i16 * 40);
    }

    private static int j(int i11, int i12) {
        int i13 = i11 - (((i12 * 149) % 255) + 1);
        return i13 >= 0 ? i13 : i13 + 256;
    }
}
