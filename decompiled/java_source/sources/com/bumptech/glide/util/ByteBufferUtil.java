package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class ByteBufferUtil {
    private static final AtomicReference<byte[]> BUFFER_REF = new AtomicReference<>();
    private static final int BUFFER_SIZE = 16384;

    private static class ByteBufferStream extends InputStream {
        private static final int UNSET = -1;

        @NonNull
        private final ByteBuffer byteBuffer;
        private int markPos = -1;

        ByteBufferStream(@NonNull ByteBuffer byteBuffer) {
            this.byteBuffer = byteBuffer;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.byteBuffer.remaining();
        }

        @Override // java.io.InputStream
        public synchronized void mark(int i11) {
            this.markPos = this.byteBuffer.position();
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() {
            if (this.byteBuffer.hasRemaining()) {
                return this.byteBuffer.get() & 255;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public int read(@NonNull byte[] bArr, int i11, int i12) {
            if (!this.byteBuffer.hasRemaining()) {
                return -1;
            }
            int iMin = Math.min(i12, available());
            this.byteBuffer.get(bArr, i11, iMin);
            return iMin;
        }

        @Override // java.io.InputStream
        public synchronized void reset() throws IOException {
            int i11 = this.markPos;
            if (i11 == -1) {
                throw new IOException("Cannot reset to unset mark position");
            }
            this.byteBuffer.position(i11);
        }

        @Override // java.io.InputStream
        public long skip(long j11) {
            if (!this.byteBuffer.hasRemaining()) {
                return -1L;
            }
            long jMin = Math.min(j11, available());
            ByteBuffer byteBuffer = this.byteBuffer;
            byteBuffer.position((int) (((long) byteBuffer.position()) + jMin));
            return jMin;
        }
    }

    static final class SafeArray {
        final byte[] data;
        final int limit;
        final int offset;

        SafeArray(@NonNull byte[] bArr, int i11, int i12) {
            this.data = bArr;
            this.offset = i11;
            this.limit = i12;
        }
    }

    private ByteBufferUtil() {
    }

    @NonNull
    public static ByteBuffer fromFile(@NonNull File file) throws Throwable {
        RandomAccessFile randomAccessFile;
        FileChannel channel = null;
        try {
            long length = file.length();
            if (length > 2147483647L) {
                throw new IOException("File too large to map into memory");
            }
            if (length == 0) {
                throw new IOException("File unsuitable for memory mapping");
            }
            randomAccessFile = new RandomAccessFile(file, CampaignEx.JSON_KEY_AD_R);
            try {
                channel = randomAccessFile.getChannel();
                MappedByteBuffer mappedByteBufferLoad = channel.map(FileChannel.MapMode.READ_ONLY, 0L, length).load();
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

    @NonNull
    public static ByteBuffer fromStream(@NonNull InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        byte[] andSet = BUFFER_REF.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[16384];
        }
        while (true) {
            int i11 = inputStream.read(andSet);
            if (i11 < 0) {
                BUFFER_REF.set(andSet);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                return rewind(ByteBuffer.allocateDirect(byteArray.length).put(byteArray));
            }
            byteArrayOutputStream.write(andSet, 0, i11);
        }
    }

    @Nullable
    private static SafeArray getSafeArray(@NonNull ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly() || !byteBuffer.hasArray()) {
            return null;
        }
        return new SafeArray(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
    }

    public static ByteBuffer rewind(ByteBuffer byteBuffer) {
        return (ByteBuffer) byteBuffer.position(0);
    }

    @NonNull
    public static byte[] toBytes(@NonNull ByteBuffer byteBuffer) {
        SafeArray safeArray = getSafeArray(byteBuffer);
        if (safeArray != null && safeArray.offset == 0 && safeArray.limit == safeArray.data.length) {
            return byteBuffer.array();
        }
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        byte[] bArr = new byte[byteBufferAsReadOnlyBuffer.limit()];
        rewind(byteBufferAsReadOnlyBuffer);
        byteBufferAsReadOnlyBuffer.get(bArr);
        return bArr;
    }

    public static void toFile(@NonNull ByteBuffer byteBuffer, @NonNull File file) throws Throwable {
        RandomAccessFile randomAccessFile;
        rewind(byteBuffer);
        FileChannel channel = null;
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                channel = randomAccessFile.getChannel();
                channel.write(byteBuffer);
                channel.force(false);
                channel.close();
                randomAccessFile.close();
                try {
                    channel.close();
                } catch (IOException unused) {
                }
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
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

    @NonNull
    public static InputStream toStream(@NonNull ByteBuffer byteBuffer) {
        return new ByteBufferStream(byteBuffer);
    }

    public static void toStream(@NonNull ByteBuffer byteBuffer, @NonNull OutputStream outputStream) throws IOException {
        SafeArray safeArray = getSafeArray(byteBuffer);
        if (safeArray != null) {
            byte[] bArr = safeArray.data;
            int i11 = safeArray.offset;
            outputStream.write(bArr, i11, safeArray.limit + i11);
            return;
        }
        byte[] andSet = BUFFER_REF.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[16384];
        }
        while (byteBuffer.remaining() > 0) {
            int iMin = Math.min(byteBuffer.remaining(), andSet.length);
            byteBuffer.get(andSet, 0, iMin);
            outputStream.write(andSet, 0, iMin);
        }
        BUFFER_REF.set(andSet);
    }
}
