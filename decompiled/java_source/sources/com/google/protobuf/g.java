package com.google.protobuf;

import com.meituan.android.walle.ChannelReader;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.ref.SoftReference;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes4.dex */
final class g {
    private static final ThreadLocal<SoftReference<byte[]>> BUFFER = new ThreadLocal<>();
    private static final float BUFFER_REALLOCATION_THRESHOLD = 0.5f;
    private static final long CHANNEL_FIELD_OFFSET;
    private static final Class<?> FILE_OUTPUT_STREAM_CLASS;
    private static final int MAX_CACHED_BUFFER_SIZE = 16384;
    private static final int MIN_CACHED_BUFFER_SIZE = 1024;

    static {
        Class<?> clsSafeGetClass = safeGetClass("java.io.FileOutputStream");
        FILE_OUTPUT_STREAM_CLASS = clsSafeGetClass;
        CHANNEL_FIELD_OFFSET = getChannelFieldOffset(clsSafeGetClass);
    }

    private g() {
    }

    static void clearCachedBuffer() {
        BUFFER.set(null);
    }

    private static byte[] getBuffer() {
        SoftReference<byte[]> softReference = BUFFER.get();
        if (softReference == null) {
            return null;
        }
        return softReference.get();
    }

    private static long getChannelFieldOffset(Class<?> cls) {
        if (cls == null) {
            return -1L;
        }
        try {
            if (s1.hasUnsafeArrayOperations()) {
                return s1.objectFieldOffset(cls.getDeclaredField(ChannelReader.CHANNEL_KEY));
            }
            return -1L;
        } catch (Throwable unused) {
            return -1L;
        }
    }

    private static byte[] getOrCreateBuffer(int i11) {
        int iMax = Math.max(i11, 1024);
        byte[] buffer = getBuffer();
        if (buffer == null || needToReallocate(iMax, buffer.length)) {
            buffer = new byte[iMax];
            if (iMax <= 16384) {
                setBuffer(buffer);
            }
        }
        return buffer;
    }

    private static boolean needToReallocate(int i11, int i12) {
        return i12 < i11 && ((float) i12) < ((float) i11) * BUFFER_REALLOCATION_THRESHOLD;
    }

    private static Class<?> safeGetClass(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    private static void setBuffer(byte[] bArr) {
        BUFFER.set(new SoftReference<>(bArr));
    }

    static void write(ByteBuffer byteBuffer, OutputStream outputStream) throws IOException {
        int iPosition = byteBuffer.position();
        try {
            if (byteBuffer.hasArray()) {
                outputStream.write(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            } else if (!writeToChannel(byteBuffer, outputStream)) {
                byte[] orCreateBuffer = getOrCreateBuffer(byteBuffer.remaining());
                while (byteBuffer.hasRemaining()) {
                    int iMin = Math.min(byteBuffer.remaining(), orCreateBuffer.length);
                    byteBuffer.get(orCreateBuffer, 0, iMin);
                    outputStream.write(orCreateBuffer, 0, iMin);
                }
            }
        } finally {
            e0.position(byteBuffer, iPosition);
        }
    }

    private static boolean writeToChannel(ByteBuffer byteBuffer, OutputStream outputStream) throws IOException {
        WritableByteChannel writableByteChannel;
        long j11 = CHANNEL_FIELD_OFFSET;
        if (j11 < 0 || !FILE_OUTPUT_STREAM_CLASS.isInstance(outputStream)) {
            return false;
        }
        try {
            writableByteChannel = (WritableByteChannel) s1.getObject(outputStream, j11);
        } catch (ClassCastException unused) {
            writableByteChannel = null;
        }
        if (writableByteChannel == null) {
            return false;
        }
        writableByteChannel.write(byteBuffer);
        return true;
    }
}
