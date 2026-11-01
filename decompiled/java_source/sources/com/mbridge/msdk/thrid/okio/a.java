package com.mbridge.msdk.thrid.okio;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class a extends t {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final long f38418h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final long f38419i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    static a f38420j;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f38421e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private a f38422f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f38423g;

    /* JADX INFO: renamed from: com.mbridge.msdk.thrid.okio.a$a, reason: collision with other inner class name */
    class C0552a implements r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ r f38424a;

        C0552a(r rVar) {
            this.f38424a = rVar;
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public void a(com.mbridge.msdk.thrid.okio.c cVar, long j11) throws IOException {
            u.a(cVar.f38432b, 0L, j11);
            while (true) {
                long j12 = 0;
                if (j11 <= 0) {
                    return;
                }
                o oVar = cVar.f38431a;
                while (j12 < PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                    j12 += (long) (oVar.f38466c - oVar.f38465b);
                    if (j12 >= j11) {
                        j12 = j11;
                        break;
                    }
                    oVar = oVar.f38469f;
                }
                a.this.h();
                try {
                    try {
                        this.f38424a.a(cVar, j12);
                        j11 -= j12;
                        a.this.a(true);
                    } catch (IOException e11) {
                        throw a.this.a(e11);
                    }
                } catch (Throwable th2) {
                    a.this.a(false);
                    throw th2;
                }
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public t b() {
            return a.this;
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            a.this.h();
            try {
                try {
                    this.f38424a.close();
                    a.this.a(true);
                } catch (IOException e11) {
                    throw a.this.a(e11);
                }
            } catch (Throwable th2) {
                a.this.a(false);
                throw th2;
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Flushable
        public void flush() throws IOException {
            a.this.h();
            try {
                try {
                    this.f38424a.flush();
                    a.this.a(true);
                } catch (IOException e11) {
                    throw a.this.a(e11);
                }
            } catch (Throwable th2) {
                a.this.a(false);
                throw th2;
            }
        }

        public String toString() {
            return "AsyncTimeout.sink(" + this.f38424a + ")";
        }
    }

    class b implements s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ s f38426a;

        b(s sVar) {
            this.f38426a = sVar;
        }

        @Override // com.mbridge.msdk.thrid.okio.s
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j11) throws IOException {
            a.this.h();
            try {
                try {
                    long jB = this.f38426a.b(cVar, j11);
                    a.this.a(true);
                    return jB;
                } catch (IOException e11) {
                    throw a.this.a(e11);
                }
            } catch (Throwable th2) {
                a.this.a(false);
                throw th2;
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.s
        public t b() {
            return a.this;
        }

        @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                try {
                    this.f38426a.close();
                    a.this.a(true);
                } catch (IOException e11) {
                    throw a.this.a(e11);
                }
            } catch (Throwable th2) {
                a.this.a(false);
                throw th2;
            }
        }

        public String toString() {
            return "AsyncTimeout.source(" + this.f38426a + ")";
        }
    }

    private static final class c extends Thread {
        c() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0017, code lost:
        
            r1.j();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            while (true) {
                try {
                    synchronized (a.class) {
                        try {
                            a aVarG = a.g();
                            if (aVarG != null) {
                                if (aVarG == a.f38420j) {
                                    a.f38420j = null;
                                    return;
                                }
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        f38418h = millis;
        f38419i = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    private static synchronized void a(a aVar, long j11, boolean z10) {
        try {
            if (f38420j == null) {
                f38420j = new a();
                new c().start();
            }
            long jNanoTime = System.nanoTime();
            if (j11 != 0 && z10) {
                aVar.f38423g = Math.min(j11, aVar.c() - jNanoTime) + jNanoTime;
            } else if (j11 != 0) {
                aVar.f38423g = j11 + jNanoTime;
            } else {
                if (!z10) {
                    throw new AssertionError();
                }
                aVar.f38423g = aVar.c();
            }
            long jB = aVar.b(jNanoTime);
            a aVar2 = f38420j;
            while (true) {
                a aVar3 = aVar2.f38422f;
                if (aVar3 == null || jB < aVar3.b(jNanoTime)) {
                    break;
                    break;
                }
                aVar2 = aVar2.f38422f;
            }
            aVar.f38422f = aVar2.f38422f;
            aVar2.f38422f = aVar;
            if (aVar2 == f38420j) {
                a.class.notify();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private static synchronized boolean a(a aVar) {
        a aVar2 = f38420j;
        while (aVar2 != null) {
            a aVar3 = aVar2.f38422f;
            if (aVar3 == aVar) {
                aVar2.f38422f = aVar.f38422f;
                aVar.f38422f = null;
                return false;
            }
            aVar2 = aVar3;
        }
        return true;
    }

    private long b(long j11) {
        return this.f38423g - j11;
    }

    @Nullable
    static a g() throws InterruptedException {
        a aVar = f38420j.f38422f;
        if (aVar == null) {
            long jNanoTime = System.nanoTime();
            a.class.wait(f38418h);
            if (f38420j.f38422f != null || System.nanoTime() - jNanoTime < f38419i) {
                return null;
            }
            return f38420j;
        }
        long jB = aVar.b(System.nanoTime());
        if (jB > 0) {
            long j11 = jB / 1000000;
            a.class.wait(j11, (int) (jB - (1000000 * j11)));
            return null;
        }
        f38420j.f38422f = aVar.f38422f;
        aVar.f38422f = null;
        return aVar;
    }

    public final r a(r rVar) {
        return new C0552a(rVar);
    }

    public final s a(s sVar) {
        return new b(sVar);
    }

    final IOException a(IOException iOException) throws IOException {
        return !i() ? iOException : b(iOException);
    }

    final void a(boolean z10) throws IOException {
        if (i() && z10) {
            throw b((IOException) null);
        }
    }

    protected IOException b(@Nullable IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final void h() {
        if (this.f38421e) {
            throw new IllegalStateException("Unbalanced enter/exit");
        }
        long jF = f();
        boolean zD = d();
        if (jF != 0 || zD) {
            this.f38421e = true;
            a(this, jF, zD);
        }
    }

    public final boolean i() {
        if (!this.f38421e) {
            return false;
        }
        this.f38421e = false;
        return a(this);
    }

    protected void j() {
    }
}
