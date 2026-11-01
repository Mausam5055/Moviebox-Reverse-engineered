package androidx.media3.exoplayer.upstream;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.q0;
import androidx.media3.common.util.u;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public final class Loader implements p {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final c f12947d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final c f12948e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final c f12949f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final c f12950g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.media3.exoplayer.util.c f12951a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LoadTask f12952b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private IOException f12953c;

    @SuppressLint({"HandlerLeak"})
    private final class LoadTask<T extends d> extends Handler implements Runnable {
        private static final int MSG_FATAL_ERROR = 4;
        private static final int MSG_FINISH = 2;
        private static final int MSG_IO_EXCEPTION = 3;
        private static final int MSG_START = 1;
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
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            ((b) androidx.media3.common.util.a.e(this.callback)).o(this.loadable, jElapsedRealtime, jElapsedRealtime - this.startTimeMs, this.errorCount);
            this.currentError = null;
            Loader.this.f12951a.execute((Runnable) androidx.media3.common.util.a.e(Loader.this.f12952b));
        }

        private void finish() {
            Loader.this.f12952b = null;
        }

        private long getRetryDelayMillis() {
            return Math.min((this.errorCount - 1) * 1000, 5000);
        }

        public void cancel(boolean z10) {
            this.released = z10;
            this.currentError = null;
            if (hasMessages(1)) {
                this.canceled = true;
                removeMessages(1);
                if (!z10) {
                    sendEmptyMessage(2);
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
                ((b) androidx.media3.common.util.a.e(this.callback)).q(this.loadable, jElapsedRealtime, jElapsedRealtime - this.startTimeMs, true);
                this.callback = null;
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (this.released) {
                return;
            }
            int i11 = message.what;
            if (i11 == 1) {
                execute();
                return;
            }
            if (i11 == 4) {
                throw ((Error) message.obj);
            }
            finish();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j11 = jElapsedRealtime - this.startTimeMs;
            b bVar = (b) androidx.media3.common.util.a.e(this.callback);
            if (this.canceled) {
                bVar.q(this.loadable, jElapsedRealtime, j11, false);
                return;
            }
            int i12 = message.what;
            if (i12 == 2) {
                try {
                    bVar.p(this.loadable, jElapsedRealtime, j11);
                    return;
                } catch (RuntimeException e11) {
                    u.d(TAG, "Unexpected exception handling load completed", e11);
                    Loader.this.f12953c = new UnexpectedLoaderException(e11);
                    return;
                }
            }
            if (i12 != 3) {
                return;
            }
            IOException iOException = (IOException) message.obj;
            this.currentError = iOException;
            int i13 = this.errorCount + 1;
            this.errorCount = i13;
            c cVarK = bVar.k(this.loadable, jElapsedRealtime, j11, iOException, i13);
            if (cVarK.f12954a == 3) {
                Loader.this.f12953c = this.currentError;
            } else if (cVarK.f12954a != 2) {
                if (cVarK.f12954a == 1) {
                    this.errorCount = 1;
                }
                start(cVarK.f12955b != C.TIME_UNSET ? cVarK.f12955b : getRetryDelayMillis());
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
                    q0.a("load:" + this.loadable.getClass().getSimpleName());
                    try {
                        this.loadable.load();
                        q0.b();
                    } catch (Throwable th2) {
                        q0.b();
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
                sendEmptyMessage(2);
            } catch (IOException e11) {
                if (this.released) {
                    return;
                }
                obtainMessage(3, e11).sendToTarget();
            } catch (Error e12) {
                if (!this.released) {
                    u.d(TAG, "Unexpected error loading stream", e12);
                    obtainMessage(4, e12).sendToTarget();
                }
                throw e12;
            } catch (Exception e13) {
                if (this.released) {
                    return;
                }
                u.d(TAG, "Unexpected exception loading stream", e13);
                obtainMessage(3, new UnexpectedLoaderException(e13)).sendToTarget();
            } catch (OutOfMemoryError e14) {
                if (this.released) {
                    return;
                }
                u.d(TAG, "OutOfMemory error loading stream", e14);
                obtainMessage(3, new UnexpectedLoaderException(e14)).sendToTarget();
            }
        }

        public void start(long j11) {
            androidx.media3.common.util.a.g(Loader.this.f12952b == null);
            Loader.this.f12952b = this;
            if (j11 > 0) {
                sendEmptyMessageDelayed(1, j11);
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
            String str;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unexpected ");
            sb2.append(th2.getClass().getSimpleName());
            if (th2.getMessage() != null) {
                str = ": " + th2.getMessage();
            } else {
                str = "";
            }
            sb2.append(str);
            super(sb2.toString(), th2);
        }
    }

    public interface b {
        c k(d dVar, long j11, long j12, IOException iOException, int i11);

        void o(d dVar, long j11, long j12, int i11);

        void p(d dVar, long j11, long j12);

        void q(d dVar, long j11, long j12, boolean z10);
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f12954a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f12955b;

        private c(int i11, long j11) {
            this.f12954a = i11;
            this.f12955b = j11;
        }

        public boolean c() {
            int i11 = this.f12954a;
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
        f12947d = g(false, C.TIME_UNSET);
        f12948e = g(true, C.TIME_UNSET);
        f12949f = new c(2, j11);
        f12950g = new c(3, j11);
    }

    public Loader(androidx.media3.exoplayer.util.c cVar) {
        this.f12951a = cVar;
    }

    public Loader(String str) {
        this(androidx.media3.exoplayer.util.b.a(a1.S0("ExoPlayer:Loader:" + str), new androidx.media3.common.util.m() { // from class: androidx.media3.exoplayer.upstream.n
            @Override // androidx.media3.common.util.m
            public final void accept(Object obj) {
                ((ExecutorService) obj).shutdown();
            }
        }));
    }

    public static c g(boolean z10, long j11) {
        return new c(z10 ? 1 : 0, j11);
    }

    public void e() {
        ((LoadTask) androidx.media3.common.util.a.i(this.f12952b)).cancel(false);
    }

    public void f() {
        this.f12953c = null;
    }

    public boolean h() {
        return this.f12953c != null;
    }

    public boolean i() {
        return this.f12952b != null;
    }

    public void j(int i11) throws IOException {
        IOException iOException = this.f12953c;
        if (iOException != null) {
            throw iOException;
        }
        LoadTask loadTask = this.f12952b;
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
        LoadTask loadTask = this.f12952b;
        if (loadTask != null) {
            loadTask.cancel(true);
        }
        if (eVar != null) {
            this.f12951a.execute(new ReleaseTask(eVar));
        }
        this.f12951a.release();
    }

    public long m(d dVar, b bVar, int i11) {
        Looper looper = (Looper) androidx.media3.common.util.a.i(Looper.myLooper());
        this.f12953c = null;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        new LoadTask(looper, dVar, bVar, i11, jElapsedRealtime).start(0L);
        return jElapsedRealtime;
    }

    @Override // androidx.media3.exoplayer.upstream.p
    public void maybeThrowError() throws IOException {
        j(Integer.MIN_VALUE);
    }
}
