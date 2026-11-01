package com.journeyapps.barcodescanner.camera;

import android.hardware.Camera;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes4.dex */
public final class a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f33958i = "a";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Collection f33959j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f33960a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f33961b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f33962c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Camera f33963d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f33964e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f33965f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Handler.Callback f33966g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Camera.AutoFocusCallback f33967h;

    /* JADX INFO: renamed from: com.journeyapps.barcodescanner.camera.a$a, reason: collision with other inner class name */
    class C0465a implements Handler.Callback {
        C0465a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != a.this.f33965f) {
                return false;
            }
            a.this.h();
            return true;
        }
    }

    class b implements Camera.AutoFocusCallback {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            a.this.f33961b = false;
            a.this.f();
        }

        @Override // android.hardware.Camera.AutoFocusCallback
        public void onAutoFocus(boolean z10, Camera camera) {
            a.this.f33964e.post(new Runnable() { // from class: com.journeyapps.barcodescanner.camera.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33970a.b();
                }
            });
        }
    }

    static {
        ArrayList arrayList = new ArrayList(2);
        f33959j = arrayList;
        arrayList.add("auto");
        arrayList.add("macro");
    }

    public a(Camera camera, CameraSettings cameraSettings) {
        C0465a c0465a = new C0465a();
        this.f33966g = c0465a;
        this.f33967h = new b();
        this.f33964e = new Handler(c0465a);
        this.f33963d = camera;
        String focusMode = camera.getParameters().getFocusMode();
        boolean z10 = cameraSettings.c() && f33959j.contains(focusMode);
        this.f33962c = z10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Current focus mode '");
        sb2.append(focusMode);
        sb2.append("'; use auto focus? ");
        sb2.append(z10);
        i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void f() {
        if (!this.f33960a && !this.f33964e.hasMessages(this.f33965f)) {
            Handler handler = this.f33964e;
            handler.sendMessageDelayed(handler.obtainMessage(this.f33965f), 2000L);
        }
    }

    private void g() {
        this.f33964e.removeMessages(this.f33965f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (!this.f33962c || this.f33960a || this.f33961b) {
            return;
        }
        try {
            this.f33963d.autoFocus(this.f33967h);
            this.f33961b = true;
        } catch (RuntimeException e11) {
            Log.w(f33958i, "Unexpected exception while focusing", e11);
            f();
        }
    }

    public void i() {
        this.f33960a = false;
        h();
    }

    public void j() {
        this.f33960a = true;
        this.f33961b = false;
        g();
        if (this.f33962c) {
            try {
                this.f33963d.cancelAutoFocus();
            } catch (RuntimeException e11) {
                Log.w(f33958i, "Unexpected exception while cancelling focusing", e11);
            }
        }
    }
}
