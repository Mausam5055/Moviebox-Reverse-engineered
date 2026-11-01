package com.amazonaws.services.s3.internal;

import com.amazonaws.AbortedException;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.OnFileDelete;
import com.amazonaws.services.s3.UploadObjectObserver;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;
import java.util.concurrent.Semaphore;

/* JADX INFO: loaded from: classes2.dex */
public class MultiFileOutputStream extends OutputStream implements OnFileDelete {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f18635c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private UploadObjectObserver f18638f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f18639g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f18640h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private FileOutputStream f18641i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f18642j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Semaphore f18643k;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f18636d = 5242880;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f18637e = Long.MAX_VALUE;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f18633a = new File(System.getProperty("java.io.tmpdir"));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f18634b = k() + "." + UUID.randomUUID();

    private void d() {
        Semaphore semaphore = this.f18643k;
        if (semaphore == null || this.f18637e == Long.MAX_VALUE) {
            return;
        }
        try {
            semaphore.acquire();
        } catch (InterruptedException e11) {
            throw new AbortedException(e11);
        }
    }

    private FileOutputStream h() throws IOException {
        if (this.f18642j) {
            throw new IOException("Output stream is already closed");
        }
        FileOutputStream fileOutputStream = this.f18641i;
        if (fileOutputStream == null || this.f18639g >= this.f18636d) {
            if (fileOutputStream != null) {
                fileOutputStream.close();
                this.f18638f.c(new PartCreationEvent(i(this.f18635c), this.f18635c, false, this));
            }
            this.f18639g = 0;
            this.f18635c++;
            d();
            File fileI = i(this.f18635c);
            fileI.deleteOnExit();
            this.f18641i = new FileOutputStream(fileI);
        }
        return this.f18641i;
    }

    static String k() {
        return new SimpleDateFormat("yyMMdd-hhmmss").format(new Date());
    }

    @Override // com.amazonaws.services.s3.OnFileDelete
    public void b(FileDeletionEvent fileDeletionEvent) {
        Semaphore semaphore = this.f18643k;
        if (semaphore != null) {
            semaphore.release();
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f18642j) {
            return;
        }
        this.f18642j = true;
        FileOutputStream fileOutputStream = this.f18641i;
        if (fileOutputStream != null) {
            fileOutputStream.close();
            File fileI = i(this.f18635c);
            if (fileI.length() != 0) {
                this.f18638f.c(new PartCreationEvent(i(this.f18635c), this.f18635c, true, this));
                return;
            }
            if (fileI.delete()) {
                return;
            }
            LogFactory.b(getClass()).a("Ignoring failure to delete empty file " + fileI);
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        FileOutputStream fileOutputStream = this.f18641i;
        if (fileOutputStream != null) {
            fileOutputStream.flush();
        }
    }

    public File i(int i11) {
        return new File(this.f18633a, this.f18634b + "." + i11);
    }

    @Override // java.io.OutputStream
    public void write(int i11) throws IOException {
        h().write(i11);
        this.f18639g++;
        this.f18640h++;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        if (bArr.length == 0) {
            return;
        }
        h().write(bArr);
        this.f18639g += bArr.length;
        this.f18640h += (long) bArr.length;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i11, int i12) throws IOException {
        if (bArr.length == 0) {
            return;
        }
        h().write(bArr, i11, i12);
        this.f18639g += i12;
        this.f18640h += (long) i12;
    }
}
