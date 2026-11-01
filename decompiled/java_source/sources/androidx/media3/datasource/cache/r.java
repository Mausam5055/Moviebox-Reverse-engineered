package androidx.media3.datasource.cache;

import androidx.media3.common.util.a1;
import java.io.BufferedOutputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
final class r extends BufferedOutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f10867a;

    public r(OutputStream outputStream) {
        super(outputStream);
    }

    public r(OutputStream outputStream, int i11) {
        super(outputStream, i11);
    }

    public void b(OutputStream outputStream) {
        androidx.media3.common.util.a.g(this.f10867a);
        ((BufferedOutputStream) this).out = outputStream;
        ((BufferedOutputStream) this).count = 0;
        this.f10867a = false;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        this.f10867a = true;
        flush();
        th = null;
        try {
            ((BufferedOutputStream) this).out.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        if (th != null) {
            a1.m1(th);
        }
    }
}
