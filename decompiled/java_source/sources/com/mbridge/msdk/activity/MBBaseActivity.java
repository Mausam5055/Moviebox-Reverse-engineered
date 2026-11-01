package com.mbridge.msdk.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.OrientationEventListener;
import android.view.WindowInsets;
import android.view.WindowManager;
import androidx.core.view.InputDeviceCompat;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.c1;
import com.mbridge.msdk.foundation.tools.o0;

/* JADX INFO: loaded from: classes4.dex */
public abstract class MBBaseActivity extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Display f34029a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private OrientationEventListener f34030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f34031c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f34032d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Runnable f34033e;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                MBBaseActivity.this.b();
            } catch (Exception e11) {
                o0.b("MBBaseActivity", e11.getMessage());
            }
        }
    }

    class b extends OrientationEventListener {
        b(Context context, int i11) {
            super(context, i11);
        }

        @Override // android.view.OrientationEventListener
        public void onOrientationChanged(int i11) {
            int rotation = MBBaseActivity.this.f34029a != null ? MBBaseActivity.this.f34029a.getRotation() : 0;
            if (rotation == 1 && MBBaseActivity.this.f34031c != 1) {
                MBBaseActivity.this.f34031c = 1;
                MBBaseActivity.this.getNotchParams();
                o0.b("MBBaseActivity", "Orientation Left");
                return;
            }
            if (rotation == 3 && MBBaseActivity.this.f34031c != 2) {
                MBBaseActivity.this.f34031c = 2;
                MBBaseActivity.this.getNotchParams();
                o0.b("MBBaseActivity", "Orientation Right");
            } else if (rotation == 0 && MBBaseActivity.this.f34031c != 3) {
                MBBaseActivity.this.f34031c = 3;
                MBBaseActivity.this.getNotchParams();
                o0.b("MBBaseActivity", "Orientation Top");
            } else {
                if (rotation != 2 || MBBaseActivity.this.f34031c == 4) {
                    return;
                }
                MBBaseActivity.this.f34031c = 4;
                MBBaseActivity.this.getNotchParams();
                o0.b("MBBaseActivity", "Orientation Bottom");
            }
        }
    }

    private int a() {
        if (this.f34029a == null) {
            if (Build.VERSION.SDK_INT >= 30) {
                this.f34029a = getDisplay();
            } else {
                this.f34029a = ((WindowManager) getSystemService("window")).getDefaultDisplay();
            }
        }
        Display display = this.f34029a;
        if (display != null) {
            return display.getRotation();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        int i11;
        int safeInsetLeft;
        int i12;
        int i13;
        int safeInsetBottom;
        DisplayCutout displayCutout;
        int i14;
        int i15 = Build.VERSION.SDK_INT;
        if (this.f34032d) {
            return;
        }
        WindowInsets rootWindowInsets = getWindow().getDecorView().getRootWindowInsets();
        int i16 = -1;
        if (rootWindowInsets == null || i15 < 28 || (displayCutout = rootWindowInsets.getDisplayCutout()) == null) {
            i11 = -1;
            safeInsetLeft = 0;
            i12 = 0;
            i13 = 0;
            safeInsetBottom = 0;
        } else {
            safeInsetLeft = displayCutout.getSafeInsetLeft();
            int safeInsetRight = displayCutout.getSafeInsetRight();
            int safeInsetTop = displayCutout.getSafeInsetTop();
            safeInsetBottom = displayCutout.getSafeInsetBottom();
            Display display = this.f34029a;
            int rotation = display != null ? display.getRotation() : a();
            if (this.f34031c == -1) {
                if (rotation == 0) {
                    i14 = 3;
                } else if (rotation == 1) {
                    i14 = 1;
                } else if (rotation == 2) {
                    i14 = 4;
                } else {
                    i14 = rotation == 3 ? 2 : -1;
                }
                this.f34031c = i14;
                o0.b("MBBaseActivity", this.f34031c + "");
            }
            if (rotation != 0) {
                if (rotation == 1) {
                    i16 = 90;
                } else if (rotation == 2) {
                    i16 = 180;
                } else if (rotation == 3) {
                    i16 = 270;
                }
                i11 = i16;
            } else {
                i11 = 0;
            }
            i12 = safeInsetRight;
            i13 = safeInsetTop;
        }
        setTopControllerPadding(i11, safeInsetLeft, i12, i13, safeInsetBottom);
        if (this.f34030b == null) {
            d();
        }
    }

    private void c() {
        try {
            getWindow().addFlags(67108864);
            getWindow().getDecorView().setSystemUiVisibility(InputDeviceCompat.SOURCE_TOUCHSCREEN);
        } catch (Throwable th2) {
            o0.b("MBBaseActivity", th2.getMessage());
        }
    }

    private void d() {
        b bVar = new b(this, 1);
        this.f34030b = bVar;
        if (bVar.canDetectOrientation()) {
            this.f34030b.enable();
        } else {
            this.f34030b.disable();
            this.f34030b = null;
        }
    }

    public void getNotchParams() {
        if (this.f34032d) {
            return;
        }
        this.f34033e = new a();
        getWindow().getDecorView().postDelayed(this.f34033e, 500L);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f34032d = false;
        try {
            requestWindowFeature(1);
            getWindow().setFlags(1024, 1024);
            getWindow().addFlags(512);
            c();
            a();
            c1.a(getWindow());
        } catch (Exception e11) {
            o0.b("MBBaseActivity", e11.getMessage());
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        this.f34032d = true;
        super.onDestroy();
        try {
            OrientationEventListener orientationEventListener = this.f34030b;
            if (orientationEventListener != null) {
                orientationEventListener.disable();
                this.f34030b = null;
            }
            if (this.f34033e != null) {
                getWindow().getDecorView().removeCallbacks(this.f34033e);
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("MBBaseActivity", e11.getMessage());
            }
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (com.mbridge.msdk.foundation.feedback.b.f35289f) {
            return;
        }
        getNotchParams();
        c();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        c();
    }

    public abstract void setTopControllerPadding(int i11, int i12, int i13, int i14, int i15);
}
