package com.google.android.exoplayer2.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f27554a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final File f27555b;

    private static final class a extends OutputStream {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final FileOutputStream f27556a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f27557b = false;

        public a(File file) {
            this.f27556a = new FileOutputStream(file);
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f27557b) {
                return;
            }
            this.f27557b = true;
            flush();
            try {
                this.f27556a.getFD().sync();
            } catch (IOException e11) {
                s.j("AtomicFile", "Failed to sync file descriptor:", e11);
            }
            this.f27556a.close();
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            this.f27556a.flush();
        }

        @Override // java.io.OutputStream
        public void write(int i11) throws IOException {
            this.f27556a.write(i11);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            this.f27556a.write(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i11, int i12) throws IOException {
            this.f27556a.write(bArr, i11, i12);
        }
    }

    public b(File file) {
        this.f27554a = file;
        this.f27555b = new File(file.getPath() + ".bak");
    }

    private void e() {
        if (this.f27555b.exists()) {
            this.f27554a.delete();
            this.f27555b.renameTo(this.f27554a);
        }
    }

    public void a() {
        this.f27554a.delete();
        this.f27555b.delete();
    }

    public void b(OutputStream outputStream) throws IOException {
        outputStream.close();
        this.f27555b.delete();
    }

    public boolean c() {
        return this.f27554a.exists() || this.f27555b.exists();
    }

    public InputStream d() {
        e();
        return new FileInputStream(this.f27554a);
    }

    public OutputStream f() throws IOException {
        if (this.f27554a.exists()) {
            if (this.f27555b.exists()) {
                this.f27554a.delete();
            } else if (!this.f27554a.renameTo(this.f27555b)) {
                s.i("AtomicFile", "Couldn't rename file " + this.f27554a + " to backup file " + this.f27555b);
            }
        }
        try {
            return new a(this.f27554a);
        } catch (FileNotFoundException e11) {
            File parentFile = this.f27554a.getParentFile();
            if (parentFile == null || !parentFile.mkdirs()) {
                throw new IOException("Couldn't create " + this.f27554a, e11);
            }
            try {
                return new a(this.f27554a);
            } catch (FileNotFoundException e12) {
                throw new IOException("Couldn't create " + this.f27554a, e12);
            }
        }
    }
}
