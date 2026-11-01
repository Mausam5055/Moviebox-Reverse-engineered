package androidx.media3.common.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f10367a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final File f10368b;

    private static final class a extends OutputStream {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final FileOutputStream f10369a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f10370b = false;

        public a(File file) {
            this.f10369a = new FileOutputStream(file);
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f10370b) {
                return;
            }
            this.f10370b = true;
            flush();
            try {
                this.f10369a.getFD().sync();
            } catch (IOException e11) {
                u.i("AtomicFile", "Failed to sync file descriptor:", e11);
            }
            this.f10369a.close();
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            this.f10369a.flush();
        }

        @Override // java.io.OutputStream
        public void write(int i11) throws IOException {
            this.f10369a.write(i11);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            this.f10369a.write(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i11, int i12) throws IOException {
            this.f10369a.write(bArr, i11, i12);
        }
    }

    public b(File file) {
        this.f10367a = file;
        this.f10368b = new File(file.getPath() + ".bak");
    }

    private void e() {
        if (this.f10368b.exists()) {
            this.f10367a.delete();
            this.f10368b.renameTo(this.f10367a);
        }
    }

    public void a() {
        this.f10367a.delete();
        this.f10368b.delete();
    }

    public void b(OutputStream outputStream) throws IOException {
        outputStream.close();
        this.f10368b.delete();
    }

    public boolean c() {
        return this.f10367a.exists() || this.f10368b.exists();
    }

    public InputStream d() {
        e();
        return new FileInputStream(this.f10367a);
    }

    public OutputStream f() throws IOException {
        if (this.f10367a.exists()) {
            if (this.f10368b.exists()) {
                this.f10367a.delete();
            } else if (!this.f10367a.renameTo(this.f10368b)) {
                u.h("AtomicFile", "Couldn't rename file " + this.f10367a + " to backup file " + this.f10368b);
            }
        }
        try {
            return new a(this.f10367a);
        } catch (FileNotFoundException e11) {
            File parentFile = this.f10367a.getParentFile();
            if (parentFile == null || !parentFile.mkdirs()) {
                throw new IOException("Couldn't create " + this.f10367a, e11);
            }
            try {
                return new a(this.f10367a);
            } catch (FileNotFoundException e12) {
                throw new IOException("Couldn't create " + this.f10367a, e12);
            }
        }
    }
}
