package androidx.core.os;

import android.os.CancellationSignal;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f8159a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f8160b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f8161c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f8162d;

    public interface a {
        void onCancel();
    }

    private void c() {
        while (this.f8162d) {
            try {
                wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    public void a() {
        synchronized (this) {
            try {
                if (this.f8159a) {
                    return;
                }
                this.f8159a = true;
                this.f8162d = true;
                a aVar = this.f8160b;
                Object obj = this.f8161c;
                if (aVar != null) {
                    try {
                        aVar.onCancel();
                    } catch (Throwable th2) {
                        synchronized (this) {
                            this.f8162d = false;
                            notifyAll();
                            throw th2;
                        }
                    }
                }
                if (obj != null) {
                    ((CancellationSignal) obj).cancel();
                }
                synchronized (this) {
                    this.f8162d = false;
                    notifyAll();
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public void b(a aVar) {
        synchronized (this) {
            try {
                c();
                if (this.f8160b == aVar) {
                    return;
                }
                this.f8160b = aVar;
                if (this.f8159a && aVar != null) {
                    aVar.onCancel();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
