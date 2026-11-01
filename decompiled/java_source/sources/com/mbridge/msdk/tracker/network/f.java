package com.mbridge.msdk.tracker.network;

import android.os.Handler;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public class f implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f38570a;

    class a implements Executor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Handler f38571a;

        a(Handler handler) {
            this.f38571a = handler;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f38571a.post(runnable);
        }
    }

    private static class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final t f38573a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final v f38574b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Runnable f38575c;

        public b(t tVar, v vVar, Runnable runnable) {
            this.f38573a = tVar;
            this.f38574b = vVar;
            this.f38575c = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f38573a.v()) {
                this.f38573a.c("canceled-at-delivery");
                return;
            }
            if (this.f38574b.a()) {
                this.f38573a.a(this.f38574b.f38691a);
            } else {
                this.f38573a.b(this.f38574b.f38693c);
            }
            if (this.f38574b.f38694d) {
                this.f38573a.a("intermediate-response");
            } else {
                this.f38573a.c("done");
            }
            Runnable runnable = this.f38575c;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public f(Handler handler) {
        this.f38570a = new a(handler);
    }

    public f(Executor executor) {
        this.f38570a = executor;
    }

    @Override // com.mbridge.msdk.tracker.network.w
    public void a(t<?> tVar, b0 b0Var) {
        tVar.a("post-error");
        this.f38570a.execute(new b(tVar, v.a(b0Var), null));
    }

    @Override // com.mbridge.msdk.tracker.network.w
    public void a(t<?> tVar, v<?> vVar) {
        a(tVar, vVar, null);
    }

    public void a(t<?> tVar, v<?> vVar, Runnable runnable) {
        tVar.w();
        tVar.a("post-response");
        this.f38570a.execute(new b(tVar, vVar, runnable));
    }
}
