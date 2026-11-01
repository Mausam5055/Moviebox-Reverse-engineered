package com.google.protobuf;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class Utf8 {
    private static final long ASCII_MASK_LONG = -9187201950435737472L;
    static final int COMPLETE = 0;
    static final int MALFORMED = -1;
    static final int MAX_BYTES_PER_CHAR = 3;
    private static final int UNSAFE_COUNT_ASCII_THRESHOLD = 16;
    private static final b processor;

    static class UnpairedSurrogateException extends IllegalArgumentException {
        UnpairedSurrogateException(int i11, int i12) {
            super("Unpaired surrogate at index " + i11 + " of " + i12);
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    private static class a {
        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void handleFourBytes(byte b11, byte b12, byte b13, byte b14, char[] cArr, int i11) throws InvalidProtocolBufferException {
            if (isNotTrailingByte(b12) || (((b11 << 28) + (b12 + 112)) >> 30) != 0 || isNotTrailingByte(b13) || isNotTrailingByte(b14)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            int iTrailingByteValue = ((b11 & 7) << 18) | (trailingByteValue(b12) << 12) | (trailingByteValue(b13) << 6) | trailingByteValue(b14);
            cArr[i11] = highSurrogate(iTrailingByteValue);
            cArr[i11 + 1] = lowSurrogate(iTrailingByteValue);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void handleOneByte(byte b11, char[] cArr, int i11) {
            cArr[i11] = (char) b11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void handleThreeBytes(byte b11, byte b12, byte b13, char[] cArr, int i11) throws InvalidProtocolBufferException {
            if (isNotTrailingByte(b12) || ((b11 == -32 && b12 < -96) || ((b11 == -19 && b12 >= -96) || isNotTrailingByte(b13)))) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            cArr[i11] = (char) (((b11 & 15) << 12) | (trailingByteValue(b12) << 6) | trailingByteValue(b13));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void handleTwoBytes(byte b11, byte b12, char[] cArr, int i11) throws InvalidProtocolBufferException {
            if (b11 < -62 || isNotTrailingByte(b12)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            cArr[i11] = (char) (((b11 & 31) << 6) | trailingByteValue(b12));
        }

        private static char highSurrogate(int i11) {
            return (char) ((i11 >>> 10) + okio.Utf8.HIGH_SURROGATE_HEADER);
        }

        private static boolean isNotTrailingByte(byte b11) {
            return b11 > -65;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isOneByte(byte b11) {
            return b11 >= 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isThreeBytes(byte b11) {
            return b11 < -16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isTwoBytes(byte b11) {
            return b11 < -32;
        }

        private static char lowSurrogate(int i11) {
            return (char) ((i11 & 1023) + okio.Utf8.LOG_SURROGATE_HEADER);
        }

        private static int trailingByteValue(byte b11) {
            return b11 & okio.Utf8.REPLACEMENT_BYTE;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static abstract class b {
        b() {
        }

        private static int partialIsValidUtf8(ByteBuffer byteBuffer, int i11, int i12) {
            int iEstimateConsecutiveAscii = i11 + Utf8.estimateConsecutiveAscii(byteBuffer, i11, i12);
            while (iEstimateConsecutiveAscii < i12) {
                int i13 = iEstimateConsecutiveAscii + 1;
                byte b11 = byteBuffer.get(iEstimateConsecutiveAscii);
                if (b11 >= 0) {
                    iEstimateConsecutiveAscii = i13;
                } else if (b11 < -32) {
                    if (i13 >= i12) {
                        return b11;
                    }
                    if (b11 < -62 || byteBuffer.get(i13) > -65) {
                        return -1;
                    }
                    iEstimateConsecutiveAscii += 2;
                } else {
                    if (b11 >= -16) {
                        if (i13 >= i12 - 2) {
                            return Utf8.incompleteStateFor(byteBuffer, b11, i13, i12 - i13);
                        }
                        int i14 = iEstimateConsecutiveAscii + 2;
                        byte b12 = byteBuffer.get(i13);
                        if (b12 <= -65 && (((b11 << 28) + (b12 + 112)) >> 30) == 0) {
                            int i15 = iEstimateConsecutiveAscii + 3;
                            if (byteBuffer.get(i14) <= -65) {
                                iEstimateConsecutiveAscii += 4;
                                if (byteBuffer.get(i15) > -65) {
                                }
                            }
                        }
                        return -1;
                    }
                    if (i13 >= i12 - 1) {
                        return Utf8.incompleteStateFor(byteBuffer, b11, i13, i12 - i13);
                    }
                    int i16 = iEstimateConsecutiveAscii + 2;
                    byte b13 = byteBuffer.get(i13);
                    if (b13 > -65 || ((b11 == -32 && b13 < -96) || ((b11 == -19 && b13 >= -96) || byteBuffer.get(i16) > -65))) {
                        return -1;
                    }
                    iEstimateConsecutiveAscii += 3;
                }
            }
            return 0;
        }

        final String decodeUtf8(ByteBuffer byteBuffer, int i11, int i12) throws InvalidProtocolBufferException {
            if (byteBuffer.hasArray()) {
                return decodeUtf8(byteBuffer.array(), byteBuffer.arrayOffset() + i11, i12);
            }
            return byteBuffer.isDirect() ? decodeUtf8Direct(byteBuffer, i11, i12) : decodeUtf8Default(byteBuffer, i11, i12);
        }

        abstract String decodeUtf8(byte[] bArr, int i11, int i12) throws InvalidProtocolBufferException;

        final String decodeUtf8Default(ByteBuffer byteBuffer, int i11, int i12) throws InvalidProtocolBufferException {
            if ((i11 | i12 | ((byteBuffer.limit() - i11) - i12)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i11), Integer.valueOf(i12)));
            }
            int i13 = i11 + i12;
            char[] cArr = new char[i12];
            int i14 = 0;
            while (i11 < i13) {
                byte b11 = byteBuffer.get(i11);
                if (!a.isOneByte(b11)) {
                    break;
                }
                i11++;
                a.handleOneByte(b11, cArr, i14);
                i14++;
            }
            int i15 = i14;
            while (i11 < i13) {
                int i16 = i11 + 1;
                byte b12 = byteBuffer.get(i11);
                if (a.isOneByte(b12)) {
                    int i17 = i15 + 1;
                    a.handleOneByte(b12, cArr, i15);
                    while (i16 < i13) {
                        byte b13 = byteBuffer.get(i16);
                        if (!a.isOneByte(b13)) {
                            break;
                        }
                        i16++;
                        a.handleOneByte(b13, cArr, i17);
                        i17++;
                    }
                    i15 = i17;
                    i11 = i16;
                } else if (a.isTwoBytes(b12)) {
                    if (i16 >= i13) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    i11 += 2;
                    a.handleTwoBytes(b12, byteBuffer.get(i16), cArr, i15);
                    i15++;
                } else if (a.isThreeBytes(b12)) {
                    if (i16 >= i13 - 1) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    int i18 = i11 + 2;
                    i11 += 3;
                    a.handleThreeBytes(b12, byteBuffer.get(i16), byteBuffer.get(i18), cArr, i15);
                    i15++;
                } else {
                    if (i16 >= i13 - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    byte b14 = byteBuffer.get(i16);
                    int i19 = i11 + 3;
                    byte b15 = byteBuffer.get(i11 + 2);
                    i11 += 4;
                    a.handleFourBytes(b12, b14, b15, byteBuffer.get(i19), cArr, i15);
                    i15 += 2;
                }
            }
            return new String(cArr, 0, i15);
        }

        abstract String decodeUtf8Direct(ByteBuffer byteBuffer, int i11, int i12) throws InvalidProtocolBufferException;

        abstract int encodeUtf8(CharSequence charSequence, byte[] bArr, int i11, int i12);

        final void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) {
            if (byteBuffer.hasArray()) {
                int iArrayOffset = byteBuffer.arrayOffset();
                e0.position(byteBuffer, Utf8.encode(charSequence, byteBuffer.array(), byteBuffer.position() + iArrayOffset, byteBuffer.remaining()) - iArrayOffset);
            } else if (byteBuffer.isDirect()) {
                encodeUtf8Direct(charSequence, byteBuffer);
            } else {
                encodeUtf8Default(charSequence, byteBuffer);
            }
        }

        final void encodeUtf8Default(CharSequence charSequence, ByteBuffer byteBuffer) {
            int length = charSequence.length();
            int iPosition = byteBuffer.position();
            int i11 = 0;
            while (i11 < length) {
                try {
                    char cCharAt = charSequence.charAt(i11);
                    if (cCharAt >= 128) {
                        break;
                    }
                    byteBuffer.put(iPosition + i11, (byte) cCharAt);
                    i11++;
                } catch (IndexOutOfBoundsException unused) {
                }
            }
            if (i11 == length) {
                e0.position(byteBuffer, iPosition + i11);
                return;
            }
            iPosition += i11;
            while (i11 < length) {
                char cCharAt2 = charSequence.charAt(i11);
                if (cCharAt2 < 128) {
                    byteBuffer.put(iPosition, (byte) cCharAt2);
                } else if (cCharAt2 < 2048) {
                    int i12 = iPosition + 1;
                    try {
                        byteBuffer.put(iPosition, (byte) ((cCharAt2 >>> 6) | PsExtractor.AUDIO_STREAM));
                        byteBuffer.put(i12, (byte) ((cCharAt2 & '?') | 128));
                        iPosition = i12;
                    } catch (IndexOutOfBoundsException unused2) {
                        iPosition = i12;
                    }
                } else {
                    if (cCharAt2 >= 55296 && 57343 >= cCharAt2) {
                        int i13 = i11 + 1;
                        if (i13 != length) {
                            try {
                                char cCharAt3 = charSequence.charAt(i13);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    int i14 = iPosition + 1;
                                    try {
                                        byteBuffer.put(iPosition, (byte) ((codePoint >>> 18) | 240));
                                        int i15 = iPosition + 2;
                                        try {
                                            byteBuffer.put(i14, (byte) (((codePoint >>> 12) & 63) | 128));
                                            iPosition += 3;
                                            byteBuffer.put(i15, (byte) (((codePoint >>> 6) & 63) | 128));
                                            byteBuffer.put(iPosition, (byte) ((codePoint & 63) | 128));
                                            i11 = i13;
                                        } catch (IndexOutOfBoundsException unused3) {
                                            i11 = i13;
                                            iPosition = i15;
                                        }
                                    } catch (IndexOutOfBoundsException unused4) {
                                        iPosition = i14;
                                        i11 = i13;
                                    }
                                } else {
                                    i11 = i13;
                                }
                            } catch (IndexOutOfBoundsException unused5) {
                            }
                            i11 = i13;
                            throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(i11) + " at index " + (byteBuffer.position() + Math.max(i11, (iPosition - byteBuffer.position()) + 1)));
                        }
                        throw new UnpairedSurrogateException(i11, length);
                    }
                    int i16 = iPosition + 1;
                    byteBuffer.put(iPosition, (byte) ((cCharAt2 >>> '\f') | 224));
                    iPosition += 2;
                    byteBuffer.put(i16, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                    byteBuffer.put(iPosition, (byte) ((cCharAt2 & '?') | 128));
                }
                i11++;
                iPosition++;
            }
            e0.position(byteBuffer, iPosition);
        }

        abstract void encodeUtf8Direct(CharSequence charSequence, ByteBuffer byteBuffer);

        final boolean isValidUtf8(ByteBuffer byteBuffer, int i11, int i12) {
            return partialIsValidUtf8(0, byteBuffer, i11, i12) == 0;
        }

        final boolean isValidUtf8(byte[] bArr, int i11, int i12) {
            return partialIsValidUtf8(0, bArr, i11, i12) == 0;
        }

        final int partialIsValidUtf8(int i11, ByteBuffer byteBuffer, int i12, int i13) {
            if (!byteBuffer.hasArray()) {
                return byteBuffer.isDirect() ? partialIsValidUtf8Direct(i11, byteBuffer, i12, i13) : partialIsValidUtf8Default(i11, byteBuffer, i12, i13);
            }
            int iArrayOffset = byteBuffer.arrayOffset();
            return partialIsValidUtf8(i11, byteBuffer.array(), i12 + iArrayOffset, iArrayOffset + i13);
        }

        abstract int partialIsValidUtf8(int i11, byte[] bArr, int i12, int i13);

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
        final int partialIsValidUtf8Default(int i11, ByteBuffer byteBuffer, int i12, int i13) {
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
                            return Utf8.incompleteStateFor(b12, b14);
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
                        return Utf8.incompleteStateFor(b12, b15);
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
                        return Utf8.incompleteStateFor(b12, b15, b16);
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
            return partialIsValidUtf8(byteBuffer, i12, i13);
        }

        abstract int partialIsValidUtf8Direct(int i11, ByteBuffer byteBuffer, int i12, int i13);
    }

    /* JADX INFO: loaded from: classes4.dex */
    static final class c extends b {
        c() {
        }

        private static int partialIsValidUtf8(byte[] bArr, int i11, int i12) {
            while (i11 < i12 && bArr[i11] >= 0) {
                i11++;
            }
            if (i11 >= i12) {
                return 0;
            }
            return partialIsValidUtf8NonAscii(bArr, i11, i12);
        }

        private static int partialIsValidUtf8NonAscii(byte[] bArr, int i11, int i12) {
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
                            return Utf8.incompleteStateFor(bArr, i13, i12);
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
                        return Utf8.incompleteStateFor(bArr, i13, i12);
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

        @Override // com.google.protobuf.Utf8.b
        String decodeUtf8(byte[] bArr, int i11, int i12) throws InvalidProtocolBufferException {
            if ((i11 | i12 | ((bArr.length - i11) - i12)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i11), Integer.valueOf(i12)));
            }
            int i13 = i11 + i12;
            char[] cArr = new char[i12];
            int i14 = 0;
            while (i11 < i13) {
                byte b11 = bArr[i11];
                if (!a.isOneByte(b11)) {
                    break;
                }
                i11++;
                a.handleOneByte(b11, cArr, i14);
                i14++;
            }
            int i15 = i14;
            while (i11 < i13) {
                int i16 = i11 + 1;
                byte b12 = bArr[i11];
                if (a.isOneByte(b12)) {
                    int i17 = i15 + 1;
                    a.handleOneByte(b12, cArr, i15);
                    while (i16 < i13) {
                        byte b13 = bArr[i16];
                        if (!a.isOneByte(b13)) {
                            break;
                        }
                        i16++;
                        a.handleOneByte(b13, cArr, i17);
                        i17++;
                    }
                    i15 = i17;
                    i11 = i16;
                } else if (a.isTwoBytes(b12)) {
                    if (i16 >= i13) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    i11 += 2;
                    a.handleTwoBytes(b12, bArr[i16], cArr, i15);
                    i15++;
                } else if (a.isThreeBytes(b12)) {
                    if (i16 >= i13 - 1) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    int i18 = i11 + 2;
                    i11 += 3;
                    a.handleThreeBytes(b12, bArr[i16], bArr[i18], cArr, i15);
                    i15++;
                } else {
                    if (i16 >= i13 - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    byte b14 = bArr[i16];
                    int i19 = i11 + 3;
                    byte b15 = bArr[i11 + 2];
                    i11 += 4;
                    a.handleFourBytes(b12, b14, b15, bArr[i19], cArr, i15);
                    i15 += 2;
                }
            }
            return new String(cArr, 0, i15);
        }

        @Override // com.google.protobuf.Utf8.b
        String decodeUtf8Direct(ByteBuffer byteBuffer, int i11, int i12) throws InvalidProtocolBufferException {
            return decodeUtf8Default(byteBuffer, i11, i12);
        }

        @Override // com.google.protobuf.Utf8.b
        int encodeUtf8(CharSequence charSequence, byte[] bArr, int i11, int i12) {
            int i13;
            int i14;
            char cCharAt;
            int length = charSequence.length();
            int i15 = i12 + i11;
            int i16 = 0;
            while (i16 < length && (i14 = i16 + i11) < i15 && (cCharAt = charSequence.charAt(i16)) < 128) {
                bArr[i14] = (byte) cCharAt;
                i16++;
            }
            if (i16 == length) {
                return i11 + length;
            }
            int i17 = i11 + i16;
            while (i16 < length) {
                char cCharAt2 = charSequence.charAt(i16);
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
                            if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i13 = i16 + 1) == charSequence.length() || !Character.isSurrogatePair(cCharAt2, charSequence.charAt(i13)))) {
                                throw new UnpairedSurrogateException(i16, length);
                            }
                            throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + i17);
                        }
                        int i19 = i16 + 1;
                        if (i19 != charSequence.length()) {
                            char cCharAt3 = charSequence.charAt(i19);
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

        @Override // com.google.protobuf.Utf8.b
        void encodeUtf8Direct(CharSequence charSequence, ByteBuffer byteBuffer) {
            encodeUtf8Default(charSequence, byteBuffer);
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
        @Override // com.google.protobuf.Utf8.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        int partialIsValidUtf8(int i11, byte[] bArr, int i12, int i13) {
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
                            return Utf8.incompleteStateFor(b12, b14);
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
                        return Utf8.incompleteStateFor(b12, b15);
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
                        return Utf8.incompleteStateFor(b12, b15, b16);
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
            return partialIsValidUtf8(bArr, i12, i13);
        }

        @Override // com.google.protobuf.Utf8.b
        int partialIsValidUtf8Direct(int i11, ByteBuffer byteBuffer, int i12, int i13) {
            return partialIsValidUtf8Default(i11, byteBuffer, i12, i13);
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static final class d extends b {
        d() {
        }

        static boolean isAvailable() {
            return s1.hasUnsafeArrayOperations() && s1.hasUnsafeByteBufferOperations();
        }

        private static int partialIsValidUtf8(long j11, int i11) {
            int iUnsafeEstimateConsecutiveAscii = unsafeEstimateConsecutiveAscii(j11, i11);
            long j12 = j11 + ((long) iUnsafeEstimateConsecutiveAscii);
            int i12 = i11 - iUnsafeEstimateConsecutiveAscii;
            while (true) {
                byte b11 = 0;
                while (i12 > 0) {
                    long j13 = j12 + 1;
                    b11 = s1.getByte(j12);
                    if (b11 < 0) {
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
                if (b11 < -32) {
                    if (i13 == 0) {
                        return b11;
                    }
                    i12 -= 2;
                    if (b11 >= -62) {
                        long j14 = 1 + j12;
                        if (s1.getByte(j12) <= -65) {
                            j12 = j14;
                        }
                    }
                    return -1;
                }
                if (b11 >= -16) {
                    if (i13 < 3) {
                        return unsafeIncompleteStateFor(j12, b11, i13);
                    }
                    i12 -= 4;
                    long j15 = 1 + j12;
                    byte b12 = s1.getByte(j12);
                    if (b12 <= -65 && (((b11 << 28) + (b12 + 112)) >> 30) == 0) {
                        long j16 = 2 + j12;
                        if (s1.getByte(j15) <= -65) {
                            j12 += 3;
                            if (s1.getByte(j16) > -65) {
                            }
                        }
                    }
                    return -1;
                }
                if (i13 < 2) {
                    return unsafeIncompleteStateFor(j12, b11, i13);
                }
                i12 -= 3;
                long j17 = 1 + j12;
                byte b13 = s1.getByte(j12);
                if (b13 <= -65 && ((b11 != -32 || b13 >= -96) && (b11 != -19 || b13 < -96))) {
                    j12 += 2;
                    if (s1.getByte(j17) > -65) {
                    }
                }
                return -1;
            }
        }

        private static int partialIsValidUtf8(byte[] bArr, long j11, int i11) {
            int iUnsafeEstimateConsecutiveAscii = unsafeEstimateConsecutiveAscii(bArr, j11, i11);
            int i12 = i11 - iUnsafeEstimateConsecutiveAscii;
            long j12 = j11 + ((long) iUnsafeEstimateConsecutiveAscii);
            while (true) {
                byte b11 = 0;
                while (i12 > 0) {
                    long j13 = j12 + 1;
                    b11 = s1.getByte(bArr, j12);
                    if (b11 < 0) {
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
                if (b11 < -32) {
                    if (i13 == 0) {
                        return b11;
                    }
                    i12 -= 2;
                    if (b11 >= -62) {
                        long j14 = 1 + j12;
                        if (s1.getByte(bArr, j12) <= -65) {
                            j12 = j14;
                        }
                    }
                    return -1;
                }
                if (b11 >= -16) {
                    if (i13 < 3) {
                        return unsafeIncompleteStateFor(bArr, b11, j12, i13);
                    }
                    i12 -= 4;
                    long j15 = 1 + j12;
                    byte b12 = s1.getByte(bArr, j12);
                    if (b12 <= -65 && (((b11 << 28) + (b12 + 112)) >> 30) == 0) {
                        long j16 = 2 + j12;
                        if (s1.getByte(bArr, j15) <= -65) {
                            j12 += 3;
                            if (s1.getByte(bArr, j16) > -65) {
                            }
                        }
                    }
                    return -1;
                }
                if (i13 < 2) {
                    return unsafeIncompleteStateFor(bArr, b11, j12, i13);
                }
                i12 -= 3;
                long j17 = 1 + j12;
                byte b13 = s1.getByte(bArr, j12);
                if (b13 <= -65 && ((b11 != -32 || b13 >= -96) && (b11 != -19 || b13 < -96))) {
                    j12 += 2;
                    if (s1.getByte(bArr, j17) > -65) {
                    }
                }
                return -1;
            }
        }

        private static int unsafeEstimateConsecutiveAscii(long j11, int i11) {
            if (i11 < 16) {
                return 0;
            }
            int i12 = (int) ((-j11) & 7);
            int i13 = i12;
            while (i13 > 0) {
                long j12 = 1 + j11;
                if (s1.getByte(j11) < 0) {
                    return i12 - i13;
                }
                i13--;
                j11 = j12;
            }
            int i14 = i11 - i12;
            while (i14 >= 8 && (s1.getLong(j11) & Utf8.ASCII_MASK_LONG) == 0) {
                j11 += 8;
                i14 -= 8;
            }
            return i11 - i14;
        }

        private static int unsafeEstimateConsecutiveAscii(byte[] bArr, long j11, int i11) {
            int i12 = 0;
            if (i11 < 16) {
                return 0;
            }
            int i13 = 8 - (((int) j11) & 7);
            while (i12 < i13) {
                long j12 = 1 + j11;
                if (s1.getByte(bArr, j11) < 0) {
                    return i12;
                }
                i12++;
                j11 = j12;
            }
            while (true) {
                int i14 = i12 + 8;
                if (i14 > i11 || (s1.getLong((Object) bArr, s1.BYTE_ARRAY_BASE_OFFSET + j11) & Utf8.ASCII_MASK_LONG) != 0) {
                    break;
                }
                j11 += 8;
                i12 = i14;
            }
            while (i12 < i11) {
                long j13 = j11 + 1;
                if (s1.getByte(bArr, j11) < 0) {
                    return i12;
                }
                i12++;
                j11 = j13;
            }
            return i11;
        }

        private static int unsafeIncompleteStateFor(long j11, int i11, int i12) {
            if (i12 == 0) {
                return Utf8.incompleteStateFor(i11);
            }
            if (i12 == 1) {
                return Utf8.incompleteStateFor(i11, s1.getByte(j11));
            }
            if (i12 == 2) {
                return Utf8.incompleteStateFor(i11, s1.getByte(j11), s1.getByte(j11 + 1));
            }
            throw new AssertionError();
        }

        private static int unsafeIncompleteStateFor(byte[] bArr, int i11, long j11, int i12) {
            if (i12 == 0) {
                return Utf8.incompleteStateFor(i11);
            }
            if (i12 == 1) {
                return Utf8.incompleteStateFor(i11, s1.getByte(bArr, j11));
            }
            if (i12 == 2) {
                return Utf8.incompleteStateFor(i11, s1.getByte(bArr, j11), s1.getByte(bArr, j11 + 1));
            }
            throw new AssertionError();
        }

        @Override // com.google.protobuf.Utf8.b
        String decodeUtf8(byte[] bArr, int i11, int i12) throws InvalidProtocolBufferException {
            Charset charset = y.UTF_8;
            String str = new String(bArr, i11, i12, charset);
            if (str.contains("�") && !Arrays.equals(str.getBytes(charset), Arrays.copyOfRange(bArr, i11, i12 + i11))) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            return str;
        }

        @Override // com.google.protobuf.Utf8.b
        String decodeUtf8Direct(ByteBuffer byteBuffer, int i11, int i12) throws InvalidProtocolBufferException {
            if ((i11 | i12 | ((byteBuffer.limit() - i11) - i12)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i11), Integer.valueOf(i12)));
            }
            long jAddressOffset = s1.addressOffset(byteBuffer) + ((long) i11);
            long j11 = ((long) i12) + jAddressOffset;
            char[] cArr = new char[i12];
            int i13 = 0;
            while (jAddressOffset < j11) {
                byte b11 = s1.getByte(jAddressOffset);
                if (!a.isOneByte(b11)) {
                    break;
                }
                jAddressOffset++;
                a.handleOneByte(b11, cArr, i13);
                i13++;
            }
            while (jAddressOffset < j11) {
                long j12 = jAddressOffset + 1;
                byte b12 = s1.getByte(jAddressOffset);
                if (a.isOneByte(b12)) {
                    int i14 = i13 + 1;
                    a.handleOneByte(b12, cArr, i13);
                    while (j12 < j11) {
                        byte b13 = s1.getByte(j12);
                        if (!a.isOneByte(b13)) {
                            break;
                        }
                        j12++;
                        a.handleOneByte(b13, cArr, i14);
                        i14++;
                    }
                    i13 = i14;
                    jAddressOffset = j12;
                } else if (a.isTwoBytes(b12)) {
                    if (j12 >= j11) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    jAddressOffset += 2;
                    a.handleTwoBytes(b12, s1.getByte(j12), cArr, i13);
                    i13++;
                } else if (a.isThreeBytes(b12)) {
                    if (j12 >= j11 - 1) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    long j13 = 2 + jAddressOffset;
                    jAddressOffset += 3;
                    a.handleThreeBytes(b12, s1.getByte(j12), s1.getByte(j13), cArr, i13);
                    i13++;
                } else {
                    if (j12 >= j11 - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    byte b14 = s1.getByte(j12);
                    long j14 = jAddressOffset + 3;
                    byte b15 = s1.getByte(2 + jAddressOffset);
                    jAddressOffset += 4;
                    a.handleFourBytes(b12, b14, b15, s1.getByte(j14), cArr, i13);
                    i13 += 2;
                }
            }
            return new String(cArr, 0, i13);
        }

        @Override // com.google.protobuf.Utf8.b
        int encodeUtf8(CharSequence charSequence, byte[] bArr, int i11, int i12) {
            long j11;
            String str;
            String str2;
            int i13;
            long j12;
            char cCharAt;
            long j13 = i11;
            long j14 = ((long) i12) + j13;
            int length = charSequence.length();
            String str3 = " at index ";
            String str4 = "Failed writing ";
            if (length > i12 || bArr.length - i12 < i11) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(length - 1) + " at index " + (i11 + i12));
            }
            int i14 = 0;
            while (true) {
                j11 = 1;
                if (i14 >= length || (cCharAt = charSequence.charAt(i14)) >= 128) {
                    break;
                }
                s1.putByte(bArr, j13, (byte) cCharAt);
                i14++;
                j13 = 1 + j13;
            }
            if (i14 == length) {
                return (int) j13;
            }
            while (i14 < length) {
                char cCharAt2 = charSequence.charAt(i14);
                if (cCharAt2 >= 128 || j13 >= j14) {
                    if (cCharAt2 >= 2048 || j13 > j14 - 2) {
                        str = str3;
                        str2 = str4;
                        if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || j13 > j14 - 3) {
                            if (j13 > j14 - 4) {
                                if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i13 = i14 + 1) == length || !Character.isSurrogatePair(cCharAt2, charSequence.charAt(i13)))) {
                                    throw new UnpairedSurrogateException(i14, length);
                                }
                                throw new ArrayIndexOutOfBoundsException(str2 + cCharAt2 + str + j13);
                            }
                            int i15 = i14 + 1;
                            if (i15 != length) {
                                char cCharAt3 = charSequence.charAt(i15);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    j12 = 1;
                                    s1.putByte(bArr, j13, (byte) ((codePoint >>> 18) | 240));
                                    s1.putByte(bArr, j13 + 1, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j15 = j13 + 3;
                                    s1.putByte(bArr, j13 + 2, (byte) (((codePoint >>> 6) & 63) | 128));
                                    j13 += 4;
                                    s1.putByte(bArr, j15, (byte) ((codePoint & 63) | 128));
                                    i14 = i15;
                                } else {
                                    i14 = i15;
                                }
                            }
                            throw new UnpairedSurrogateException(i14 - 1, length);
                        }
                        s1.putByte(bArr, j13, (byte) ((cCharAt2 >>> '\f') | 480));
                        long j16 = j13 + 2;
                        s1.putByte(bArr, j13 + 1, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                        j13 += 3;
                        s1.putByte(bArr, j16, (byte) ((cCharAt2 & '?') | 128));
                    } else {
                        str = str3;
                        str2 = str4;
                        long j17 = j13 + j11;
                        s1.putByte(bArr, j13, (byte) ((cCharAt2 >>> 6) | 960));
                        j13 += 2;
                        s1.putByte(bArr, j17, (byte) ((cCharAt2 & '?') | 128));
                    }
                    j12 = 1;
                } else {
                    s1.putByte(bArr, j13, (byte) cCharAt2);
                    str2 = str4;
                    j12 = j11;
                    j13 += j11;
                    str = str3;
                }
                i14++;
                str3 = str;
                str4 = str2;
                j11 = j12;
                j14 = j14;
            }
            return (int) j13;
        }

        @Override // com.google.protobuf.Utf8.b
        void encodeUtf8Direct(CharSequence charSequence, ByteBuffer byteBuffer) {
            long j11;
            char c11;
            long j12;
            int i11;
            int i12;
            char c12;
            char cCharAt;
            long jAddressOffset = s1.addressOffset(byteBuffer);
            long jPosition = ((long) byteBuffer.position()) + jAddressOffset;
            long jLimit = ((long) byteBuffer.limit()) + jAddressOffset;
            int length = charSequence.length();
            if (length > jLimit - jPosition) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(length - 1) + " at index " + byteBuffer.limit());
            }
            int i13 = 0;
            while (true) {
                j11 = 1;
                c11 = 128;
                if (i13 >= length || (cCharAt = charSequence.charAt(i13)) >= 128) {
                    break;
                }
                s1.putByte(jPosition, (byte) cCharAt);
                i13++;
                jPosition = 1 + jPosition;
            }
            if (i13 == length) {
                e0.position(byteBuffer, (int) (jPosition - jAddressOffset));
                return;
            }
            while (i13 < length) {
                char cCharAt2 = charSequence.charAt(i13);
                if (cCharAt2 >= c11 || jPosition >= jLimit) {
                    if (cCharAt2 >= 2048 || jPosition > jLimit - 2) {
                        j12 = jAddressOffset;
                        if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || jPosition > jLimit - 3) {
                            if (jPosition > jLimit - 4) {
                                if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i11 = i13 + 1) == length || !Character.isSurrogatePair(cCharAt2, charSequence.charAt(i11)))) {
                                    throw new UnpairedSurrogateException(i13, length);
                                }
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + jPosition);
                            }
                            i12 = i13 + 1;
                            if (i12 != length) {
                                char cCharAt3 = charSequence.charAt(i12);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    s1.putByte(jPosition, (byte) ((codePoint >>> 18) | 240));
                                    c12 = 128;
                                    s1.putByte(jPosition + 1, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j13 = jPosition + 3;
                                    s1.putByte(jPosition + 2, (byte) (((codePoint >>> 6) & 63) | 128));
                                    jPosition += 4;
                                    s1.putByte(j13, (byte) ((codePoint & 63) | 128));
                                } else {
                                    i13 = i12;
                                }
                            }
                            throw new UnpairedSurrogateException(i13 - 1, length);
                        }
                        long j14 = jPosition + j11;
                        s1.putByte(jPosition, (byte) ((cCharAt2 >>> '\f') | 480));
                        long j15 = jPosition + 2;
                        s1.putByte(j14, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                        jPosition += 3;
                        s1.putByte(j15, (byte) ((cCharAt2 & '?') | 128));
                    } else {
                        j12 = jAddressOffset;
                        long j16 = jPosition + j11;
                        s1.putByte(jPosition, (byte) ((cCharAt2 >>> 6) | 960));
                        jPosition += 2;
                        s1.putByte(j16, (byte) ((cCharAt2 & '?') | 128));
                    }
                    i12 = i13;
                    c12 = 128;
                } else {
                    s1.putByte(jPosition, (byte) cCharAt2);
                    j12 = jAddressOffset;
                    i12 = i13;
                    c12 = c11;
                    jPosition += j11;
                }
                c11 = c12;
                jAddressOffset = j12;
                j11 = 1;
                i13 = i12 + 1;
            }
            e0.position(byteBuffer, (int) (jPosition - jAddressOffset));
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x0059, code lost:
        
            if (com.google.protobuf.s1.getByte(r13, r1) > (-65)) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x009e, code lost:
        
            if (com.google.protobuf.s1.getByte(r13, r1) > (-65)) goto L59;
         */
        @Override // com.google.protobuf.Utf8.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        int partialIsValidUtf8(int i11, byte[] bArr, int i12, int i13) {
            long j11;
            byte b11 = 0;
            if ((i12 | i13 | (bArr.length - i13)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i12), Integer.valueOf(i13)));
            }
            long j12 = i12;
            long j13 = i13;
            if (i11 != 0) {
                if (j12 >= j13) {
                    return i11;
                }
                byte b12 = (byte) i11;
                if (b12 < -32) {
                    if (b12 >= -62) {
                        long j14 = 1 + j12;
                        if (s1.getByte(bArr, j12) <= -65) {
                            j12 = j14;
                        }
                    }
                    return -1;
                }
                if (b12 < -16) {
                    byte b13 = (byte) (~(i11 >> 8));
                    if (b13 == 0) {
                        long j15 = j12 + 1;
                        b13 = s1.getByte(bArr, j12);
                        if (j15 >= j13) {
                            return Utf8.incompleteStateFor(b12, b13);
                        }
                        j12 = j15;
                    }
                    if (b13 <= -65 && ((b12 != -32 || b13 >= -96) && (b12 != -19 || b13 < -96))) {
                        j11 = j12 + 1;
                    }
                    return -1;
                }
                byte b14 = (byte) (~(i11 >> 8));
                if (b14 == 0) {
                    long j16 = j12 + 1;
                    b14 = s1.getByte(bArr, j12);
                    if (j16 >= j13) {
                        return Utf8.incompleteStateFor(b12, b14);
                    }
                    j12 = j16;
                } else {
                    b11 = (byte) (i11 >> 16);
                }
                if (b11 == 0) {
                    long j17 = j12 + 1;
                    b11 = s1.getByte(bArr, j12);
                    if (j17 >= j13) {
                        return Utf8.incompleteStateFor(b12, b14, b11);
                    }
                    j12 = j17;
                }
                if (b14 <= -65 && (((b12 << 28) + (b14 + 112)) >> 30) == 0 && b11 <= -65) {
                    j11 = j12 + 1;
                }
                return -1;
                j12 = j11;
            }
            return partialIsValidUtf8(bArr, j12, (int) (j13 - j12));
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x002e, code lost:
        
            if (com.google.protobuf.s1.getByte(r1) > (-65)) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0062, code lost:
        
            if (com.google.protobuf.s1.getByte(r1) > (-65)) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00a3, code lost:
        
            if (com.google.protobuf.s1.getByte(r1) > (-65)) goto L57;
         */
        @Override // com.google.protobuf.Utf8.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        int partialIsValidUtf8Direct(int i11, ByteBuffer byteBuffer, int i12, int i13) {
            long j11;
            byte b11 = 0;
            if ((i12 | i13 | (byteBuffer.limit() - i13)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i12), Integer.valueOf(i13)));
            }
            long jAddressOffset = s1.addressOffset(byteBuffer) + ((long) i12);
            long j12 = ((long) (i13 - i12)) + jAddressOffset;
            if (i11 != 0) {
                if (jAddressOffset >= j12) {
                    return i11;
                }
                byte b12 = (byte) i11;
                if (b12 < -32) {
                    if (b12 >= -62) {
                        j11 = 1 + jAddressOffset;
                    }
                    return -1;
                }
                if (b12 < -16) {
                    byte b13 = (byte) (~(i11 >> 8));
                    if (b13 == 0) {
                        long j13 = jAddressOffset + 1;
                        b13 = s1.getByte(jAddressOffset);
                        if (j13 >= j12) {
                            return Utf8.incompleteStateFor(b12, b13);
                        }
                        jAddressOffset = j13;
                    }
                    if (b13 <= -65 && ((b12 != -32 || b13 >= -96) && (b12 != -19 || b13 < -96))) {
                        j11 = 1 + jAddressOffset;
                    }
                    return -1;
                }
                byte b14 = (byte) (~(i11 >> 8));
                if (b14 == 0) {
                    long j14 = jAddressOffset + 1;
                    b14 = s1.getByte(jAddressOffset);
                    if (j14 >= j12) {
                        return Utf8.incompleteStateFor(b12, b14);
                    }
                    jAddressOffset = j14;
                } else {
                    b11 = (byte) (i11 >> 16);
                }
                if (b11 == 0) {
                    long j15 = jAddressOffset + 1;
                    b11 = s1.getByte(jAddressOffset);
                    if (j15 >= j12) {
                        return Utf8.incompleteStateFor(b12, b14, b11);
                    }
                    jAddressOffset = j15;
                }
                if (b14 <= -65 && (((b12 << 28) + (b14 + 112)) >> 30) == 0 && b11 <= -65) {
                    j11 = 1 + jAddressOffset;
                }
                return -1;
                jAddressOffset = j11;
            }
            return partialIsValidUtf8(jAddressOffset, (int) (j12 - jAddressOffset));
        }
    }

    static {
        processor = (!d.isAvailable() || com.google.protobuf.d.isOnAndroidDevice()) ? new c() : new d();
    }

    private Utf8() {
    }

    static String decodeUtf8(ByteBuffer byteBuffer, int i11, int i12) throws InvalidProtocolBufferException {
        return processor.decodeUtf8(byteBuffer, i11, i12);
    }

    static String decodeUtf8(byte[] bArr, int i11, int i12) throws InvalidProtocolBufferException {
        return processor.decodeUtf8(bArr, i11, i12);
    }

    static int encode(CharSequence charSequence, byte[] bArr, int i11, int i12) {
        return processor.encodeUtf8(charSequence, bArr, i11, i12);
    }

    static void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) {
        processor.encodeUtf8(charSequence, byteBuffer);
    }

    static int encodedLength(CharSequence charSequence) {
        int length = charSequence.length();
        int i11 = 0;
        while (i11 < length && charSequence.charAt(i11) < 128) {
            i11++;
        }
        int iEncodedLengthGeneral = length;
        while (i11 < length) {
            char cCharAt = charSequence.charAt(i11);
            if (cCharAt >= 2048) {
                iEncodedLengthGeneral += encodedLengthGeneral(charSequence, i11);
                break;
            }
            iEncodedLengthGeneral += (127 - cCharAt) >>> 31;
            i11++;
        }
        if (iEncodedLengthGeneral >= length) {
            return iEncodedLengthGeneral;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (((long) iEncodedLengthGeneral) + TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE));
    }

    private static int encodedLengthGeneral(CharSequence charSequence, int i11) {
        int length = charSequence.length();
        int i12 = 0;
        while (i11 < length) {
            char cCharAt = charSequence.charAt(i11);
            if (cCharAt < 2048) {
                i12 += (127 - cCharAt) >>> 31;
            } else {
                i12 += 2;
                if (55296 <= cCharAt && cCharAt <= 57343) {
                    if (Character.codePointAt(charSequence, i11) < 65536) {
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
    public static int estimateConsecutiveAscii(ByteBuffer byteBuffer, int i11, int i12) {
        int i13 = i12 - 7;
        int i14 = i11;
        while (i14 < i13 && (byteBuffer.getLong(i14) & ASCII_MASK_LONG) == 0) {
            i14 += 8;
        }
        return i14 - i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int incompleteStateFor(int i11) {
        if (i11 > -12) {
            return -1;
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int incompleteStateFor(int i11, int i12) {
        if (i11 > -12 || i12 > -65) {
            return -1;
        }
        return i11 ^ (i12 << 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int incompleteStateFor(int i11, int i12, int i13) {
        if (i11 > -12 || i12 > -65 || i13 > -65) {
            return -1;
        }
        return (i11 ^ (i12 << 8)) ^ (i13 << 16);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int incompleteStateFor(ByteBuffer byteBuffer, int i11, int i12, int i13) {
        if (i13 == 0) {
            return incompleteStateFor(i11);
        }
        if (i13 == 1) {
            return incompleteStateFor(i11, byteBuffer.get(i12));
        }
        if (i13 == 2) {
            return incompleteStateFor(i11, byteBuffer.get(i12), byteBuffer.get(i12 + 1));
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int incompleteStateFor(byte[] bArr, int i11, int i12) {
        byte b11 = bArr[i11 - 1];
        int i13 = i12 - i11;
        if (i13 == 0) {
            return incompleteStateFor(b11);
        }
        if (i13 == 1) {
            return incompleteStateFor(b11, bArr[i11]);
        }
        if (i13 == 2) {
            return incompleteStateFor(b11, bArr[i11], bArr[i11 + 1]);
        }
        throw new AssertionError();
    }

    static boolean isValidUtf8(ByteBuffer byteBuffer) {
        return processor.isValidUtf8(byteBuffer, byteBuffer.position(), byteBuffer.remaining());
    }

    static boolean isValidUtf8(byte[] bArr) {
        return processor.isValidUtf8(bArr, 0, bArr.length);
    }

    static boolean isValidUtf8(byte[] bArr, int i11, int i12) {
        return processor.isValidUtf8(bArr, i11, i12);
    }

    static int partialIsValidUtf8(int i11, ByteBuffer byteBuffer, int i12, int i13) {
        return processor.partialIsValidUtf8(i11, byteBuffer, i12, i13);
    }

    static int partialIsValidUtf8(int i11, byte[] bArr, int i12, int i13) {
        return processor.partialIsValidUtf8(i11, bArr, i12, i13);
    }
}
