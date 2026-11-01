package com.journeyapps.barcodescanner.camera;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.google.zxing.client.android.R$id;
import xe.q;
import xe.s;

/* JADX INFO: loaded from: classes4.dex */
public class CameraInstance {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f33935n = "CameraInstance";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private k f33936a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private j f33937b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private h f33938c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handler f33939d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private m f33940e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Handler f33943h;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f33941f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f33942g = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private CameraSettings f33944i = new CameraSettings();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Runnable f33945j = new Runnable() { // from class: com.journeyapps.barcodescanner.camera.CameraInstance.1
        @Override // java.lang.Runnable
        public void run() {
            try {
                String unused = CameraInstance.f33935n;
                CameraInstance.this.f33938c.m();
            } catch (Exception e11) {
                CameraInstance.this.w(e11);
                Log.e(CameraInstance.f33935n, "Failed to open camera", e11);
            }
        }
    };

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Runnable f33946k = new Runnable() { // from class: com.journeyapps.barcodescanner.camera.CameraInstance.2
        @Override // java.lang.Runnable
        public void run() {
            try {
                String unused = CameraInstance.f33935n;
                CameraInstance.this.f33938c.f();
                if (CameraInstance.this.f33939d != null) {
                    CameraInstance.this.f33939d.obtainMessage(R$id.zxing_prewiew_size_ready, CameraInstance.this.q()).sendToTarget();
                }
            } catch (Exception e11) {
                CameraInstance.this.w(e11);
                Log.e(CameraInstance.f33935n, "Failed to configure camera", e11);
            }
        }
    };

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Runnable f33947l = new Runnable() { // from class: com.journeyapps.barcodescanner.camera.CameraInstance.3
        @Override // java.lang.Runnable
        public void run() {
            try {
                String unused = CameraInstance.f33935n;
                CameraInstance.this.f33938c.t(CameraInstance.this.f33937b);
                CameraInstance.this.f33938c.v();
            } catch (Exception e11) {
                CameraInstance.this.w(e11);
                Log.e(CameraInstance.f33935n, "Failed to start preview", e11);
            }
        }
    };

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Runnable f33948m = new Runnable() { // from class: com.journeyapps.barcodescanner.camera.CameraInstance.4
        @Override // java.lang.Runnable
        public void run() {
            try {
                String unused = CameraInstance.f33935n;
                CameraInstance.this.f33938c.w();
                CameraInstance.this.f33938c.e();
            } catch (Exception e11) {
                Log.e(CameraInstance.f33935n, "Failed to close camera", e11);
            }
            CameraInstance.this.f33942g = true;
            CameraInstance.this.f33939d.sendEmptyMessage(R$id.zxing_camera_closed);
            CameraInstance.this.f33936a.b();
        }
    };

    public CameraInstance(Context context) {
        s.a();
        this.f33936a = k.d();
        h hVar = new h(context);
        this.f33938c = hVar;
        hVar.p(this.f33944i);
        this.f33943h = new Handler();
    }

    private void F() {
        if (!this.f33941f) {
            throw new IllegalStateException("CameraInstance is not open");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public q q() {
        return this.f33938c.i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s(i iVar) {
        this.f33938c.d(iVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(p pVar) {
        this.f33938c.n(pVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u(final p pVar) {
        if (this.f33941f) {
            this.f33936a.c(new Runnable() { // from class: com.journeyapps.barcodescanner.camera.g
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33977a.t(pVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v(boolean z10) {
        this.f33938c.u(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(Exception exc) {
        Handler handler = this.f33939d;
        if (handler != null) {
            handler.obtainMessage(R$id.zxing_camera_error, exc).sendToTarget();
        }
    }

    public void A(m mVar) {
        this.f33940e = mVar;
        this.f33938c.r(mVar);
    }

    public void B(Handler handler) {
        this.f33939d = handler;
    }

    public void C(j jVar) {
        this.f33937b = jVar;
    }

    public void D(final boolean z10) {
        s.a();
        if (this.f33941f) {
            this.f33936a.c(new Runnable() { // from class: com.journeyapps.barcodescanner.camera.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33974a.v(z10);
                }
            });
        }
    }

    public void E() {
        s.a();
        F();
        this.f33936a.c(this.f33947l);
    }

    public void m(final i iVar) {
        s.a();
        if (this.f33941f) {
            this.f33936a.c(new Runnable(iVar) { // from class: com.journeyapps.barcodescanner.camera.f
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33976a.s(null);
                }
            });
        }
    }

    public void n() {
        s.a();
        if (this.f33941f) {
            this.f33936a.c(this.f33948m);
        } else {
            this.f33942g = true;
        }
        this.f33941f = false;
    }

    public void o() {
        s.a();
        F();
        this.f33936a.c(this.f33946k);
    }

    public m p() {
        return this.f33940e;
    }

    public boolean r() {
        return this.f33942g;
    }

    public void x() {
        s.a();
        this.f33941f = true;
        this.f33942g = false;
        this.f33936a.e(this.f33945j);
    }

    public void y(final p pVar) {
        this.f33943h.post(new Runnable() { // from class: com.journeyapps.barcodescanner.camera.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f33972a.u(pVar);
            }
        });
    }

    public void z(CameraSettings cameraSettings) {
        if (this.f33941f) {
            return;
        }
        this.f33944i = cameraSettings;
        this.f33938c.p(cameraSettings);
    }
}
