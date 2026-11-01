package com.transsion.startup.pref.anr;

import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public class ANRWatchDog extends Thread {
    private static final int DEFAULT_ANR_TIMEOUT = 5000;
    private d _anrInterceptor;
    private e _anrListener;
    private boolean _ignoreDebugger;
    private f _interruptionListener;
    private boolean _logThreadsWithoutStackTrace;
    private String _namePrefix;
    private volatile boolean _reported;
    private volatile long _tick;
    private final Runnable _ticker;
    private final int _timeoutInterval;
    private final Handler _uiHandler;
    private static final e DEFAULT_ANR_LISTENER = new a();
    private static final d DEFAULT_ANR_INTERCEPTOR = new b();
    private static final f DEFAULT_INTERRUPTION_LISTENER = new c();

    class a implements e {
        a() {
        }

        @Override // com.transsion.startup.pref.anr.ANRWatchDog.e
        public void a(ANRError aNRError) {
            throw aNRError;
        }
    }

    class b implements d {
        b() {
        }

        @Override // com.transsion.startup.pref.anr.ANRWatchDog.d
        public long a(long j11) {
            return 0L;
        }
    }

    class c implements f {
        c() {
        }

        @Override // com.transsion.startup.pref.anr.ANRWatchDog.f
        public void a(InterruptedException interruptedException) {
            Log.w("ANRWatchdog", "Interrupted: " + interruptedException.getMessage());
        }
    }

    public interface d {
        long a(long j11);
    }

    public interface e {
        void a(ANRError aNRError);
    }

    public interface f {
        void a(InterruptedException interruptedException);
    }

    public ANRWatchDog() {
        this(5000);
    }

    public ANRWatchDog(int i11) {
        this._anrListener = DEFAULT_ANR_LISTENER;
        this._anrInterceptor = DEFAULT_ANR_INTERCEPTOR;
        this._interruptionListener = DEFAULT_INTERRUPTION_LISTENER;
        this._uiHandler = new Handler(Looper.getMainLooper());
        this._namePrefix = "";
        this._logThreadsWithoutStackTrace = false;
        this._ignoreDebugger = false;
        this._tick = 0L;
        this._reported = false;
        this._ticker = new Runnable() { // from class: com.transsion.startup.pref.anr.ANRWatchDog.4
            @Override // java.lang.Runnable
            public void run() {
                ANRWatchDog.this._tick = 0L;
                ANRWatchDog.this._reported = false;
            }
        };
        this._timeoutInterval = i11;
    }

    public int getTimeoutInterval() {
        return this._timeoutInterval;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        setName("|ANR-WatchDog|");
        long jA = this._timeoutInterval;
        while (!isInterrupted()) {
            boolean z10 = this._tick == 0;
            this._tick += jA;
            if (z10) {
                this._uiHandler.post(this._ticker);
            }
            try {
                Thread.sleep(jA);
                if (this._tick != 0 && !this._reported) {
                    if (this._ignoreDebugger || !(Debug.isDebuggerConnected() || Debug.waitingForDebugger())) {
                        jA = this._anrInterceptor.a(this._tick);
                        if (jA <= 0) {
                            this._anrListener.a(ANRError.NewMainOnly(this._tick));
                            jA = this._timeoutInterval;
                            this._reported = true;
                        }
                    } else {
                        lg.a.c("ANRWatchdog", "An ANR was detected but ignored because the debugger is connected (you can prevent this with setIgnoreDebugger(true))", false);
                        this._reported = true;
                    }
                }
            } catch (InterruptedException e11) {
                this._interruptionListener.a(e11);
                return;
            } catch (Exception unused) {
                return;
            }
        }
    }

    @NonNull
    public ANRWatchDog setANRInterceptor(@Nullable d dVar) {
        if (dVar == null) {
            this._anrInterceptor = DEFAULT_ANR_INTERCEPTOR;
        } else {
            this._anrInterceptor = dVar;
        }
        return this;
    }

    @NonNull
    public ANRWatchDog setANRListener(@Nullable e eVar) {
        if (eVar == null) {
            this._anrListener = DEFAULT_ANR_LISTENER;
        } else {
            this._anrListener = eVar;
        }
        return this;
    }

    @NonNull
    public ANRWatchDog setIgnoreDebugger(boolean z10) {
        this._ignoreDebugger = z10;
        return this;
    }

    @NonNull
    public ANRWatchDog setInterruptionListener(@Nullable f fVar) {
        if (fVar == null) {
            this._interruptionListener = DEFAULT_INTERRUPTION_LISTENER;
        } else {
            this._interruptionListener = fVar;
        }
        return this;
    }

    @NonNull
    public ANRWatchDog setLogThreadsWithoutStackTrace(boolean z10) {
        this._logThreadsWithoutStackTrace = z10;
        return this;
    }

    @NonNull
    public ANRWatchDog setReportAllThreads() {
        this._namePrefix = "";
        return this;
    }

    @NonNull
    public ANRWatchDog setReportMainThreadOnly() {
        this._namePrefix = null;
        return this;
    }

    @NonNull
    public ANRWatchDog setReportThreadNamePrefix(@Nullable String str) {
        if (str == null) {
            str = "";
        }
        this._namePrefix = str;
        return this;
    }
}
