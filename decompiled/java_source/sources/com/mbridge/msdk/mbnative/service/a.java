package com.mbridge.msdk.mbnative.service;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbnative.controller.NativeController;
import com.mbridge.msdk.mbnative.controller.d;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.NativeListener;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private NativeController f36406a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Handler f36407b = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.mbridge.msdk.mbnative.listener.a f36408c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private NativeListener.NativeTrackingListener f36409d;

    /* JADX INFO: renamed from: com.mbridge.msdk.mbnative.service.a$a, reason: collision with other inner class name */
    class RunnableC0511a implements Runnable {
        RunnableC0511a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.f();
        }
    }

    public a() {
    }

    public a(com.mbridge.msdk.mbnative.listener.a aVar, NativeListener.NativeTrackingListener nativeTrackingListener) {
        this.f36408c = aVar;
        this.f36409d = nativeTrackingListener;
    }

    private void a(int i11, String str) {
        if (this.f36406a != null) {
            com.mbridge.msdk.mbnative.listener.a aVar = this.f36408c;
            if (aVar == null || !aVar.a()) {
                com.mbridge.msdk.mbnative.listener.a aVar2 = this.f36408c;
                if (aVar2 != null) {
                    aVar2.b();
                }
                this.f36406a.a(i11, str);
                return;
            }
            if (t0.h()) {
                f();
            } else {
                this.f36407b.post(new RunnableC0511a());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.f36408c.onAdLoadError("current request is loading");
        this.f36408c.b();
    }

    public static void preload(Map<String, Object> map, int i11) {
        o0.c("NativeProvider", "native provider preload");
        new d().a(map, i11);
    }

    public void a() {
        try {
            this.f36406a.d();
        } catch (Exception unused) {
            o0.b("NativeProvider", "clear cache failed");
        }
    }

    public void a(Context context, Resources resources, Map<String, Object> map) {
        this.f36406a = new NativeController(this.f36408c, this.f36409d, map, context);
    }

    public void a(View view, Campaign campaign) {
        o0.c("NativeProvider", "native provider registerView");
        NativeController nativeController = this.f36406a;
        if (nativeController == null) {
            return;
        }
        nativeController.a(campaign, view);
    }

    public void a(View view, List<View> list, Campaign campaign) {
        NativeController nativeController = this.f36406a;
        if (nativeController == null) {
            return;
        }
        nativeController.a(campaign, view, list);
    }

    public void a(com.mbridge.msdk.mbnative.listener.a aVar) {
        this.f36408c = aVar;
    }

    public void a(NativeListener.NativeTrackingListener nativeTrackingListener) {
        this.f36409d = nativeTrackingListener;
    }

    public void a(String str) {
        a(0, str);
    }

    public String b() {
        NativeController nativeController = this.f36406a;
        return nativeController != null ? nativeController.e() : "";
    }

    public void b(View view, Campaign campaign) {
        o0.c("NativeProvider", "native provider unregisterView");
        NativeController nativeController = this.f36406a;
        if (nativeController == null) {
            return;
        }
        nativeController.b(campaign, view);
    }

    public void b(View view, List<View> list, Campaign campaign) {
        o0.c("NativeProvider", "native provider unregisterView");
        NativeController nativeController = this.f36406a;
        if (nativeController == null) {
            return;
        }
        nativeController.b(campaign, view, list);
    }

    public String c() {
        NativeController nativeController = this.f36406a;
        return nativeController != null ? nativeController.g() : "";
    }

    public void d() {
        a(0, "");
    }

    public void e() {
        a(1, "");
    }

    public void g() {
        try {
            this.f36406a.i();
        } catch (Exception unused) {
            o0.b("NativeProvider", "release failed");
        }
    }
}
