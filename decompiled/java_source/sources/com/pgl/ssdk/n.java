package com.pgl.ssdk;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes5.dex */
public abstract class n {
    public static int a(ByteBuffer byteBuffer, int i11) {
        return byteBuffer.getShort(i11) & 65535;
    }

    public static m<ByteBuffer, Long> a(o oVar) throws IOException {
        if (oVar.a() < 22) {
            return null;
        }
        m<ByteBuffer, Long> mVarA = a(oVar, 0);
        return mVarA != null ? mVarA : a(oVar, Settings.DEFAULT_INITIAL_WINDOW_SIZE);
    }

    private static m<ByteBuffer, Long> a(o oVar, int i11) throws IOException {
        if (i11 < 0 || i11 > 65535) {
            throw new IllegalArgumentException("maxCommentSize: ".concat(String.valueOf(i11)));
        }
        long jA = oVar.a();
        if (jA < 22) {
            return null;
        }
        int iMin = ((int) Math.min(i11, jA - 22)) + 22;
        long j11 = jA - ((long) iMin);
        ByteBuffer byteBufferA = oVar.a(j11, iMin);
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        byteBufferA.order(byteOrder);
        int iB = b(byteBufferA);
        if (iB == -1) {
            return null;
        }
        byteBufferA.position(iB);
        ByteBuffer byteBufferSlice = byteBufferA.slice();
        byteBufferSlice.order(byteOrder);
        return m.a(byteBufferSlice, Long.valueOf(j11 + ((long) iB)));
    }

    static void a(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    private static int b(ByteBuffer byteBuffer) {
        a(byteBuffer);
        int iCapacity = byteBuffer.capacity();
        if (iCapacity < 22) {
            return -1;
        }
        int i11 = iCapacity - 22;
        int iMin = Math.min(i11, Settings.DEFAULT_INITIAL_WINDOW_SIZE);
        for (int i12 = 0; i12 <= iMin; i12++) {
            int i13 = i11 - i12;
            if (byteBuffer.getInt(i13) == 101010256 && a(byteBuffer, i13 + 20) == i12) {
                return i13;
            }
        }
        return -1;
    }

    static long b(ByteBuffer byteBuffer, int i11) {
        return ((long) byteBuffer.getInt(i11)) & 4294967295L;
    }

    public static long c(ByteBuffer byteBuffer) {
        a(byteBuffer);
        return b(byteBuffer, byteBuffer.position() + 16);
    }

    public static long d(ByteBuffer byteBuffer) {
        a(byteBuffer);
        return b(byteBuffer, byteBuffer.position() + 12);
    }

    public static int e(ByteBuffer byteBuffer) {
        a(byteBuffer);
        return a(byteBuffer, byteBuffer.position() + 10);
    }
}
