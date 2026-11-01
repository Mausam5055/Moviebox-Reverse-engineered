package androidx.datastore.preferences.protobuf;

import com.cloud.tmc.kernel.constants.TmcConstants;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
abstract class Utf8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final b f8727a;

    static class UnpairedSurrogateException extends IllegalArgumentException {
        UnpairedSurrogateException(int i11, int i12) {
            super("Unpaired surrogate at index " + i11 + " of " + i12);
        }
    }

    private static class a {
        /* JADX INFO: Access modifiers changed from: private */
        public static void h(byte b11, byte b12, byte b13, byte b14, char[] cArr, int i11) throws InvalidProtocolBufferException {
            if (m(b12) || (((b11 << 28) + (b12 + 112)) >> 30) != 0 || m(b13) || m(b14)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            int iR = ((b11 & 7) << 18) | (r(b12) << 12) | (r(b13) << 6) | r(b14);
            cArr[i11] = l(iR);
            cArr[i11 + 1] = q(iR);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void i(byte b11, char[] cArr, int i11) {
            cArr[i11] = (char) b11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void j(byte b11, byte b12, byte b13, char[] cArr, int i11) throws InvalidProtocolBufferException {
            if (m(b12) || ((b11 == -32 && b12 < -96) || ((b11 == -19 && b12 >= -96) || m(b13)))) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            cArr[i11] = (char) (((b11 & 15) << 12) | (r(b12) << 6) | r(b13));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void k(byte b11, byte b12, char[] cArr, int i11) throws InvalidProtocolBufferException {
            if (b11 < -62 || m(b12)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            cArr[i11] = (char) (((b11 & 31) << 6) | r(b12));
        }

        private static char l(int i11) {
            return (char) ((i11 >>> 10) + okio.Utf8.HIGH_SURROGATE_HEADER);
        }

        private static boolean m(byte b11) {
            return b11 > -65;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean n(byte b11) {
            return b11 >= 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean o(byte b11) {
            return b11 < -16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean p(byte b11) {
            return b11 < -32;
        }

        private static char q(int i11) {
            return (char) ((i11 & 1023) + okio.Utf8.LOG_SURROGATE_HEADER);
        }

        private static int r(byte b11) {
            return b11 & okio.Utf8.REPLACEMENT_BYTE;
        }
    }

    static abstract class b {
        b() {
        }

        private static int j(ByteBuffer byteBuffer, int i11, int i12) {
            int iL = i11 + Utf8.l(byteBuffer, i11, i12);
            while (iL < i12) {
                int i13 = iL + 1;
                byte b11 = byteBuffer.get(iL);
                if (b11 >= 0) {
                    iL = i13;
                } else if (b11 < -32) {
                    if (i13 >= i12) {
                        return b11;
                    }
                    if (b11 < -62 || byteBuffer.get(i13) > -65) {
                        return -1;
                    }
                    iL += 2;
                } else {
                    if (b11 >= -16) {
                        if (i13 >= i12 - 2) {
                            return Utf8.p(byteBuffer, b11, i13, i12 - i13);
                        }
                        int i14 = iL + 2;
                        byte b12 = byteBuffer.get(i13);
                        if (b12 <= -65 && (((b11 << 28) + (b12 + 112)) >> 30) == 0) {
                            int i15 = iL + 3;
                            if (byteBuffer.get(i14) <= -65) {
                                iL += 4;
                                if (byteBuffer.get(i15) > -65) {
                                }
                            }
                        }
                        return -1;
                    }
                    if (i13 >= i12 - 1) {
                        return Utf8.p(byteBuffer, b11, i13, i12 - i13);
                    }
                    int i16 = iL + 2;
                    byte b13 = byteBuffer.get(i13);
                    if (b13 > -65 || ((b11 == -32 && b13 < -96) || ((b11 == -19 && b13 >= -96) || byteBuffer.get(i16) > -65))) {
                        return -1;
                    }
                    iL += 3;
                }
            }
            return 0;
        }

        final String a(ByteBuffer byteBuffer, int i11, int i12) {
            if (byteBuffer.hasArray()) {
                return b(byteBuffer.array(), byteBuffer.arrayOffset() + i11, i12);
            }
            return byteBuffer.isDirect() ? d(byteBuffer, i11, i12) : c(byteBuffer, i11, i12);
        }

        abstract String b(byte[] bArr, int i11, int i12);

        final String c(ByteBuffer byteBuffer, int i11, int i12) throws InvalidProtocolBufferException {
            if ((i11 | i12 | ((byteBuffer.limit() - i11) - i12)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i11), Integer.valueOf(i12)));
            }
            int i13 = i11 + i12;
            char[] cArr = new char[i12];
            int i14 = 0;
            while (i11 < i13) {
                byte b11 = byteBuffer.get(i11);
                if (!a.n(b11)) {
                    break;
                }
                i11++;
                a.i(b11, cArr, i14);
                i14++;
            }
            int i15 = i14;
            while (i11 < i13) {
                int i16 = i11 + 1;
                byte b12 = byteBuffer.get(i11);
                if (a.n(b12)) {
                    int i17 = i15 + 1;
                    a.i(b12, cArr, i15);
                    while (i16 < i13) {
                        byte b13 = byteBuffer.get(i16);
                        if (!a.n(b13)) {
                            break;
                        }
                        i16++;
                        a.i(b13, cArr, i17);
                        i17++;
                    }
                    i15 = i17;
                    i11 = i16;
                } else if (a.p(b12)) {
                    if (i16 >= i13) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    i11 += 2;
                    a.k(b12, byteBuffer.get(i16), cArr, i15);
                    i15++;
                } else if (a.o(b12)) {
                    if (i16 >= i13 - 1) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    int i18 = i11 + 2;
                    i11 += 3;
                    a.j(b12, byteBuffer.get(i16), byteBuffer.get(i18), cArr, i15);
                    i15++;
                } else {
                    if (i16 >= i13 - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    byte b14 = byteBuffer.get(i16);
                    int i19 = i11 + 3;
                    byte b15 = byteBuffer.get(i11 + 2);
                    i11 += 4;
                    a.h(b12, b14, b15, byteBuffer.get(i19), cArr, i15);
                    i15 += 2;
                }
            }
            return new String(cArr, 0, i15);
        }

        abstract String d(ByteBuffer byteBuffer, int i11, int i12);

        abstract int e(String str, byte[] bArr, int i11, int i12);

        final boolean f(ByteBuffer byteBuffer, int i11, int i12) {
            return h(0, byteBuffer, i11, i12) == 0;
        }

        final boolean g(byte[] bArr, int i11, int i12) {
            return i(0, bArr, i11, i12) == 0;
        }

        final int h(int i11, ByteBuffer byteBuffer, int i12, int i13) {
            if (!byteBuffer.hasArray()) {
                return byteBuffer.isDirect() ? l(i11, byteBuffer, i12, i13) : k(i11, byteBuffer, i12, i13);
            }
            int iArrayOffset = byteBuffer.arrayOffset();
            return i(i11, byteBuffer.array(), i12 + iArrayOffset, iArrayOffset + i13);
        }

        abstract int i(int i11, byte[] bArr, int i12, int i13);

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0017, code lost:
        
            if (r8.get(r9) > (-65)) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x004c, code lost:
        
            if (r8.get(r9) > (-65)) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x008f, code lost:
        
            if (r8.get(r7) > (-65)) goto L53;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        final int k(int i11, ByteBuffer byteBuffer, int i12, int i13) {
            byte b11;
            int i14;
            int i15;
            if (i11 != 0) {
                if (i12 >= i13) {
                    return i11;
                }
                byte b12 = (byte) i11;
                if (b12 < -32) {
                    if (b12 >= -62) {
                        i15 = i12 + 1;
                    }
                    return -1;
                }
                if (b12 < -16) {
                    byte b13 = (byte) (~(i11 >> 8));
                    if (b13 == 0) {
                        int i16 = i12 + 1;
                        byte b14 = byteBuffer.get(i12);
                        if (i16 >= i13) {
                            return Utf8.n(b12, b14);
                        }
                        i12 = i16;
                        b13 = b14;
                    }
                    if (b13 <= -65 && ((b12 != -32 || b13 >= -96) && (b12 != -19 || b13 < -96))) {
                        i15 = i12 + 1;
                    }
                    return -1;
                }
                byte b15 = (byte) (~(i11 >> 8));
                if (b15 == 0) {
                    i14 = i12 + 1;
                    b15 = byteBuffer.get(i12);
                    if (i14 >= i13) {
                        return Utf8.n(b12, b15);
                    }
                    b11 = 0;
                } else {
                    b11 = (byte) (i11 >> 16);
                    i14 = i12;
                }
                if (b11 == 0) {
                    int i17 = i14 + 1;
                    byte b16 = byteBuffer.get(i14);
                    if (i17 >= i13) {
                        return Utf8.o(b12, b15, b16);
                    }
                    b11 = b16;
                    i14 = i17;
                }
                if (b15 <= -65 && (((b12 << 28) + (b15 + 112)) >> 30) == 0 && b11 <= -65) {
                    i12 = i14 + 1;
                }
                return -1;
                i12 = i15;
            }
            return j(byteBuffer, i12, i13);
        }

        abstract int l(int i11, ByteBuffer byteBuffer, int i12, int i13);
    }

    static final class c extends b {
        c() {
        }

        private static int m(byte[] bArr, int i11, int i12) {
            while (i11 < i12 && bArr[i11] >= 0) {
                i11++;
            }
            if (i11 >= i12) {
                return 0;
            }
            return n(bArr, i11, i12);
        }

        private static int n(byte[] bArr, int i11, int i12) {
            while (i11 < i12) {
                int i13 = i11 + 1;
                byte b11 = bArr[i11];
                if (b11 < 0) {
                    if (b11 < -32) {
                        if (i13 >= i12) {
                            return b11;
                        }
                        if (b11 >= -62) {
                            i11 += 2;
                            if (bArr[i13] > -65) {
                            }
                        }
                        return -1;
                    }
                    if (b11 >= -16) {
                        if (i13 >= i12 - 2) {
                            return Utf8.q(bArr, i13, i12);
                        }
                        int i14 = i11 + 2;
                        byte b12 = bArr[i13];
                        if (b12 <= -65 && (((b11 << 28) + (b12 + 112)) >> 30) == 0) {
                            int i15 = i11 + 3;
                            if (bArr[i14] <= -65) {
                                i11 += 4;
                                if (bArr[i15] > -65) {
                                }
                            }
                        }
                        return -1;
                    }
                    if (i13 >= i12 - 1) {
                        return Utf8.q(bArr, i13, i12);
                    }
                    int i16 = i11 + 2;
                    byte b13 = bArr[i13];
                    if (b13 <= -65 && ((b11 != -32 || b13 >= -96) && (b11 != -19 || b13 < -96))) {
                        i11 += 3;
                        if (bArr[i16] > -65) {
                        }
                    }
                    return -1;
                }
                i11 = i13;
            }
            return 0;
        }

        @Override // androidx.datastore.preferences.protobuf.Utf8.b
        String b(byte[] bArr, int i11, int i12) throws InvalidProtocolBufferException {
            if ((i11 | i12 | ((bArr.length - i11) - i12)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i11), Integer.valueOf(i12)));
            }
            int i13 = i11 + i12;
            char[] cArr = new char[i12];
            int i14 = 0;
            while (i11 < i13) {
                byte b11 = bArr[i11];
                if (!a.n(b11)) {
                    break;
                }
                i11++;
                a.i(b11, cArr, i14);
                i14++;
            }
            int i15 = i14;
            while (i11 < i13) {
                int i16 = i11 + 1;
                byte b12 = bArr[i11];
                if (a.n(b12)) {
                    int i17 = i15 + 1;
                    a.i(b12, cArr, i15);
                    while (i16 < i13) {
                        byte b13 = bArr[i16];
                        if (!a.n(b13)) {
                            break;
                        }
                        i16++;
                        a.i(b13, cArr, i17);
                        i17++;
                    }
                    i15 = i17;
                    i11 = i16;
                } else if (a.p(b12)) {
                    if (i16 >= i13) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    i11 += 2;
                    a.k(b12, bArr[i16], cArr, i15);
                    i15++;
                } else if (a.o(b12)) {
                    if (i16 >= i13 - 1) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    int i18 = i11 + 2;
                    i11 += 3;
                    a.j(b12, bArr[i16], bArr[i18], cArr, i15);
                    i15++;
                } else {
                    if (i16 >= i13 - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    byte b14 = bArr[i16];
                    int i19 = i11 + 3;
                    byte b15 = bArr[i11 + 2];
                    i11 += 4;
                    a.h(b12, b14, b15, bArr[i19], cArr, i15);
                    i15 += 2;
                }
            }
            return new String(cArr, 0, i15);
        }

        @Override // androidx.datastore.preferences.protobuf.Utf8.b
        String d(ByteBuffer byteBuffer, int i11, int i12) {
            return c(byteBuffer, i11, i12);
        }

        @Override // androidx.datastore.preferences.protobuf.Utf8.b
        int e(String str, byte[] bArr, int i11, int i12) {
            int i13;
            int i14;
            char cCharAt;
            int length = str.length();
            int i15 = i12 + i11;
            int i16 = 0;
            while (i16 < length && (i14 = i16 + i11) < i15 && (cCharAt = str.charAt(i16)) < 128) {
                bArr[i14] = (byte) cCharAt;
                i16++;
            }
            if (i16 == length) {
                return i11 + length;
            }
            int i17 = i11 + i16;
            while (i16 < length) {
                char cCharAt2 = str.charAt(i16);
                if (cCharAt2 < 128 && i17 < i15) {
                    bArr[i17] = (byte) cCharAt2;
                    i17++;
                } else if (cCharAt2 < 2048 && i17 <= i15 - 2) {
                    int i18 = i17 + 1;
                    bArr[i17] = (byte) ((cCharAt2 >>> 6) | 960);
                    i17 += 2;
                    bArr[i18] = (byte) ((cCharAt2 & '?') | 128);
                } else {
                    if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || i17 > i15 - 3) {
                        if (i17 > i15 - 4) {
                            if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i13 = i16 + 1) == str.length() || !Character.isSurrogatePair(cCharAt2, str.charAt(i13)))) {
                                throw new UnpairedSurrogateException(i16, length);
                            }
                            throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + i17);
                        }
                        int i19 = i16 + 1;
                        if (i19 != str.length()) {
                            char cCharAt3 = str.charAt(i19);
                            if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                bArr[i17] = (byte) ((codePoint >>> 18) | 240);
                                bArr[i17 + 1] = (byte) (((codePoint >>> 12) & 63) | 128);
                                int i20 = i17 + 3;
                                bArr[i17 + 2] = (byte) (((codePoint >>> 6) & 63) | 128);
                                i17 += 4;
                                bArr[i20] = (byte) ((codePoint & 63) | 128);
                                i16 = i19;
                            } else {
                                i16 = i19;
                            }
                        }
                        throw new UnpairedSurrogateException(i16 - 1, length);
                    }
                    bArr[i17] = (byte) ((cCharAt2 >>> '\f') | 480);
                    int i21 = i17 + 2;
                    bArr[i17 + 1] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                    i17 += 3;
                    bArr[i21] = (byte) ((cCharAt2 & '?') | 128);
                }
                i16++;
            }
            return i17;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
        
            if (r8[r9] > (-65)) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0046, code lost:
        
            if (r8[r9] > (-65)) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x0083, code lost:
        
            if (r8[r7] > (-65)) goto L53;
         */
        @Override // androidx.datastore.preferences.protobuf.Utf8.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        int i(int i11, byte[] bArr, int i12, int i13) {
            byte b11;
            int i14;
            int i15;
            if (i11 != 0) {
                if (i12 >= i13) {
                    return i11;
                }
                byte b12 = (byte) i11;
                if (b12 < -32) {
                    if (b12 >= -62) {
                        i15 = i12 + 1;
                    }
                    return -1;
                }
                if (b12 < -16) {
                    byte b13 = (byte) (~(i11 >> 8));
                    if (b13 == 0) {
                        int i16 = i12 + 1;
                        byte b14 = bArr[i12];
                        if (i16 >= i13) {
                            return Utf8.n(b12, b14);
                        }
                        i12 = i16;
                        b13 = b14;
                    }
                    if (b13 <= -65 && ((b12 != -32 || b13 >= -96) && (b12 != -19 || b13 < -96))) {
                        i15 = i12 + 1;
                    }
                    return -1;
                }
                byte b15 = (byte) (~(i11 >> 8));
                if (b15 == 0) {
                    i14 = i12 + 1;
                    b15 = bArr[i12];
                    if (i14 >= i13) {
                        return Utf8.n(b12, b15);
                    }
                    b11 = 0;
                } else {
                    b11 = (byte) (i11 >> 16);
                    i14 = i12;
                }
                if (b11 == 0) {
                    int i17 = i14 + 1;
                    byte b16 = bArr[i14];
                    if (i17 >= i13) {
                        return Utf8.o(b12, b15, b16);
                    }
                    b11 = b16;
                    i14 = i17;
                }
                if (b15 <= -65 && (((b12 << 28) + (b15 + 112)) >> 30) == 0 && b11 <= -65) {
                    i12 = i14 + 1;
                }
                return -1;
                i12 = i15;
            }
            return m(bArr, i12, i13);
        }

        @Override // androidx.datastore.preferences.protobuf.Utf8.b
        int l(int i11, ByteBuffer byteBuffer, int i12, int i13) {
            return k(i11, byteBuffer, i12, i13);
        }
    }

    static final class d extends b {
        d() {
        }

        static boolean m() {
            return k1.I() && k1.J();
        }

        private static int n(long j11, int i11) {
            int iP = p(j11, i11);
            long j12 = j11 + ((long) iP);
            int i12 = i11 - iP;
            while (true) {
                byte bW = 0;
                while (i12 > 0) {
                    long j13 = j12 + 1;
                    bW = k1.w(j12);
                    if (bW < 0) {
                        j12 = j13;
                        break;
                    }
                    i12--;
                    j12 = j13;
                }
                if (i12 == 0) {
                    return 0;
                }
                int i13 = i12 - 1;
                if (bW < -32) {
                    if (i13 == 0) {
                        return bW;
                    }
                    i12 -= 2;
                    if (bW >= -62) {
                        long j14 = 1 + j12;
                        if (k1.w(j12) <= -65) {
                            j12 = j14;
                        }
                    }
                    return -1;
                }
                if (bW >= -16) {
                    if (i13 < 3) {
                        return r(j12, bW, i13);
                    }
                    i12 -= 4;
                    long j15 = 1 + j12;
                    byte bW2 = k1.w(j12);
                    if (bW2 <= -65 && (((bW << 28) + (bW2 + 112)) >> 30) == 0) {
                        long j16 = 2 + j12;
                        if (k1.w(j15) <= -65) {
                            j12 += 3;
                            if (k1.w(j16) > -65) {
                            }
                        }
                    }
                    return -1;
                }
                if (i13 < 2) {
                    return r(j12, bW, i13);
                }
                i12 -= 3;
                long j17 = 1 + j12;
                byte bW3 = k1.w(j12);
                if (bW3 <= -65 && ((bW != -32 || bW3 >= -96) && (bW != -19 || bW3 < -96))) {
                    j12 += 2;
                    if (k1.w(j17) > -65) {
                    }
                }
                return -1;
            }
        }

        private static int o(byte[] bArr, long j11, int i11) {
            int iQ = q(bArr, j11, i11);
            int i12 = i11 - iQ;
            long j12 = j11 + ((long) iQ);
            while (true) {
                byte bX = 0;
                while (i12 > 0) {
                    long j13 = j12 + 1;
                    bX = k1.x(bArr, j12);
                    if (bX < 0) {
                        j12 = j13;
                        break;
                    }
                    i12--;
                    j12 = j13;
                }
                if (i12 == 0) {
                    return 0;
                }
                int i13 = i12 - 1;
                if (bX < -32) {
                    if (i13 == 0) {
                        return bX;
                    }
                    i12 -= 2;
                    if (bX >= -62) {
                        long j14 = 1 + j12;
                        if (k1.x(bArr, j12) <= -65) {
                            j12 = j14;
                        }
                    }
                    return -1;
                }
                if (bX >= -16) {
                    if (i13 < 3) {
                        return s(bArr, bX, j12, i13);
                    }
                    i12 -= 4;
                    long j15 = 1 + j12;
                    byte bX2 = k1.x(bArr, j12);
                    if (bX2 <= -65 && (((bX << 28) + (bX2 + 112)) >> 30) == 0) {
                        long j16 = 2 + j12;
                        if (k1.x(bArr, j15) <= -65) {
                            j12 += 3;
                            if (k1.x(bArr, j16) > -65) {
                            }
                        }
                    }
                    return -1;
                }
                if (i13 < 2) {
                    return s(bArr, bX, j12, i13);
                }
                i12 -= 3;
                long j17 = 1 + j12;
                byte bX3 = k1.x(bArr, j12);
                if (bX3 <= -65 && ((bX != -32 || bX3 >= -96) && (bX != -19 || bX3 < -96))) {
                    j12 += 2;
                    if (k1.x(bArr, j17) > -65) {
                    }
                }
                return -1;
            }
        }

        private static int p(long j11, int i11) {
            if (i11 < 16) {
                return 0;
            }
            int i12 = (int) ((-j11) & 7);
            int i13 = i12;
            while (i13 > 0) {
                long j12 = 1 + j11;
                if (k1.w(j11) < 0) {
                    return i12 - i13;
                }
                i13--;
                j11 = j12;
            }
            int i14 = i11 - i12;
            while (i14 >= 8 && (k1.D(j11) & (-9187201950435737472L)) == 0) {
                j11 += 8;
                i14 -= 8;
            }
            return i11 - i14;
        }

        private static int q(byte[] bArr, long j11, int i11) {
            int i12 = 0;
            if (i11 < 16) {
                return 0;
            }
            int i13 = 8 - (((int) j11) & 7);
            while (i12 < i13) {
                long j12 = 1 + j11;
                if (k1.x(bArr, j11) < 0) {
                    return i12;
                }
                i12++;
                j11 = j12;
            }
            while (true) {
                int i14 = i12 + 8;
                if (i14 > i11 || (k1.E(bArr, k1.f8856h + j11) & (-9187201950435737472L)) != 0) {
                    break;
                }
                j11 += 8;
                i12 = i14;
            }
            while (i12 < i11) {
                long j13 = j11 + 1;
                if (k1.x(bArr, j11) < 0) {
                    return i12;
                }
                i12++;
                j11 = j13;
            }
            return i11;
        }

        private static int r(long j11, int i11, int i12) {
            if (i12 == 0) {
                return Utf8.m(i11);
            }
            if (i12 == 1) {
                return Utf8.n(i11, k1.w(j11));
            }
            if (i12 == 2) {
                return Utf8.o(i11, k1.w(j11), k1.w(j11 + 1));
            }
            throw new AssertionError();
        }

        private static int s(byte[] bArr, int i11, long j11, int i12) {
            if (i12 == 0) {
                return Utf8.m(i11);
            }
            if (i12 == 1) {
                return Utf8.n(i11, k1.x(bArr, j11));
            }
            if (i12 == 2) {
                return Utf8.o(i11, k1.x(bArr, j11), k1.x(bArr, j11 + 1));
            }
            throw new AssertionError();
        }

        @Override // androidx.datastore.preferences.protobuf.Utf8.b
        String b(byte[] bArr, int i11, int i12) throws InvalidProtocolBufferException {
            Charset charset = w.f8916b;
            String str = new String(bArr, i11, i12, charset);
            if (str.indexOf(okio.Utf8.REPLACEMENT_CODE_POINT) >= 0 && !Arrays.equals(str.getBytes(charset), Arrays.copyOfRange(bArr, i11, i12 + i11))) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            return str;
        }

        @Override // androidx.datastore.preferences.protobuf.Utf8.b
        String d(ByteBuffer byteBuffer, int i11, int i12) throws InvalidProtocolBufferException {
            if ((i11 | i12 | ((byteBuffer.limit() - i11) - i12)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i11), Integer.valueOf(i12)));
            }
            long jK = k1.k(byteBuffer) + ((long) i11);
            long j11 = ((long) i12) + jK;
            char[] cArr = new char[i12];
            int i13 = 0;
            while (jK < j11) {
                byte bW = k1.w(jK);
                if (!a.n(bW)) {
                    break;
                }
                jK++;
                a.i(bW, cArr, i13);
                i13++;
            }
            while (jK < j11) {
                long j12 = jK + 1;
                byte bW2 = k1.w(jK);
                if (a.n(bW2)) {
                    int i14 = i13 + 1;
                    a.i(bW2, cArr, i13);
                    while (j12 < j11) {
                        byte bW3 = k1.w(j12);
                        if (!a.n(bW3)) {
                            break;
                        }
                        j12++;
                        a.i(bW3, cArr, i14);
                        i14++;
                    }
                    i13 = i14;
                    jK = j12;
                } else if (a.p(bW2)) {
                    if (j12 >= j11) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    jK += 2;
                    a.k(bW2, k1.w(j12), cArr, i13);
                    i13++;
                } else if (a.o(bW2)) {
                    if (j12 >= j11 - 1) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    long j13 = 2 + jK;
                    jK += 3;
                    a.j(bW2, k1.w(j12), k1.w(j13), cArr, i13);
                    i13++;
                } else {
                    if (j12 >= j11 - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    byte bW4 = k1.w(j12);
                    long j14 = jK + 3;
                    byte bW5 = k1.w(2 + jK);
                    jK += 4;
                    a.h(bW2, bW4, bW5, k1.w(j14), cArr, i13);
                    i13 += 2;
                }
            }
            return new String(cArr, 0, i13);
        }

        @Override // androidx.datastore.preferences.protobuf.Utf8.b
        int e(String str, byte[] bArr, int i11, int i12) {
            long j11;
            String str2;
            String str3;
            int i13;
            long j12;
            char cCharAt;
            long j13 = i11;
            long j14 = ((long) i12) + j13;
            int length = str.length();
            String str4 = " at index ";
            String str5 = "Failed writing ";
            if (length > i12 || bArr.length - i12 < i11) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + str.charAt(length - 1) + " at index " + (i11 + i12));
            }
            int i14 = 0;
            while (true) {
                j11 = 1;
                if (i14 >= length || (cCharAt = str.charAt(i14)) >= 128) {
                    break;
                }
                k1.P(bArr, j13, (byte) cCharAt);
                i14++;
                j13 = 1 + j13;
            }
            if (i14 == length) {
                return (int) j13;
            }
            while (i14 < length) {
                char cCharAt2 = str.charAt(i14);
                if (cCharAt2 >= 128 || j13 >= j14) {
                    if (cCharAt2 >= 2048 || j13 > j14 - 2) {
                        str2 = str4;
                        str3 = str5;
                        if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || j13 > j14 - 3) {
                            if (j13 > j14 - 4) {
                                if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i13 = i14 + 1) == length || !Character.isSurrogatePair(cCharAt2, str.charAt(i13)))) {
                                    throw new UnpairedSurrogateException(i14, length);
                                }
                                throw new ArrayIndexOutOfBoundsException(str3 + cCharAt2 + str2 + j13);
                            }
                            int i15 = i14 + 1;
                            if (i15 != length) {
                                char cCharAt3 = str.charAt(i15);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    j12 = 1;
                                    k1.P(bArr, j13, (byte) ((codePoint >>> 18) | 240));
                                    k1.P(bArr, j13 + 1, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j15 = j13 + 3;
                                    k1.P(bArr, j13 + 2, (byte) (((codePoint >>> 6) & 63) | 128));
                                    j13 += 4;
                                    k1.P(bArr, j15, (byte) ((codePoint & 63) | 128));
                                    i14 = i15;
                                } else {
                                    i14 = i15;
                                }
                            }
                            throw new UnpairedSurrogateException(i14 - 1, length);
                        }
                        k1.P(bArr, j13, (byte) ((cCharAt2 >>> '\f') | 480));
                        long j16 = j13 + 2;
                        k1.P(bArr, j13 + 1, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                        j13 += 3;
                        k1.P(bArr, j16, (byte) ((cCharAt2 & '?') | 128));
                    } else {
                        str2 = str4;
                        str3 = str5;
                        long j17 = j13 + j11;
                        k1.P(bArr, j13, (byte) ((cCharAt2 >>> 6) | 960));
                        j13 += 2;
                        k1.P(bArr, j17, (byte) ((cCharAt2 & '?') | 128));
                    }
                    j12 = 1;
                } else {
                    k1.P(bArr, j13, (byte) cCharAt2);
                    str3 = str5;
                    j12 = j11;
                    j13 += j11;
                    str2 = str4;
                }
                i14++;
                str4 = str2;
                str5 = str3;
                j11 = j12;
                j14 = j14;
            }
            return (int) j13;
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x0059, code lost:
        
            if (androidx.datastore.preferences.protobuf.k1.x(r13, r1) > (-65)) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x009e, code lost:
        
            if (androidx.datastore.preferences.protobuf.k1.x(r13, r1) > (-65)) goto L59;
         */
        @Override // androidx.datastore.preferences.protobuf.Utf8.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        int i(int i11, byte[] bArr, int i12, int i13) {
            long j11;
            byte bX = 0;
            if ((i12 | i13 | (bArr.length - i13)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i12), Integer.valueOf(i13)));
            }
            long j12 = i12;
            long j13 = i13;
            if (i11 != 0) {
                if (j12 >= j13) {
                    return i11;
                }
                byte b11 = (byte) i11;
                if (b11 < -32) {
                    if (b11 >= -62) {
                        long j14 = 1 + j12;
                        if (k1.x(bArr, j12) <= -65) {
                            j12 = j14;
                        }
                    }
                    return -1;
                }
                if (b11 < -16) {
                    byte bX2 = (byte) (~(i11 >> 8));
                    if (bX2 == 0) {
                        long j15 = j12 + 1;
                        bX2 = k1.x(bArr, j12);
                        if (j15 >= j13) {
                            return Utf8.n(b11, bX2);
                        }
                        j12 = j15;
                    }
                    if (bX2 <= -65 && ((b11 != -32 || bX2 >= -96) && (b11 != -19 || bX2 < -96))) {
                        j11 = j12 + 1;
                    }
                    return -1;
                }
                byte bX3 = (byte) (~(i11 >> 8));
                if (bX3 == 0) {
                    long j16 = j12 + 1;
                    bX3 = k1.x(bArr, j12);
                    if (j16 >= j13) {
                        return Utf8.n(b11, bX3);
                    }
                    j12 = j16;
                } else {
                    bX = (byte) (i11 >> 16);
                }
                if (bX == 0) {
                    long j17 = j12 + 1;
                    bX = k1.x(bArr, j12);
                    if (j17 >= j13) {
                        return Utf8.o(b11, bX3, bX);
                    }
                    j12 = j17;
                }
                if (bX3 <= -65 && (((b11 << 28) + (bX3 + 112)) >> 30) == 0 && bX <= -65) {
                    j11 = j12 + 1;
                }
                return -1;
                j12 = j11;
            }
            return o(bArr, j12, (int) (j13 - j12));
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x002e, code lost:
        
            if (androidx.datastore.preferences.protobuf.k1.w(r1) > (-65)) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0062, code lost:
        
            if (androidx.datastore.preferences.protobuf.k1.w(r1) > (-65)) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00a3, code lost:
        
            if (androidx.datastore.preferences.protobuf.k1.w(r1) > (-65)) goto L57;
         */
        @Override // androidx.datastore.preferences.protobuf.Utf8.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        int l(int i11, ByteBuffer byteBuffer, int i12, int i13) {
            long j11;
            byte bW = 0;
            if ((i12 | i13 | (byteBuffer.limit() - i13)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i12), Integer.valueOf(i13)));
            }
            long jK = k1.k(byteBuffer) + ((long) i12);
            long j12 = ((long) (i13 - i12)) + jK;
            if (i11 != 0) {
                if (jK >= j12) {
                    return i11;
                }
                byte b11 = (byte) i11;
                if (b11 < -32) {
                    if (b11 >= -62) {
                        j11 = 1 + jK;
                    }
                    return -1;
                }
                if (b11 < -16) {
                    byte bW2 = (byte) (~(i11 >> 8));
                    if (bW2 == 0) {
                        long j13 = jK + 1;
                        bW2 = k1.w(jK);
                        if (j13 >= j12) {
                            return Utf8.n(b11, bW2);
                        }
                        jK = j13;
                    }
                    if (bW2 <= -65 && ((b11 != -32 || bW2 >= -96) && (b11 != -19 || bW2 < -96))) {
                        j11 = 1 + jK;
                    }
                    return -1;
                }
                byte bW3 = (byte) (~(i11 >> 8));
                if (bW3 == 0) {
                    long j14 = jK + 1;
                    bW3 = k1.w(jK);
                    if (j14 >= j12) {
                        return Utf8.n(b11, bW3);
                    }
                    jK = j14;
                } else {
                    bW = (byte) (i11 >> 16);
                }
                if (bW == 0) {
                    long j15 = jK + 1;
                    bW = k1.w(jK);
                    if (j15 >= j12) {
                        return Utf8.o(b11, bW3, bW);
                    }
                    jK = j15;
                }
                if (bW3 <= -65 && (((b11 << 28) + (bW3 + 112)) >> 30) == 0 && bW <= -65) {
                    j11 = 1 + jK;
                }
                return -1;
                jK = j11;
            }
            return n(jK, (int) (j12 - jK));
        }
    }

    static {
        f8727a = (!d.m() || androidx.datastore.preferences.protobuf.d.c()) ? new c() : new d();
    }

    static String g(ByteBuffer byteBuffer, int i11, int i12) {
        return f8727a.a(byteBuffer, i11, i12);
    }

    static String h(byte[] bArr, int i11, int i12) {
        return f8727a.b(bArr, i11, i12);
    }

    static int i(String str, byte[] bArr, int i11, int i12) {
        return f8727a.e(str, bArr, i11, i12);
    }

    static int j(String str) {
        int length = str.length();
        int i11 = 0;
        while (i11 < length && str.charAt(i11) < 128) {
            i11++;
        }
        int iK = length;
        while (i11 < length) {
            char cCharAt = str.charAt(i11);
            if (cCharAt >= 2048) {
                iK += k(str, i11);
                break;
            }
            iK += (127 - cCharAt) >>> 31;
            i11++;
        }
        if (iK >= length) {
            return iK;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (((long) iK) + TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE));
    }

    private static int k(String str, int i11) {
        int length = str.length();
        int i12 = 0;
        while (i11 < length) {
            char cCharAt = str.charAt(i11);
            if (cCharAt < 2048) {
                i12 += (127 - cCharAt) >>> 31;
            } else {
                i12 += 2;
                if (55296 <= cCharAt && cCharAt <= 57343) {
                    if (Character.codePointAt(str, i11) < 65536) {
                        throw new UnpairedSurrogateException(i11, length);
                    }
                    i11++;
                }
            }
            i11++;
        }
        return i12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int l(ByteBuffer byteBuffer, int i11, int i12) {
        int i13 = i12 - 7;
        int i14 = i11;
        while (i14 < i13 && (byteBuffer.getLong(i14) & (-9187201950435737472L)) == 0) {
            i14 += 8;
        }
        return i14 - i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int m(int i11) {
        if (i11 > -12) {
            return -1;
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int n(int i11, int i12) {
        if (i11 > -12 || i12 > -65) {
            return -1;
        }
        return i11 ^ (i12 << 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int o(int i11, int i12, int i13) {
        if (i11 > -12 || i12 > -65 || i13 > -65) {
            return -1;
        }
        return (i11 ^ (i12 << 8)) ^ (i13 << 16);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int p(ByteBuffer byteBuffer, int i11, int i12, int i13) {
        if (i13 == 0) {
            return m(i11);
        }
        if (i13 == 1) {
            return n(i11, byteBuffer.get(i12));
        }
        if (i13 == 2) {
            return o(i11, byteBuffer.get(i12), byteBuffer.get(i12 + 1));
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int q(byte[] bArr, int i11, int i12) {
        byte b11 = bArr[i11 - 1];
        int i13 = i12 - i11;
        if (i13 == 0) {
            return m(b11);
        }
        if (i13 == 1) {
            return n(b11, bArr[i11]);
        }
        if (i13 == 2) {
            return o(b11, bArr[i11], bArr[i11 + 1]);
        }
        throw new AssertionError();
    }

    static boolean r(ByteBuffer byteBuffer) {
        return f8727a.f(byteBuffer, byteBuffer.position(), byteBuffer.remaining());
    }

    static boolean s(byte[] bArr, int i11, int i12) {
        return f8727a.g(bArr, i11, i12);
    }

    static int t(int i11, ByteBuffer byteBuffer, int i12, int i13) {
        return f8727a.h(i11, byteBuffer, i12, i13);
    }

    static int u(int i11, byte[] bArr, int i12, int i13) {
        return f8727a.i(i11, bArr, i12, i13);
    }
}
