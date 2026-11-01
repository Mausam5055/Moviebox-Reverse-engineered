package com.pgl.ssdk;

import java.io.IOException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes5.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f40132a = "0123456789abcdef".toCharArray();

    public static h a(o oVar, r rVar, int i11) throws i, IOException {
        try {
            d.a aVarA = d.a(oVar, rVar);
            long jB = aVarA.b();
            o oVarA = aVarA.a();
            ByteBuffer byteBufferA = oVarA.a(0L, (int) oVarA.a());
            byteBufferA.order(ByteOrder.LITTLE_ENDIAN);
            return new h(a(byteBufferA, i11), jB, rVar.a(), rVar.e(), rVar.d());
        } catch (b e11) {
            throw new i(e11.getMessage(), e11);
        }
    }

    public static ByteBuffer a(ByteBuffer byteBuffer, int i11) throws i {
        a(byteBuffer);
        ByteBuffer byteBufferA = a(byteBuffer, 8, byteBuffer.capacity() - 24);
        int i12 = 0;
        while (byteBufferA.hasRemaining()) {
            i12++;
            if (byteBufferA.remaining() < 8) {
                throw new i("Insufficient data to read size of APK Signing Block entry #".concat(String.valueOf(i12)));
            }
            long j11 = byteBufferA.getLong();
            if (j11 < 4 || j11 > 2147483647L) {
                throw new i("APK Signing Block entry #" + i12 + " size out of range: " + j11);
            }
            int i13 = (int) j11;
            int iPosition = byteBufferA.position() + i13;
            if (i13 > byteBufferA.remaining()) {
                throw new i("APK Signing Block entry #" + i12 + " size out of range: " + i13 + ", available: " + byteBufferA.remaining());
            }
            if (byteBufferA.getInt() == i11) {
                return b(byteBufferA, i13 - 4);
            }
            byteBufferA.position(iPosition);
        }
        throw new i("No APK Signature Scheme block in APK Signing Block with ID: ".concat(String.valueOf(i11)));
    }

    private static ByteBuffer a(ByteBuffer byteBuffer, int i11, int i12) {
        if (i11 < 0) {
            throw new IllegalArgumentException("start: ".concat(String.valueOf(i11)));
        }
        if (i12 < i11) {
            throw new IllegalArgumentException("end < start: " + i12 + " < " + i11);
        }
        int iCapacity = byteBuffer.capacity();
        if (i12 > byteBuffer.capacity()) {
            throw new IllegalArgumentException("end > capacity: " + i12 + " > " + iCapacity);
        }
        int iLimit = byteBuffer.limit();
        int iPosition = byteBuffer.position();
        try {
            byteBuffer.position(0);
            byteBuffer.limit(i12);
            byteBuffer.position(i11);
            ByteBuffer byteBufferSlice = byteBuffer.slice();
            byteBufferSlice.order(byteBuffer.order());
            return byteBufferSlice;
        } finally {
            byteBuffer.position(0);
            byteBuffer.limit(iLimit);
            byteBuffer.position(iPosition);
        }
    }

    public static void a(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    public static ByteBuffer b(ByteBuffer byteBuffer) throws a {
        if (byteBuffer.remaining() < 4) {
            throw new a("Remaining buffer too short to contain length of length-prefixed field. Remaining: " + byteBuffer.remaining());
        }
        int i11 = byteBuffer.getInt();
        if (i11 < 0) {
            throw new IllegalArgumentException("Negative length");
        }
        if (i11 <= byteBuffer.remaining()) {
            return b(byteBuffer, i11);
        }
        throw new a("Length-prefixed field longer than remaining buffer. Field length: " + i11 + ", remaining: " + byteBuffer.remaining());
    }

    private static ByteBuffer b(ByteBuffer byteBuffer, int i11) {
        if (i11 < 0) {
            throw new IllegalArgumentException("size: ".concat(String.valueOf(i11)));
        }
        int iLimit = byteBuffer.limit();
        int iPosition = byteBuffer.position();
        int i12 = i11 + iPosition;
        if (i12 < iPosition || i12 > iLimit) {
            throw new BufferUnderflowException();
        }
        byteBuffer.limit(i12);
        try {
            ByteBuffer byteBufferSlice = byteBuffer.slice();
            byteBufferSlice.order(byteBuffer.order());
            byteBuffer.position(i12);
            return byteBufferSlice;
        } finally {
            byteBuffer.limit(iLimit);
        }
    }

    public static byte[] c(ByteBuffer byteBuffer) throws a {
        int i11 = byteBuffer.getInt();
        if (i11 < 0) {
            throw new a("Negative length");
        }
        if (i11 <= byteBuffer.remaining()) {
            byte[] bArr = new byte[i11];
            byteBuffer.get(bArr);
            return bArr;
        }
        throw new a("Underflow while reading length-prefixed value. Length: " + i11 + ", available: " + byteBuffer.remaining());
    }
}
