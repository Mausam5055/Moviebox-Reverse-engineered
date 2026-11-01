package com.transsion.shorttv_pugc.base.widget.toast.core;

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
    private static final Handler f53943g = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final lt.a f53944a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i f53945b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f53946c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f53947d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Runnable f53948e = new AnonymousClass1();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Runnable f53949f = new Runnable() { // from class: com.transsion.shorttv_pugc.base.widget.toast.core.ToastImpl.2
        @Override // java.lang.Runnable
        public void run() {
            WindowManager windowManager;
            try {
                try {
                    Activity activityA = ToastImpl.this.f53945b.a();
                    if (activityA != null && (windowManager = (WindowManager) activityA.getSystemService("window")) != null) {
                        windowManager.removeViewImmediate(ToastImpl.this.f53944a.getView());
                    }
                } catch (IllegalArgumentException e11) {
                    e11.printStackTrace();
                }
            } finally {
                ToastImpl.this.f53945b.c();
                ToastImpl.this.g(false);
            }
        }
    };

    /* JADX INFO: renamed from: com.transsion.shorttv_pugc.base.widget.toast.core.ToastImpl$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0() {
            ToastImpl.this.e();
        }

        @Override // java.lang.Runnable
        public void run() {
            Activity activityA = ToastImpl.this.f53945b.a();
            if (activityA == null || activityA.isFinishing() || activityA.isDestroyed()) {
                return;
            }
            int iA = (ToastImpl.this.f53944a.getView() == null || !(ToastImpl.this.f53944a.getView().getTag() instanceof Integer)) ? -2 : a0.a(((Integer) ToastImpl.this.f53944a.getView().getTag()).intValue());
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.height = -2;
            layoutParams.width = iA;
            layoutParams.format = -3;
            layoutParams.windowAnimations = 16973828;
            if (ToastImpl.this.f53944a.a()) {
                layoutParams.flags = Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE;
            } else {
                layoutParams.flags = 152;
            }
            layoutParams.packageName = ToastImpl.this.f53946c;
            layoutParams.gravity = ToastImpl.this.f53944a.getGravity();
            layoutParams.x = ToastImpl.this.f53944a.getXOffset();
            layoutParams.y = ToastImpl.this.f53944a.getYOffset();
            layoutParams.verticalMargin = ToastImpl.this.f53944a.getVerticalMargin();
            layoutParams.horizontalMargin = ToastImpl.this.f53944a.getHorizontalMargin();
            WindowManager windowManager = (WindowManager) activityA.getSystemService("window");
            if (windowManager == null) {
                return;
            }
            try {
                windowManager.addView(ToastImpl.this.f53944a.getView(), layoutParams);
                ToastImpl.f53943g.postDelayed(new Runnable() { // from class: com.transsion.shorttv_pugc.base.widget.toast.core.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f53963a.lambda$run$0();
                    }
                }, ToastImpl.this.f53944a.getDuration() == 1 ? ToastStrategy.LONG_DURATION_TIMEOUT : 2000L);
                ToastImpl.this.f53945b.b(ToastImpl.this);
                ToastImpl.this.g(true);
            } catch (WindowManager.BadTokenException | IllegalStateException e11) {
                e11.printStackTrace();
            }
        }
    }

    ToastImpl(Activity activity, lt.a aVar) {
        this.f53944a = aVar;
        this.f53946c = activity.getPackageName();
        this.f53945b = new i(activity);
    }

    void e() {
        if (f()) {
            Handler handler = f53943g;
            handler.removeCallbacks(this.f53949f);
            handler.post(this.f53949f);
        }
    }

    boolean f() {
        return this.f53947d;
    }

    void g(boolean z10) {
        this.f53947d = z10;
    }

    void h() {
        if (f()) {
            return;
        }
        Handler handler = f53943g;
        handler.removeCallbacks(this.f53948e);
        handler.post(this.f53948e);
    }
}
