package com.mbridge.msdk.foundation.same.net.wrapper;

import android.os.Handler;
import android.os.Looper;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.tracker.network.b0;
import com.mbridge.msdk.tracker.network.j;
import com.mbridge.msdk.tracker.network.q;
import com.mbridge.msdk.tracker.network.v;

/* JADX INFO: loaded from: classes5.dex */
public class i<T> implements j<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.mbridge.msdk.foundation.same.net.b<T> f35509a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f35510b = new Handler(Looper.getMainLooper());

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ v f35511a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ q f35512b;

        a(v vVar, q qVar) {
            this.f35511a = vVar;
            this.f35512b = qVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (i.this.f35509a != null) {
                    i.this.f35509a.onSuccess(i.this.a(this.f35511a, this.f35512b));
                }
            } catch (Exception e11) {
                o0.b("MBridgeRequestListenerWrapper", "onResponseSuccess error", e11);
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ v f35514a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ q f35515b;

        b(v vVar, q qVar) {
            this.f35514a = vVar;
            this.f35515b = qVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (i.this.f35509a != null) {
                    i.this.f35509a.onError(i.this.a(this.f35514a.f38693c, this.f35515b));
                }
            } catch (Exception e11) {
                o0.b("MBridgeRequestListenerWrapper", "onResponseError error", e11);
            }
        }
    }

    public i(com.mbridge.msdk.foundation.same.net.b<T> bVar) {
        this.f35509a = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.mbridge.msdk.foundation.same.net.e a(v<T> vVar, q qVar) {
        if (vVar == null) {
            return null;
        }
        return com.mbridge.msdk.foundation.same.net.e.a(vVar.f38691a, new com.mbridge.msdk.foundation.same.net.toolbox.a(qVar.f38615a, qVar.f38616b, qVar.f38618d));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.mbridge.msdk.foundation.same.net.exception.a a(b0 b0Var, q qVar) {
        if (b0Var == null) {
            return null;
        }
        com.mbridge.msdk.foundation.same.net.toolbox.a aVar = qVar != null ? new com.mbridge.msdk.foundation.same.net.toolbox.a(qVar.f38615a, qVar.f38616b, qVar.f38618d) : new com.mbridge.msdk.foundation.same.net.toolbox.a(0, null, null);
        if (b0Var.a() == 0) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(2, aVar, b0Var.getMessage());
        }
        if (b0Var.a() == 1) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(6, aVar, b0Var.getMessage());
        }
        if (b0Var.a() == 2) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(8, aVar, b0Var.getMessage());
        }
        if (b0Var.a() == 4) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(880041, aVar, b0Var.getMessage());
        }
        if (b0Var.a() == 5) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(8, aVar, b0Var.getMessage());
        }
        if (b0Var.a() == 6) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(15, aVar, b0Var.getMessage());
        }
        if (b0Var.a() == 7) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(7, aVar, b0Var.getMessage());
        }
        if (b0Var.a() == 8) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(10, aVar, b0Var.getMessage());
        }
        return b0Var.a() == 9 ? new com.mbridge.msdk.foundation.same.net.exception.a(4, aVar, b0Var.getMessage()) : new com.mbridge.msdk.foundation.same.net.exception.a(2, aVar, b0Var.getMessage());
    }

    @Override // com.mbridge.msdk.tracker.network.j
    public void a(com.mbridge.msdk.tracker.network.h<T> hVar, v<T> vVar, q qVar) {
        o0.a("MBridgeRequestListenerWrapper", "onResponseSuccess: " + vVar.f38691a);
        this.f35510b.post(new a(vVar, qVar));
    }

    @Override // com.mbridge.msdk.tracker.network.j
    public void b(com.mbridge.msdk.tracker.network.h<T> hVar, v<T> vVar, q qVar) {
        o0.a("MBridgeRequestListenerWrapper", "onResponseError: " + vVar.f38693c.a() + " " + vVar.f38693c.getMessage());
        this.f35510b.post(new b(vVar, qVar));
    }
}
