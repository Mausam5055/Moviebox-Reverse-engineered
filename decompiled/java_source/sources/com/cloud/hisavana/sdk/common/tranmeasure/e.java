package com.cloud.hisavana.sdk.common.tranmeasure;

import android.view.View;
import com.cloud.hisavana.sdk.e4;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CopyOnWriteArrayList f22120a = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f22121b = 10;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f22122a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f22123b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ d.b f22124c;

        a(Object obj, View view, d.b bVar) {
            this.f22122a = obj;
            this.f22123b = view;
            this.f22124c = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            e.c().b(this.f22122a).b(this.f22123b, this.f22124c);
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final e f22126a = new e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public d b(Object obj) {
        for (d dVar : this.f22120a) {
            if (dVar != null && dVar.d(obj)) {
                e4.b().d("ssp_measure", "MeasureSessionManager have existed session");
                return dVar;
            }
        }
        e4.b().d("ssp_measure", "MeasureSession create new session");
        return new d(obj);
    }

    public static e c() {
        return b.f22126a;
    }

    private boolean h() {
        return this.f22120a.size() > 0;
    }

    protected void d(d dVar) {
        e4.b().d("ssp_measure", "registerSession(注册一个 需要监控的 Session)");
        if (dVar == null || this.f22120a.contains(dVar)) {
            return;
        }
        this.f22120a.add(dVar);
        if (this.f22120a.size() > 10) {
            this.f22120a.remove(0);
        }
        if (h()) {
            Monitor.getInstance().start();
        }
    }

    public void e(Object obj, View view, d.b bVar) {
        if (obj == null || view == null || bVar == null) {
            e4.b().e("ssp_measure", "registerView: key or adView or listener is null");
        } else {
            HSScopeHelper.f23167a.e(new a(obj, view, bVar));
        }
    }

    protected void f(d dVar) {
        e4.b().d("ssp_measure", "unregisterSession(注销监控)");
        if (dVar != null) {
            this.f22120a.remove(dVar);
        }
        if (h()) {
            return;
        }
        Monitor.getInstance().end();
    }

    public void g(Object obj) {
        if (obj == null) {
            return;
        }
        for (d dVar : this.f22120a) {
            if (dVar != null && dVar.d(obj)) {
                e4.b().d("ssp_measure", "got existed session");
                dVar.a();
                return;
            }
        }
    }

    protected void i() {
        for (d dVar : this.f22120a) {
            if (dVar != null) {
                dVar.j();
            }
        }
    }
}
