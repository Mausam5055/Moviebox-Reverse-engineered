package okio;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: okio.-SegmentedByteString, reason: invalid class name */
/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000N\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0005\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a0\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0001H\u0000\u001a \u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0015H\u0000\u001a\u0019\u0010\u0017\u001a\u00020\u00152\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0015H\u0080\b\u001a\u0019\u0010\u0017\u001a\u00020\u00152\u0006\u0010\f\u001a\u00020\u00152\u0006\u0010\u000f\u001a\u00020\u0001H\u0080\b\u001a\u0010\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0005H\u0000\u001a\u0015\u0010\u001a\u001a\u00020\u0001*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0001H\u0080\f\u001a\u0015\u0010\u001a\u001a\u00020\u0015*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0015H\u0080\f\u001a\u0015\u0010\u001a\u001a\u00020\u0015*\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u0015H\u0080\f\u001a\u0015\u0010\u001d\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u001e\u001a\u00020\u0001H\u0080\f\u001a\u0014\u0010\u0018\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u001f\u001a\u00020\u0001H\u0000\u001a\u0014\u0010\u0018\u001a\u00020\u0001*\u00020 2\u0006\u0010!\u001a\u00020\u0001H\u0000\u001a\f\u0010\"\u001a\u00020\u0001*\u00020\u0001H\u0000\u001a\f\u0010\"\u001a\u00020\u0015*\u00020\u0015H\u0000\u001a\f\u0010\"\u001a\u00020#*\u00020#H\u0000\u001a\u0015\u0010$\u001a\u00020\u0015*\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0001H\u0080\f\u001a\u0015\u0010%\u001a\u00020\u0001*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0001H\u0080\f\u001a\u0015\u0010&\u001a\u00020\u0001*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0001H\u0080\f\u001a\f\u0010'\u001a\u00020(*\u00020\u001bH\u0000\u001a\f\u0010'\u001a\u00020(*\u00020\u0001H\u0000\u001a\f\u0010'\u001a\u00020(*\u00020\u0015H\u0000\u001a\u0015\u0010)\u001a\u00020\u001b*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0080\f\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u001c\u0010\u0004\u001a\u00020\u00058\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006*"}, d2 = {"DEFAULT__ByteString_size", "", "getDEFAULT__ByteString_size", "()I", "DEFAULT__new_UnsafeCursor", "Lokio/Buffer$UnsafeCursor;", "getDEFAULT__new_UnsafeCursor$annotations", "()V", "getDEFAULT__new_UnsafeCursor", "()Lokio/Buffer$UnsafeCursor;", "arrayRangeEquals", "", "a", "", "aOffset", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "bOffset", "byteCount", "checkOffsetAndCount", "", "size", "", "offset", "minOf", "resolveDefaultParameter", "unsafeCursor", "and", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "leftRotate", "bitCount", "sizeParam", "Lokio/ByteString;", RequestParameters.POSITION, "reverseBytes", "", "rightRotate", "shl", "shr", "toHexString", "", "xor", "okio"}, k = 2, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@JvmName
@SourceDebugExtension
public final class SegmentedByteString {
    private static final Buffer.UnsafeCursor DEFAULT__new_UnsafeCursor = new Buffer.UnsafeCursor();
    private static final int DEFAULT__ByteString_size = -1234567890;

    public static final int and(byte b11, int i11) {
        return b11 & i11;
    }

    public static final long and(byte b11, long j11) {
        return ((long) b11) & j11;
    }

    public static final long and(int i11, long j11) {
        return ((long) i11) & j11;
    }

    public static final boolean arrayRangeEquals(byte[] a11, int i11, byte[] b11, int i12, int i13) {
        Intrinsics.h(a11, "a");
        Intrinsics.h(b11, "b");
        for (int i14 = 0; i14 < i13; i14++) {
            if (a11[i14 + i11] != b11[i14 + i12]) {
                return false;
            }
        }
        return true;
    }

    public static final void checkOffsetAndCount(long j11, long j12, long j13) {
        if ((j12 | j13) < 0 || j12 > j11 || j11 - j12 < j13) {
            throw new ArrayIndexOutOfBoundsException("size=" + j11 + " offset=" + j12 + " byteCount=" + j13);
        }
    }

    public static final int getDEFAULT__ByteString_size() {
        return DEFAULT__ByteString_size;
    }

    public static final Buffer.UnsafeCursor getDEFAULT__new_UnsafeCursor() {
        return DEFAULT__new_UnsafeCursor;
    }

    public static /* synthetic */ void getDEFAULT__new_UnsafeCursor$annotations() {
    }

    public static final int leftRotate(int i11, int i12) {
        return (i11 >>> (32 - i12)) | (i11 << i12);
    }

    public static final long minOf(int i11, long j11) {
        return Math.min(i11, j11);
    }

    public static final long minOf(long j11, int i11) {
        return Math.min(j11, i11);
    }

    public static final int resolveDefaultParameter(ByteString byteString, int i11) {
        Intrinsics.h(byteString, "<this>");
        return i11 == DEFAULT__ByteString_size ? byteString.size() : i11;
    }

    public static final int resolveDefaultParameter(byte[] bArr, int i11) {
        Intrinsics.h(bArr, "<this>");
        return i11 == DEFAULT__ByteString_size ? bArr.length : i11;
    }

    public static final Buffer.UnsafeCursor resolveDefaultParameter(Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.h(unsafeCursor, "unsafeCursor");
        return unsafeCursor == DEFAULT__new_UnsafeCursor ? new Buffer.UnsafeCursor() : unsafeCursor;
    }

    public static final int reverseBytes(int i11) {
        return ((i11 & 255) << 24) | (((-16777216) & i11) >>> 24) | ((16711680 & i11) >>> 8) | ((65280 & i11) << 8);
    }

    public static final long reverseBytes(long j11) {
        return ((j11 & 255) << 56) | (((-72057594037927936L) & j11) >>> 56) | ((71776119061217280L & j11) >>> 40) | ((280375465082880L & j11) >>> 24) | ((1095216660480L & j11) >>> 8) | ((4278190080L & j11) << 8) | ((16711680 & j11) << 24) | ((65280 & j11) << 40);
    }

    public static final short reverseBytes(short s11) {
        return (short) (((s11 & 255) << 8) | ((65280 & s11) >>> 8));
    }

    public static final long rightRotate(long j11, int i11) {
        return (j11 << (64 - i11)) | (j11 >>> i11);
    }

    public static final int shl(byte b11, int i11) {
        return b11 << i11;
    }

    public static final int shr(byte b11, int i11) {
        return b11 >> i11;
    }

    public static final String toHexString(byte b11) {
        return StringsKt.B(new char[]{okio.internal.ByteString.getHEX_DIGIT_CHARS()[(b11 >> 4) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[b11 & 15]});
    }

    public static final String toHexString(int i11) {
        int i12 = 0;
        if (i11 == 0) {
            return "0";
        }
        char[] cArr = {okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i11 >> 28) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i11 >> 24) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i11 >> 20) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i11 >> 16) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i11 >> 12) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i11 >> 8) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i11 >> 4) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[i11 & 15]};
        while (i12 < 8 && cArr[i12] == '0') {
            i12++;
        }
        return StringsKt.C(cArr, i12, 8);
    }

    public static final String toHexString(long j11) {
        if (j11 == 0) {
            return "0";
        }
        char[] cArr = {okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j11 >> 60) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j11 >> 56) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j11 >> 52) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j11 >> 48) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j11 >> 44) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j11 >> 40) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j11 >> 36) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j11 >> 32) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j11 >> 28) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j11 >> 24) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j11 >> 20) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j11 >> 16) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j11 >> 12) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j11 >> 8) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j11 >> 4) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) (j11 & 15)]};
        int i11 = 0;
        while (i11 < 16 && cArr[i11] == '0') {
            i11++;
        }
        return StringsKt.C(cArr, i11, 16);
    }

    public static final byte xor(byte b11, byte b12) {
        return (byte) (b11 ^ b12);
    }
}
