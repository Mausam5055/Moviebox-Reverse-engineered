package com.google.android.exoplayer2.upstream;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.m0;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes3.dex */
public final class Loader implements a0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final c f27244d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final c f27245e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final c f27246f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final c f27247g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ExecutorService f27248a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LoadTask f27249b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private IOException f27250c;

    @SuppressLint({"HandlerLeak"})
    private final class LoadTask<T extends d> extends Handler implements Runnable {
        private static final int MSG_FATAL_ERROR = 3;
        private static final int MSG_FINISH = 1;
        private static final int MSG_IO_EXCEPTION = 2;
        private static final int MSG_START = 0;
        private static final String TAG = "LoadTask";

        @Nullable
        private b callback;
        private boolean canceled;

        @Nullable
        private IOException currentError;
        public final int defaultMinRetryCount;
        private int errorCount;

        @Nullable
        private Thread executorThread;
        private final T loadable;
        private volatile boolean released;
        private final long startTimeMs;

        public LoadTask(Looper looper, T t11, b bVar, int i11, long j11) {
            super(looper);
            this.loadable = t11;
            this.callback = bVar;
            this.defaultMinRetryCount = i11;
            this.startTimeMs = j11;
        }

        private void execute() {
            this.currentError = null;
            Loader.this.f27248a.execute((Runnable) com.google.android.exoplayer2.util.a.e(Loader.this.f27249b));
        }

        private void finish() {
            Loader.this.f27249b = null;
        }

        private long getRetryDelayMillis() {
            return Math.min((this.errorCount - 1) * 1000, 5000);
        }

        public void cancel(boolean z10) {
            this.released = z10;
            this.currentError = null;
            if (hasMessages(0)) {
                this.canceled = true;
                removeMessages(0);
                if (!z10) {
                    sendEmptyMessage(1);
                }
            } else {
                synchronized (this) {
                    try {
                        this.canceled = true;
                        this.loadable.cancelLoad();
                        Thread thread = this.executorThread;
                        if (thread != null) {
                            thread.interrupt();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            if (z10) {
                finish();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                ((b) com.google.android.exoplayer2.util.a.e(this.callback)).j(this.loadable, jElapsedRealtime, jElapsedRealtime - this.startTimeMs, true);
                this.callback = null;
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (this.released) {
                return;
            }
            int i11 = message.what;
            if (i11 == 0) {
                execute();
                return;
            }
            if (i11 == 3) {
                throw ((Error) message.obj);
            }
            finish();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j11 = jElapsedRealtime - this.startTimeMs;
            b bVar = (b) com.google.android.exoplayer2.util.a.e(this.callback);
            if (this.canceled) {
                bVar.j(this.loadable, jElapsedRealtime, j11, false);
                return;
            }
            int i12 = message.what;
            if (i12 == 1) {
                try {
                    bVar.l(this.loadable, jElapsedRealtime, j11);
                    return;
                } catch (RuntimeException e11) {
                    com.google.android.exoplayer2.util.s.d(TAG, "Unexpected exception handling load completed", e11);
                    Loader.this.f27250c = new UnexpectedLoaderException(e11);
                    return;
                }
            }
            if (i12 != 2) {
                return;
            }
            IOException iOException = (IOException) message.obj;
            this.currentError = iOException;
            int i13 = this.errorCount + 1;
            this.errorCount = i13;
            c cVarN = bVar.n(this.loadable, jElapsedRealtime, j11, iOException, i13);
            if (cVarN.f27251a == 3) {
                Loader.this.f27250c = this.currentError;
            } else if (cVarN.f27251a != 2) {
                if (cVarN.f27251a == 1) {
                    this.errorCount = 1;
                }
                start(cVarN.f27252b != C.TIME_UNSET ? cVarN.f27252b : getRetryDelayMillis());
            }
        }

        public void maybeThrowError(int i11) throws IOException {
            IOException iOException = this.currentError;
            if (iOException != null && this.errorCount > i11) {
                throw iOException;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z10;
            try {
                synchronized (this) {
                    z10 = this.canceled;
                    this.executorThread = Thread.currentThread();
                }
                if (!z10) {
                    m0.a("load:" + this.loadable.getClass().getSimpleName());
                    try {
                        this.loadable.load();
                        m0.c();
                    } catch (Throwable th2) {
                        m0.c();
                        throw th2;
                    }
                }
                synchronized (this) {
                    this.executorThread = null;
                    Thread.interrupted();
                }
                if (this.released) {
                    return;
                }
                sendEmptyMessage(1);
            } catch (IOException e11) {
                if (this.released) {
                    return;
                }
                obtainMessage(2, e11).sendToTarget();
            } catch (Error e12) {
                if (!this.released) {
                    com.google.android.exoplayer2.util.s.d(TAG, "Unexpected error loading stream", e12);
                    obtainMessage(3, e12).sendToTarget();
                }
                throw e12;
            } catch (Exception e13) {
                if (this.released) {
                    return;
                }
                com.google.android.exoplayer2.util.s.d(TAG, "Unexpected exception loading stream", e13);
                obtainMessage(2, new UnexpectedLoaderException(e13)).sendToTarget();
            } catch (OutOfMemoryError e14) {
                if (this.released) {
                    return;
                }
                com.google.android.exoplayer2.util.s.d(TAG, "OutOfMemory error loading stream", e14);
                obtainMessage(2, new UnexpectedLoaderException(e14)).sendToTarget();
            }
        }

        public void start(long j11) {
            com.google.android.exoplayer2.util.a.g(Loader.this.f27249b == null);
            Loader.this.f27249b = this;
            if (j11 > 0) {
                sendEmptyMessageDelayed(0, j11);
            } else {
                execute();
            }
        }
    }

    private static final class ReleaseTask implements Runnable {
        private final e callback;

        public ReleaseTask(e eVar) {
            this.callback = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.callback.onLoaderReleased();
        }
    }

    public static final class UnexpectedLoaderException extends IOException {
        public UnexpectedLoaderException(Throwable th2) {
            super("Unexpected " + th2.getClass().getSimpleName() + ": " + th2.getMessage(), th2);
        }
    }

    public interface b {
        void j(d dVar, long j11, long j12, boolean z10);

        void l(d dVar, long j11, long j12);

        c n(d dVar, long j11, long j12, IOException iOException, int i11);
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f27251a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f27252b;

        private c(int i11, long j11) {
            this.f27251a = i11;
            this.f27252b = j11;
        }

        public boolean c() {
            int i11 = this.f27251a;
            return i11 == 0 || i11 == 1;
        }
    }

    public interface d {
        void cancelLoad();

        void load();
    }

    public interface e {
        void onLoaderReleased();
    }

    static {
        long j11 = C.TIME_UNSET;
        f27244d = g(false, C.TIME_UNSET);
        f27245e = g(true, C.TIME_UNSET);
        f27246f = new c(2, j11);
        f27247g = new c(3, j11);
    }

    public Loader(String str) {
        this.f27248a = p0.C0("ExoPlayer:Loader:" + str);
    }

    public static c g(boolean z10, long j11) {
        return new c(z10 ? 1 : 0, j11);
    }

    public void e() {
        ((LoadTask) com.google.android.exoplayer2.util.a.i(this.f27249b)).cancel(false);
    }

    public void f() {
        this.f27250c = null;
    }

    public boolean h() {
        return this.f27250c != null;
    }

    public boolean i() {
        return this.f27249b != null;
    }

    public void j(int i11) throws IOException {
        IOException iOException = this.f27250c;
        if (iOException != null) {
            throw iOException;
        }
        LoadTask loadTask = this.f27249b;
        if (loadTask != null) {
            if (i11 == Integer.MIN_VALUE) {
                i11 = loadTask.defaultMinRetryCount;
            }
            loadTask.maybeThrowError(i11);
        }
    }

    public void k() {
        l(null);
    }

    public void l(e eVar) {
        LoadTask loadTask = this.f27249b;
        if (loadTask != null) {
            loadTask.cancel(true);
        }
        if (eVar != null) {
            this.f27248a.execute(new ReleaseTask(eVar));
        }
        this.f27248a.shutdown();
    }

    public long m(d dVar, b bVar, int i11) {
        Looper looper = (Looper) com.google.android.exoplayer2.util.a.i(Looper.myLooper());
        this.f27250c = null;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        new LoadTask(looper, dVar, bVar, i11, jElapsedRealtime).start(0L);
        return jElapsedRealtime;
    }

    @Override // com.google.android.exoplayer2.upstream.a0
    public void maybeThrowError() throws IOException {
        j(Integer.MIN_VALUE);
    }
}
