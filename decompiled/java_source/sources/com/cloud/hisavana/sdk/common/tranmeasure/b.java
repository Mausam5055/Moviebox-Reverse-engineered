package com.cloud.hisavana.sdk.common.tranmeasure;

import android.os.Handler;
import android.os.Looper;
import com.cloud.hisavana.sdk.e4;

/* JADX INFO: loaded from: classes3.dex */
public class b extends Monitor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile Handler f22093a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f22094b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f f22095c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f.a f22096d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Runnable f22097e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Runnable f22098f;

    class a implements f.a {
        a() {
        }

        @Override // com.cloud.hisavana.sdk.common.tranmeasure.f.a
        public void a(boolean z10) {
            if (z10) {
                b.this.a();
            } else {
                b.this.c();
            }
        }
    }

    /* JADX INFO: renamed from: com.cloud.hisavana.sdk.common.tranmeasure.b$b, reason: collision with other inner class name */
    class RunnableC0303b implements Runnable {
        RunnableC0303b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.f22094b) {
                e.c().i();
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!b.this.f22094b || b.this.f22093a == null) {
                return;
            }
            b.this.f22093a.post(b.this.f22097e);
            b.this.f22093a.postDelayed(b.this.f22098f, 200L);
        }
    }

    protected b() {
        a aVar = new a();
        this.f22096d = aVar;
        this.f22097e = new RunnableC0303b();
        this.f22098f = new c();
        f fVar = new f();
        this.f22095c = fVar;
        fVar.c(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        try {
            if (Looper.myLooper() == null) {
                return;
            }
            this.f22094b = true;
            if (this.f22093a == null) {
                this.f22093a = new Handler(Looper.myLooper());
            }
            if (this.f22093a != null) {
                this.f22093a.post(this.f22097e);
                this.f22093a.postDelayed(this.f22098f, 200L);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.f22094b = false;
        if (this.f22093a != null) {
            this.f22093a.removeCallbacks(this.f22098f);
            this.f22093a = null;
        }
    }

    @Override // com.cloud.hisavana.sdk.common.tranmeasure.Monitor
    public void end() {
        try {
            e4.b().d("ssp_measure", "stop monitor");
            this.f22094b = false;
            f fVar = this.f22095c;
            if (fVar != null) {
                fVar.b();
            }
            c();
        } catch (Throwable unused) {
        }
    }

    @Override // com.cloud.hisavana.sdk.common.tranmeasure.Monitor
    public void start() {
        if (this.f22094b && this.f22093a != null && this.f22093a.hasMessages(0)) {
            e4.b().d("ssp_measure", "monitor is running");
            return;
        }
        e4.b().d("ssp_measure", "start monitor");
        a();
        this.f22095c.c(this.f22096d);
        this.f22095c.h();
    }
}
