package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.util.p0;
import java.io.BufferedOutputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
final class r extends BufferedOutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f27386a;

    public r(OutputStream outputStream) {
        super(outputStream);
    }

    public r(OutputStream outputStream, int i11) {
        super(outputStream, i11);
    }

    public void b(OutputStream outputStream) {
        com.google.android.exoplayer2.util.a.g(this.f27386a);
        ((BufferedOutputStream) this).out = outputStream;
        ((BufferedOutputStream) this).count = 0;
        this.f27386a = false;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        this.f27386a = true;
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
            p0.Q0(th);
        }
    }
}
