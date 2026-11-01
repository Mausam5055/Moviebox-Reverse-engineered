package l2;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
import okio.Utf8;

/* JADX INFO: loaded from: classes2.dex */
public abstract class k0 {
    public static List a(byte[] bArr) {
        long jK = k(f(bArr));
        long jK2 = k(3840L);
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(b(jK));
        arrayList.add(b(jK2));
        return arrayList;
    }

    private static byte[] b(long j11) {
        return ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(j11).array();
    }

    public static int c(byte[] bArr) {
        return bArr[9] & 255;
    }

    private static long d(byte b11, byte b12) {
        int i11;
        int i12;
        int i13 = b11 & 255;
        int i14 = b11 & 3;
        if (i14 != 0) {
            i11 = 2;
            if (i14 != 1 && i14 != 2) {
                i11 = b12 & Utf8.REPLACEMENT_BYTE;
            }
        } else {
            i11 = 1;
        }
        int i15 = i13 >> 3;
        int i16 = i15 & 3;
        if (i15 >= 16) {
            i12 = DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS << i16;
        } else if (i15 >= 12) {
            i12 = 10000 << (i15 & 1);
        } else {
            i12 = i16 == 3 ? 60000 : 10000 << i16;
        }
        return ((long) i11) * ((long) i12);
    }

    public static long e(byte[] bArr) {
        return d(bArr[0], bArr.length > 1 ? bArr[1] : (byte) 0);
    }

    public static int f(byte[] bArr) {
        return (bArr[10] & 255) | ((bArr[11] & 255) << 8);
    }

    public static boolean g(long j11, long j12) {
        return j11 - j12 <= k(3840L) / 1000;
    }

    public static int h(ByteBuffer byteBuffer) {
        int i11 = i(byteBuffer);
        int i12 = byteBuffer.get(i11 + 26) + 27 + i11;
        return (int) ((d(byteBuffer.get(i12), byteBuffer.limit() - i12 > 1 ? byteBuffer.get(i12 + 1) : (byte) 0) * 48000) / 1000000);
    }

    public static int i(ByteBuffer byteBuffer) {
        if ((byteBuffer.get(5) & 2) == 0) {
            return 0;
        }
        byte b11 = byteBuffer.get(26);
        int i11 = 28;
        int i12 = 28;
        for (int i13 = 0; i13 < b11; i13++) {
            i12 += byteBuffer.get(i13 + 27);
        }
        byte b12 = byteBuffer.get(i12 + 26);
        for (int i14 = 0; i14 < b12; i14++) {
            i11 += byteBuffer.get(i12 + 27 + i14);
        }
        return i12 + i11;
    }

    public static int j(ByteBuffer byteBuffer) {
        return (int) ((d(byteBuffer.get(0), byteBuffer.limit() > 1 ? byteBuffer.get(1) : (byte) 0) * 48000) / 1000000);
    }

    private static long k(long j11) {
        return (j11 * C.NANOS_PER_SECOND) / 48000;
    }
}
