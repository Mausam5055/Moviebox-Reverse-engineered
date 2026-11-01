package cm;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicReference f17278a = new AtomicReference();

    /* JADX INFO: renamed from: cm.a$a, reason: collision with other inner class name */
    private static class C0167a extends InputStream {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ByteBuffer f17279a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f17280b = -1;

        public C0167a(ByteBuffer byteBuffer) {
            this.f17279a = byteBuffer;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.f17279a.remaining();
        }

        @Override // java.io.InputStream
        public synchronized void mark(int i11) {
            this.f17280b = this.f17279a.position();
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() {
            if (this.f17279a.hasRemaining()) {
                return this.f17279a.get();
            }
            return -1;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i11, int i12) {
            if (!this.f17279a.hasRemaining()) {
                return -1;
            }
            int iMin = Math.min(i12, this.f17279a.remaining());
            this.f17279a.get(bArr, i11, iMin);
            return iMin;
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            int i11 = this.f17280b;
            if (i11 == -1) {
                throw new IOException("Cannot reset to unset mark position");
            }
            this.f17279a.position(i11);
        }

        @Override // java.io.InputStream
        public long skip(long j11) {
            if (!this.f17279a.hasRemaining()) {
                return -1L;
            }
            long jMin = Math.min(j11, this.f17279a.remaining());
            ByteBuffer byteBuffer = this.f17279a;
            byteBuffer.position((int) (((long) byteBuffer.position()) + jMin));
            return jMin;
        }
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f17281a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f17282b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final byte[] f17283c;

        public b(byte[] bArr, int i11, int i12) {
            this.f17283c = bArr;
            this.f17281a = i11;
            this.f17282b = i12;
        }
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

    public static ByteBuffer b(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        byte[] bArr = (byte[]) f17278a.getAndSet(null);
        if (bArr == null) {
            bArr = new byte[16384];
        }
        while (true) {
            int i11 = inputStream.read(bArr);
            if (i11 < 0) {
                f17278a.set(bArr);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                return (ByteBuffer) ByteBuffer.allocateDirect(byteArray.length).put(byteArray).position(0);
            }
            byteArrayOutputStream.write(bArr, 0, i11);
        }
    }

    private static b c(ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly() || !byteBuffer.hasArray()) {
            return null;
        }
        return new b(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
    }

    public static byte[] d(ByteBuffer byteBuffer) {
        b bVarC = c(byteBuffer);
        if (bVarC != null && bVarC.f17281a == 0 && bVarC.f17282b == bVarC.f17283c.length) {
            return byteBuffer.array();
        }
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        byte[] bArr = new byte[byteBufferAsReadOnlyBuffer.limit()];
        byteBufferAsReadOnlyBuffer.position(0);
        byteBufferAsReadOnlyBuffer.get(bArr);
        return bArr;
    }

    public static void e(ByteBuffer byteBuffer, File file) throws Throwable {
        RandomAccessFile randomAccessFile;
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

    public static InputStream f(ByteBuffer byteBuffer) {
        return new C0167a(byteBuffer);
    }
}
