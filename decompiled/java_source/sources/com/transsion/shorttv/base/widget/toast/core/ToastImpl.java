package com.transsion.shorttv.base.widget.toast.core;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.WindowManager;
import com.blankj.utilcode.util.a0;
import com.cloud.tmc.miniapp.utils.toast.ToastStrategy;
import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes6.dex */
final class ToastImpl {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Handler f52963g = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final gs.a f52964a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i f52965b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f52966c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f52967d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Runnable f52968e = new AnonymousClass1();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Runnable f52969f = new Runnable() { // from class: com.transsion.shorttv.base.widget.toast.core.ToastImpl.2
        @Override // java.lang.Runnable
        public void run() {
            WindowManager windowManager;
            try {
                try {
                    Activity activityA = ToastImpl.this.f52965b.a();
                    if (activityA != null && (windowManager = (WindowManager) activityA.getSystemService("window")) != null) {
                        windowManager.removeViewImmediate(ToastImpl.this.f52964a.getView());
                    }
                } catch (IllegalArgumentException e11) {
                    e11.printStackTrace();
                }
            } finally {
                ToastImpl.this.f52965b.c();
                ToastImpl.this.g(false);
            }
        }
    };

    /* JADX INFO: renamed from: com.transsion.shorttv.base.widget.toast.core.ToastImpl$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0() {
            ToastImpl.this.e();
        }

        @Override // java.lang.Runnable
        public void run() {
            Activity activityA = ToastImpl.this.f52965b.a();
            if (activityA == null || activityA.isFinishing() || activityA.isDestroyed()) {
                return;
            }
            int iA = (ToastImpl.this.f52964a.getView() == null || !(ToastImpl.this.f52964a.getView().getTag() instanceof Integer)) ? -2 : a0.a(((Integer) ToastImpl.this.f52964a.getView().getTag()).intValue());
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.height = -2;
            layoutParams.width = iA;
            layoutParams.format = -3;
            layoutParams.windowAnimations = 16973828;
            if (ToastImpl.this.f52964a.a()) {
                layoutParams.flags = Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE;
            } else {
                layoutParams.flags = 152;
            }
            layoutParams.packageName = ToastImpl.this.f52966c;
            layoutParams.gravity = ToastImpl.this.f52964a.getGravity();
            layoutParams.x = ToastImpl.this.f52964a.getXOffset();
            layoutParams.y = ToastImpl.this.f52964a.getYOffset();
            layoutParams.verticalMargin = ToastImpl.this.f52964a.getVerticalMargin();
            layoutParams.horizontalMargin = ToastImpl.this.f52964a.getHorizontalMargin();
            WindowManager windowManager = (WindowManager) activityA.getSystemService("window");
            if (windowManager == null) {
                return;
            }
            try {
                windowManager.addView(ToastImpl.this.f52964a.getView(), layoutParams);
                ToastImpl.f52963g.postDelayed(new Runnable() { // from class: com.transsion.shorttv.base.widget.toast.core.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f52983a.lambda$run$0();
                    }
                }, ToastImpl.this.f52964a.getDuration() == 1 ? ToastStrategy.LONG_DURATION_TIMEOUT : 2000L);
                ToastImpl.this.f52965b.b(ToastImpl.this);
                ToastImpl.this.g(true);
            } catch (WindowManager.BadTokenException | IllegalStateException e11) {
                e11.printStackTrace();
            }
        }
    }

    ToastImpl(Activity activity, gs.a aVar) {
        this.f52964a = aVar;
        this.f52966c = activity.getPackageName();
        this.f52965b = new i(activity);
    }

    void e() {
        if (f()) {
            Handler handler = f52963g;
            handler.removeCallbacks(this.f52969f);
            handler.post(this.f52969f);
        }
    }

    boolean f() {
        return this.f52967d;
    }

    void g(boolean z10) {
        this.f52967d = z10;
    }

    void h() {
        if (f()) {
            return;
        }
        Handler handler = f52963g;
        handler.removeCallbacks(this.f52968e);
        handler.post(this.f52968e);
    }
}
