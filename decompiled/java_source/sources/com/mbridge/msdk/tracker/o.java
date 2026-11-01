package com.mbridge.msdk.tracker;

import android.util.Log;
import com.mbridge.msdk.tracker.network.b0;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private r f38695a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f38696b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final p f38697c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final w f38698d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f38699e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.mbridge.msdk.tracker.network.u f38700f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Executor f38701g;

    class a implements ThreadFactory {
        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "MBridgeReportResponseThread");
        }
    }

    private static final class b implements com.mbridge.msdk.tracker.network.v.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final r f38703a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final t f38704b;

        public b(r rVar, t tVar) {
            this.f38703a = rVar;
            this.f38704b = tVar;
        }

        @Override // com.mbridge.msdk.tracker.network.v.a
        public void a(b0 b0Var) {
            int iA;
            int iB;
            String message;
            if (y.a(this.f38703a)) {
                if (b0Var != null) {
                    try {
                        iA = b0Var.a();
                        iB = b0Var.b();
                        message = b0Var.getMessage();
                    } catch (Exception e11) {
                        if (com.mbridge.msdk.tracker.a.f38496a) {
                            Log.e("TrackManager", "onErrorResponse error", e11);
                            return;
                        }
                        return;
                    }
                } else {
                    iB = 0;
                    message = "";
                    iA = 0;
                }
                this.f38703a.a(this.f38704b, 0, String.format("volleyError:%s,responseCode:%s,errorMessage:%s", Integer.valueOf(iA), Integer.valueOf(iB), message));
            }
        }
    }

    private static final class c implements com.mbridge.msdk.tracker.network.v.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final r f38705a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final t f38706b;

        public c(r rVar, t tVar) {
            this.f38705a = rVar;
            this.f38706b = tVar;
        }

        @Override // com.mbridge.msdk.tracker.network.v.b
        public void a(Object obj) {
            if (y.a(this.f38705a)) {
                try {
                    this.f38705a.a(this.f38706b);
                } catch (Exception e11) {
                    if (com.mbridge.msdk.tracker.a.f38496a) {
                        Log.e("TrackManager", "onResponse error", e11);
                    }
                }
            }
        }
    }

    public o(int i11, p pVar, w wVar, int i12) {
        this.f38696b = i11;
        this.f38697c = pVar;
        this.f38698d = wVar;
        this.f38699e = i12;
        this.f38701g = new ThreadPoolExecutor(i11, i11, 20L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new a(), new ThreadPoolExecutor.DiscardPolicy());
    }

    private v<Object> a(t tVar, Map<String, String> map, boolean z10) {
        v<Object> vVar = this.f38699e == 1 ? new v<>(this.f38697c.c(), 1, this.f38697c.a()) : new v<>(this.f38697c.c(), 1);
        vVar.a(map);
        vVar.a(false);
        vVar.c(true);
        vVar.b(true);
        vVar.a(this.f38698d);
        vVar.a(z10 ? com.mbridge.msdk.tracker.network.t.a.HIGH : com.mbridge.msdk.tracker.network.t.a.NORMAL);
        vVar.a((com.mbridge.msdk.tracker.network.v.b<Object>) new c(this.f38695a, tVar));
        vVar.a((com.mbridge.msdk.tracker.network.v.a) new b(this.f38695a, tVar));
        return vVar;
    }

    private void a() {
        if (y.a(this.f38700f)) {
            return;
        }
        com.mbridge.msdk.tracker.network.u uVarA = com.mbridge.msdk.tracker.network.toolbox.o.a(new com.mbridge.msdk.tracker.network.toolbox.b(this.f38697c.b()), new com.mbridge.msdk.tracker.network.f(this.f38701g), this.f38696b, null);
        this.f38700f = uVarA;
        uVarA.b();
    }

    public void a(r rVar) {
        this.f38695a = rVar;
    }

    public void b(t tVar, Map<String, String> map, boolean z10) {
        if (y.b(map)) {
            r rVar = this.f38695a;
            if (rVar != null) {
                try {
                    rVar.a(tVar, 0, "params is null");
                    return;
                } catch (Exception e11) {
                    if (com.mbridge.msdk.tracker.a.f38496a) {
                        Log.e("TrackManager", "send error", e11);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        try {
            a();
            this.f38700f.a(a(tVar, map, z10));
        } catch (Exception e12) {
            if (com.mbridge.msdk.tracker.a.f38496a) {
                Log.e("TrackManager", "send error", e12);
            }
            if (y.a(this.f38695a)) {
                this.f38695a.a(tVar, 0, e12.getMessage());
            }
        }
    }
}
