package com.tencent.tinker.android.dex;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.io.UTFDataFormatException;
import okhttp3.internal.ws.WebSocketProtocol;
import okio.Utf8;

/* JADX INFO: loaded from: classes5.dex */
public abstract class r {
    public static long a(String str, boolean z10) throws UTFDataFormatException {
        int length = str.length();
        long j11 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            char cCharAt = str.charAt(i11);
            j11 += (cCharAt == 0 || cCharAt > 127) ? cCharAt <= 2047 ? 2L : 3L : 1L;
            if (z10 && j11 > WebSocketProtocol.PAYLOAD_SHORT_MAX) {
                throw new UTFDataFormatException("String more than 65535 UTF bytes long");
            }
        }
        return j11;
    }

    public static String b(gf.a aVar, char[] cArr) throws UTFDataFormatException {
        int i11;
        int i12 = 0;
        while (true) {
            char c11 = (char) (aVar.readByte() & 255);
            if (c11 == 0) {
                return new String(cArr, 0, i12);
            }
            cArr[i12] = c11;
            if (c11 < 128) {
                i12++;
            } else {
                if ((c11 & 224) == 192) {
                    byte b11 = aVar.readByte();
                    if ((b11 & 192) != 128) {
                        throw new UTFDataFormatException("bad second byte");
                    }
                    i11 = i12 + 1;
                    cArr[i12] = (char) (((c11 & 31) << 6) | (b11 & Utf8.REPLACEMENT_BYTE));
                } else {
                    if ((c11 & 240) != 224) {
                        throw new UTFDataFormatException("bad byte");
                    }
                    byte b12 = aVar.readByte();
                    byte b13 = aVar.readByte();
                    if ((b12 & 192) != 128 || (b13 & 192) != 128) {
                        throw new UTFDataFormatException("bad second or third byte");
                    }
                    i11 = i12 + 1;
                    cArr[i12] = (char) (((c11 & 15) << 12) | ((b12 & Utf8.REPLACEMENT_BYTE) << 6) | (b13 & Utf8.REPLACEMENT_BYTE));
                }
                i12 = i11;
            }
        }
    }

    public static void c(byte[] bArr, int i11, String str) {
        int length = str.length();
        for (int i12 = 0; i12 < length; i12++) {
            char cCharAt = str.charAt(i12);
            if (cCharAt != 0 && cCharAt <= 127) {
                bArr[i11] = (byte) cCharAt;
                i11++;
            } else if (cCharAt <= 2047) {
                int i13 = i11 + 1;
                bArr[i11] = (byte) (((cCharAt >> 6) & 31) | PsExtractor.AUDIO_STREAM);
                i11 += 2;
                bArr[i13] = (byte) ((cCharAt & '?') | 128);
            } else {
                bArr[i11] = (byte) (((cCharAt >> '\f') & 15) | 224);
                int i14 = i11 + 2;
                bArr[i11 + 1] = (byte) (((cCharAt >> 6) & 63) | 128);
                i11 += 3;
                bArr[i14] = (byte) ((cCharAt & '?') | 128);
            }
        }
    }

    public static byte[] d(String str) {
        byte[] bArr = new byte[(int) a(str, false)];
        c(bArr, 0, str);
        return bArr;
    }
}
