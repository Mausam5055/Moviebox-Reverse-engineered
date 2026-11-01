package com.cloud.hisavana.net.utils;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class ByteBufferUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicReference f21419a = new AtomicReference();

    private static class ByteBufferStream extends InputStream {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ByteBuffer f21420a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f21421b;

        @Override // java.io.InputStream
        public int available() {
            return this.f21420a.remaining();
        }

        @Override // java.io.InputStream
        public synchronized void mark(int i11) {
            this.f21421b = this.f21420a.position();
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() {
            if (this.f21420a.hasRemaining()) {
                return this.f21420a.get();
            }
            return -1;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i11, int i12) {
            if (!this.f21420a.hasRemaining()) {
                return -1;
            }
            int iMin = Math.min(i12, available());
            this.f21420a.get(bArr, i11, iMin);
            return iMin;
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            int i11 = this.f21421b;
            if (i11 == -1) {
                throw new IOException("Cannot reset to unset mark position");
            }
            this.f21420a.position(i11);
        }

        @Override // java.io.InputStream
        public long skip(long j11) {
            if (!this.f21420a.hasRemaining()) {
                return -1L;
            }
            long jMin = Math.min(j11, available());
            ByteBuffer byteBuffer = this.f21420a;
            byteBuffer.position((int) (((long) byteBuffer.position()) + jMin));
            return jMin;
        }
    }

    public static class ContentLengthInputStream extends InputStream {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final InputStream f21422a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f21423b;

        @Override // java.io.InputStream
        public int available() {
            return this.f21423b;
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f21422a.close();
        }

        @Override // java.io.InputStream
        public synchronized void mark(int i11) {
            this.f21422a.mark(i11);
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return this.f21422a.markSupported();
        }

        @Override // java.io.InputStream
        public int read() {
            return this.f21422a.read();
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr) {
            return this.f21422a.read(bArr);
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i11, int i12) {
            return this.f21422a.read(bArr, i11, i12);
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            this.f21422a.reset();
        }

        @Override // java.io.InputStream
        public long skip(long j11) {
            return this.f21422a.skip(j11);
        }
    }

    static final class SafeArray {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f21424a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f21425b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final byte[] f21426c;

        public SafeArray(byte[] bArr, int i11, int i12) {
            this.f21426c = bArr;
            this.f21424a = i11;
            this.f21425b = i12;
        }
    }

    private ByteBufferUtil() {
    }

    public static ByteBuffer a(File file) throws Throwable {
        RandomAccessFile randomAccessFile;
        FileChannel channel = null;
        try {
            randomAccessFile = new RandomAccessFile(file, CampaignEx.JSON_KEY_AD_R);
            try {
                channel = randomAccessFile.getChannel();
                MappedByteBuffer mappedByteBufferLoad = channel.map(FileChannel.MapMode.READ_ONLY, 0L, file.length()).load();
                try {
                    channel.close();
                } catch (IOException unused) {
                }
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
                return mappedByteBufferLoad;
            } catch (Throwable th2) {
                th = th2;
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException unused3) {
                    }
                }
                if (randomAccessFile == null) {
                    throw th;
                }
                try {
                    randomAccessFile.close();
                    throw th;
                } catch (IOException unused4) {
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile = null;
        }
    }

    private static SafeArray b(ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly() || !byteBuffer.hasArray()) {
            return null;
        }
        return new SafeArray(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
    }

    public static byte[] c(ByteBuffer byteBuffer) {
        SafeArray safeArrayB = b(byteBuffer);
        if (safeArrayB != null && safeArrayB.f21424a == 0 && safeArrayB.f21425b == safeArrayB.f21426c.length) {
            return byteBuffer.array();
        }
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        byte[] bArr = new byte[byteBufferAsReadOnlyBuffer.limit()];
        byteBufferAsReadOnlyBuffer.position(0);
        byteBufferAsReadOnlyBuffer.get(bArr);
        return bArr;
    }
}
