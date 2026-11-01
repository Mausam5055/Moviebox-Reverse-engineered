package c10;

import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import org.chromium.net.UploadDataProvider;
import org.chromium.net.UploadDataSink;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {

    /* JADX INFO: renamed from: c10.a$a, reason: collision with other inner class name */
    class C0159a implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ File f16976a;

        C0159a(File file) {
            this.f16976a = file;
        }

        @Override // c10.a.d
        public FileChannel d() {
            return new FileInputStream(this.f16976a).getChannel();
        }
    }

    class b implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ParcelFileDescriptor f16977a;

        b(ParcelFileDescriptor parcelFileDescriptor) {
            this.f16977a = parcelFileDescriptor;
        }

        @Override // c10.a.d
        public FileChannel d() throws IOException {
            if (this.f16977a.getStatSize() != -1) {
                return new ParcelFileDescriptor.AutoCloseInputStream(this.f16977a).getChannel();
            }
            this.f16977a.close();
            throw new IllegalArgumentException("Not a file: " + this.f16977a);
        }
    }

    private static final class c extends UploadDataProvider {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ByteBuffer f16978a;

        private c(ByteBuffer byteBuffer) {
            this.f16978a = byteBuffer;
        }

        @Override // org.chromium.net.UploadDataProvider
        public long getLength() {
            return this.f16978a.limit();
        }

        @Override // org.chromium.net.UploadDataProvider
        public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) {
            if (!byteBuffer.hasRemaining()) {
                throw new IllegalStateException("Cronet passed a buffer with no bytes remaining");
            }
            if (byteBuffer.remaining() >= this.f16978a.remaining()) {
                byteBuffer.put(this.f16978a);
            } else {
                int iLimit = this.f16978a.limit();
                ByteBuffer byteBuffer2 = this.f16978a;
                byteBuffer.put(this.f16978a);
            }
            uploadDataSink.onReadSucceeded(false);
        }

        @Override // org.chromium.net.UploadDataProvider
        public void rewind(UploadDataSink uploadDataSink) {
            uploadDataSink.onRewindSucceeded();
        }
    }

    private interface d {
        FileChannel d();
    }

    private static final class e extends UploadDataProvider {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private volatile FileChannel f16979a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final d f16980b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Object f16981c;

        private e(d dVar) {
            this.f16981c = new Object();
            this.f16980b = dVar;
        }

        private FileChannel d() {
            if (this.f16979a == null) {
                synchronized (this.f16981c) {
                    try {
                        if (this.f16979a == null) {
                            this.f16979a = this.f16980b.d();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            return this.f16979a;
        }

        @Override // org.chromium.net.UploadDataProvider, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            FileChannel fileChannel = this.f16979a;
            if (fileChannel != null) {
                fileChannel.close();
            }
        }

        @Override // org.chromium.net.UploadDataProvider
        public long getLength() {
            return d().size();
        }

        @Override // org.chromium.net.UploadDataProvider
        public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) throws IOException {
            if (!byteBuffer.hasRemaining()) {
                throw new IllegalStateException("Cronet passed a buffer with no bytes remaining");
            }
            FileChannel fileChannelD = d();
            int i11 = 0;
            while (i11 == 0) {
                int i12 = fileChannelD.read(byteBuffer);
                if (i12 == -1) {
                    break;
                } else {
                    i11 += i12;
                }
            }
            uploadDataSink.onReadSucceeded(false);
        }

        @Override // org.chromium.net.UploadDataProvider
        public void rewind(UploadDataSink uploadDataSink) throws IOException {
            d().position(0L);
            uploadDataSink.onRewindSucceeded();
        }
    }

    public static UploadDataProvider a(ParcelFileDescriptor parcelFileDescriptor) {
        return new e(new b(parcelFileDescriptor));
    }

    public static UploadDataProvider b(File file) {
        return new e(new C0159a(file));
    }

    public static UploadDataProvider c(ByteBuffer byteBuffer) {
        return new c(byteBuffer.slice());
    }

    public static UploadDataProvider d(byte[] bArr) {
        return e(bArr, 0, bArr.length);
    }

    public static UploadDataProvider e(byte[] bArr, int i11, int i12) {
        return new c(ByteBuffer.wrap(bArr, i11, i12).slice());
    }
}
