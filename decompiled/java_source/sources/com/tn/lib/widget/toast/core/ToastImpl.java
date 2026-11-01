package com.tn.lib.widget.toast.core;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.WindowManager;
import com.blankj.utilcode.util.a0;
import com.cloud.tmc.miniapp.utils.toast.ToastStrategy;
import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes4.dex */
final class ToastImpl {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Handler f41452g = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final vh.a f41453a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i f41454b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f41455c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f41456d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Runnable f41457e = new AnonymousClass1();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Runnable f41458f = new Runnable() { // from class: com.tn.lib.widget.toast.core.ToastImpl.2
        @Override // java.lang.Runnable
        public void run() {
            WindowManager windowManager;
            try {
                try {
                    Activity activityA = ToastImpl.this.f41454b.a();
                    if (activityA != null && (windowManager = (WindowManager) activityA.getSystemService("window")) != null) {
                        windowManager.removeViewImmediate(ToastImpl.this.f41453a.c());
                    }
                } catch (IllegalArgumentException e11) {
                    e11.printStackTrace();
                }
            } finally {
                ToastImpl.this.f41454b.c();
                ToastImpl.this.g(false);
            }
        }
    };

    /* JADX INFO: renamed from: com.tn.lib.widget.toast.core.ToastImpl$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0() {
            ToastImpl.this.e();
        }

        @Override // java.lang.Runnable
        public void run() {
            Activity activityA = ToastImpl.this.f41454b.a();
            if (activityA == null || activityA.isFinishing() || activityA.isDestroyed()) {
                return;
            }
            int iA = (ToastImpl.this.f41453a.c() == null || !(ToastImpl.this.f41453a.c().getTag() instanceof Integer)) ? -2 : a0.a(((Integer) ToastImpl.this.f41453a.c().getTag()).intValue());
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.height = -2;
            layoutParams.width = iA;
            layoutParams.format = -3;
            layoutParams.windowAnimations = 16973828;
            if (ToastImpl.this.f41453a.a()) {
                layoutParams.flags = Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE;
            } else {
                layoutParams.flags = 152;
            }
            layoutParams.packageName = ToastImpl.this.f41455c;
            layoutParams.gravity = ToastImpl.this.f41453a.getGravity();
            layoutParams.x = ToastImpl.this.f41453a.getXOffset();
            layoutParams.y = ToastImpl.this.f41453a.getYOffset();
            layoutParams.verticalMargin = ToastImpl.this.f41453a.getVerticalMargin();
            layoutParams.horizontalMargin = ToastImpl.this.f41453a.getHorizontalMargin();
            WindowManager windowManager = (WindowManager) activityA.getSystemService("window");
            if (windowManager == null) {
                return;
            }
            try {
                windowManager.addView(ToastImpl.this.f41453a.c(), layoutParams);
                ToastImpl.f41452g.postDelayed(new Runnable() { // from class: com.tn.lib.widget.toast.core.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f41473a.lambda$run$0();
                    }
                }, ToastImpl.this.f41453a.getDuration() == 1 ? ToastStrategy.LONG_DURATION_TIMEOUT : 2000L);
                ToastImpl.this.f41454b.b(ToastImpl.this);
                ToastImpl.this.g(true);
            } catch (WindowManager.BadTokenException | IllegalStateException e11) {
                e11.printStackTrace();
            }
        }
    }

    ToastImpl(Activity activity, vh.a aVar) {
        this.f41453a = aVar;
        this.f41455c = activity.getPackageName();
        this.f41454b = new i(activity);
    }

    void e() {
        if (f()) {
            Handler handler = f41452g;
            handler.removeCallbacks(this.f41458f);
            handler.post(this.f41458f);
        }
    }

    boolean f() {
        return this.f41456d;
    }

    void g(boolean z10) {
        this.f41456d = z10;
    }

    void h() {
        if (f()) {
            return;
        }
        Handler handler = f41452g;
        handler.removeCallbacks(this.f41457e);
        handler.post(this.f41457e);
    }
}
