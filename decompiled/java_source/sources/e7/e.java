package e7;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes3.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f61577a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f61578b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f61579c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f61580d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Handler f61581e = new a();

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            long j11;
            synchronized (e.this) {
                try {
                    if (e.this.f61580d) {
                        return;
                    }
                    long jElapsedRealtime = e.this.f61579c - SystemClock.elapsedRealtime();
                    long j12 = 0;
                    if (jElapsedRealtime <= 0) {
                        e.this.e();
                    } else {
                        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                        e.this.f(jElapsedRealtime);
                        long jElapsedRealtime3 = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                        if (jElapsedRealtime < e.this.f61578b) {
                            j11 = jElapsedRealtime - jElapsedRealtime3;
                            if (j11 < 0) {
                            }
                            sendMessageDelayed(obtainMessage(1), j12);
                        } else {
                            j11 = e.this.f61578b - jElapsedRealtime3;
                            while (j11 < 0) {
                                j11 += e.this.f61578b;
                            }
                        }
                        j12 = j11;
                        sendMessageDelayed(obtainMessage(1), j12);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public e(long j11, long j12) {
        this.f61577a = j11;
        this.f61578b = j12;
    }

    public final synchronized void d() {
        this.f61580d = true;
        this.f61581e.removeMessages(1);
    }

    public abstract void e();

    public abstract void f(long j11);

    public final synchronized e g() {
        this.f61580d = false;
        if (this.f61577a <= 0) {
            e();
            return this;
        }
        this.f61579c = SystemClock.elapsedRealtime() + this.f61577a;
        Handler handler = this.f61581e;
        handler.sendMessage(handler.obtainMessage(1));
        return this;
    }
}
