package com.journeyapps.barcodescanner.camera;

import android.content.Context;
import android.hardware.Camera;
import android.os.Build;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import xe.q;
import xe.r;

/* JADX INFO: loaded from: classes4.dex */
public final class h {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f33979n = "h";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Camera f33980a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Camera.CameraInfo f33981b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.journeyapps.barcodescanner.camera.a f33982c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private gd.b f33983d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f33984e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f33985f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private m f33987h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private q f33988i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private q f33989j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Context f33991l;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private CameraSettings f33986g = new CameraSettings();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f33990k = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final a f33992m = new a();

    private final class a implements Camera.PreviewCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private p f33993a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private q f33994b;

        public a() {
        }

        public void a(p pVar) {
            this.f33993a = pVar;
        }

        public void b(q qVar) {
            this.f33994b = qVar;
        }

        @Override // android.hardware.Camera.PreviewCallback
        public void onPreviewFrame(byte[] bArr, Camera camera) {
            q qVar = this.f33994b;
            p pVar = this.f33993a;
            if (qVar == null || pVar == null) {
                String unused = h.f33979n;
                if (pVar != null) {
                    pVar.a(new Exception("No resolution available"));
                    return;
                }
                return;
            }
            try {
                if (bArr == null) {
                    throw new NullPointerException("No preview data received");
                }
                r rVar = new r(bArr, qVar.f78234a, qVar.f78235b, camera.getParameters().getPreviewFormat(), h.this.g());
                if (h.this.f33981b.facing == 1) {
                    rVar.e(true);
                }
                pVar.b(rVar);
            } catch (RuntimeException e11) {
                Log.e(h.f33979n, "Camera preview failed", e11);
                pVar.a(e11);
            }
        }
    }

    public h(Context context) {
        this.f33991l = context;
    }

    private int c() {
        int iC = this.f33987h.c();
        int i11 = 0;
        if (iC != 0) {
            if (iC == 1) {
                i11 = 90;
            } else if (iC == 2) {
                i11 = 180;
            } else if (iC == 3) {
                i11 = 270;
            }
        }
        Camera.CameraInfo cameraInfo = this.f33981b;
        int i12 = cameraInfo.facing == 1 ? (360 - ((cameraInfo.orientation + i11) % 360)) % 360 : ((cameraInfo.orientation - i11) + 360) % 360;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Camera Display Orientation: ");
        sb2.append(i12);
        return i12;
    }

    private Camera.Parameters h() {
        Camera.Parameters parameters = this.f33980a.getParameters();
        String str = this.f33985f;
        if (str == null) {
            this.f33985f = parameters.flatten();
        } else {
            parameters.unflatten(str);
        }
        return parameters;
    }

    private static List j(Camera.Parameters parameters) {
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        ArrayList arrayList = new ArrayList();
        if (supportedPreviewSizes == null) {
            Camera.Size previewSize = parameters.getPreviewSize();
            if (previewSize != null) {
                new q(previewSize.width, previewSize.height);
                arrayList.add(new q(previewSize.width, previewSize.height));
            }
            return arrayList;
        }
        for (Camera.Size size : supportedPreviewSizes) {
            arrayList.add(new q(size.width, size.height));
        }
        return arrayList;
    }

    private void o(int i11) {
        this.f33980a.setDisplayOrientation(i11);
    }

    private void q(boolean z10) {
        Camera.Parameters parametersH = h();
        if (parametersH == null) {
            Log.w(f33979n, "Device error: no camera parameters are available. Proceeding without configuration.");
            return;
        }
        String str = f33979n;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Initial camera parameters: ");
        sb2.append(parametersH.flatten());
        if (z10) {
            Log.w(str, "In camera config safe mode -- most settings will not be honored");
        }
        c.g(parametersH, this.f33986g.a(), z10);
        if (!z10) {
            c.k(parametersH, false);
            if (this.f33986g.h()) {
                c.i(parametersH);
            }
            if (this.f33986g.e()) {
                c.c(parametersH);
            }
            if (this.f33986g.g()) {
                c.l(parametersH);
                c.h(parametersH);
                c.j(parametersH);
            }
        }
        List listJ = j(parametersH);
        if (listJ.size() == 0) {
            this.f33988i = null;
        } else {
            q qVarA = this.f33987h.a(listJ, k());
            this.f33988i = qVarA;
            parametersH.setPreviewSize(qVarA.f78234a, qVarA.f78235b);
        }
        if (Build.DEVICE.equals("glass-1")) {
            c.e(parametersH);
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Final camera parameters: ");
        sb3.append(parametersH.flatten());
        this.f33980a.setParameters(parametersH);
    }

    private void s() {
        try {
            int iC = c();
            this.f33990k = iC;
            o(iC);
        } catch (Exception unused) {
            Log.w(f33979n, "Failed to set rotation.");
        }
        try {
            q(false);
        } catch (Exception unused2) {
            try {
                q(true);
            } catch (Exception unused3) {
                Log.w(f33979n, "Camera rejected even safe-mode parameters! No configuration");
            }
        }
        Camera.Size previewSize = this.f33980a.getParameters().getPreviewSize();
        if (previewSize == null) {
            this.f33989j = this.f33988i;
        } else {
            this.f33989j = new q(previewSize.width, previewSize.height);
        }
        this.f33992m.b(this.f33989j);
    }

    public void d(i iVar) {
        Camera camera = this.f33980a;
        if (camera != null) {
            try {
                camera.setParameters(iVar.a(camera.getParameters()));
            } catch (RuntimeException e11) {
                Log.e(f33979n, "Failed to change camera parameters", e11);
            }
        }
    }

    public void e() {
        Camera camera = this.f33980a;
        if (camera != null) {
            camera.release();
            this.f33980a = null;
        }
    }

    public void f() {
        if (this.f33980a == null) {
            throw new RuntimeException("Camera not open");
        }
        s();
    }

    public int g() {
        return this.f33990k;
    }

    public q i() {
        if (this.f33989j == null) {
            return null;
        }
        return k() ? this.f33989j.d() : this.f33989j;
    }

    public boolean k() {
        int i11 = this.f33990k;
        if (i11 != -1) {
            return i11 % 180 != 0;
        }
        throw new IllegalStateException("Rotation not calculated yet. Call configure() first.");
    }

    public boolean l() {
        String flashMode;
        Camera.Parameters parameters = this.f33980a.getParameters();
        if (parameters == null || (flashMode = parameters.getFlashMode()) == null) {
            return false;
        }
        return "on".equals(flashMode) || "torch".equals(flashMode);
    }

    public void m() {
        Camera cameraB = hd.a.b(this.f33986g.b());
        this.f33980a = cameraB;
        if (cameraB == null) {
            throw new RuntimeException("Failed to open camera");
        }
        int iA = hd.a.a(this.f33986g.b());
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        this.f33981b = cameraInfo;
        Camera.getCameraInfo(iA, cameraInfo);
    }

    public void n(p pVar) {
        Camera camera = this.f33980a;
        if (camera == null || !this.f33984e) {
            return;
        }
        this.f33992m.a(pVar);
        camera.setOneShotPreviewCallback(this.f33992m);
    }

    public void p(CameraSettings cameraSettings) {
        this.f33986g = cameraSettings;
    }

    public void r(m mVar) {
        this.f33987h = mVar;
    }

    public void t(j jVar) throws IOException {
        jVar.a(this.f33980a);
    }

    public void u(boolean z10) {
        if (this.f33980a != null) {
            try {
                if (z10 != l()) {
                    com.journeyapps.barcodescanner.camera.a aVar = this.f33982c;
                    if (aVar != null) {
                        aVar.j();
                    }
                    Camera.Parameters parameters = this.f33980a.getParameters();
                    c.k(parameters, z10);
                    if (this.f33986g.f()) {
                        c.d(parameters, z10);
                    }
                    this.f33980a.setParameters(parameters);
                    com.journeyapps.barcodescanner.camera.a aVar2 = this.f33982c;
                    if (aVar2 != null) {
                        aVar2.i();
                    }
                }
            } catch (RuntimeException e11) {
                Log.e(f33979n, "Failed to set torch", e11);
            }
        }
    }

    public void v() {
        Camera camera = this.f33980a;
        if (camera == null || this.f33984e) {
            return;
        }
        camera.startPreview();
        this.f33984e = true;
        this.f33982c = new com.journeyapps.barcodescanner.camera.a(this.f33980a, this.f33986g);
        gd.b bVar = new gd.b(this.f33991l, this, this.f33986g);
        this.f33983d = bVar;
        bVar.d();
    }

    public void w() {
        com.journeyapps.barcodescanner.camera.a aVar = this.f33982c;
        if (aVar != null) {
            aVar.j();
            this.f33982c = null;
        }
        gd.b bVar = this.f33983d;
        if (bVar != null) {
            bVar.e();
            this.f33983d = null;
        }
        Camera camera = this.f33980a;
        if (camera == null || !this.f33984e) {
            return;
        }
        camera.stopPreview();
        this.f33992m.a(null);
        this.f33984e = false;
    }
}
