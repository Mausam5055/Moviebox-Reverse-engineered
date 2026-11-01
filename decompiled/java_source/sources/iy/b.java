package iy;

import ak.g;
import ak.o;
import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.blankj.utilcode.util.a0;
import com.gyf.immersionbar.ImmersionBar;
import com.therouter.TheRouter;
import com.transsion.baseui.activity.BaseMusicFloatActivity;
import com.transsion.memberapi.IMemberApi;
import com.transsion.wrapperad.activate.ui.MemberPromotionView;
import com.transsion.wrapperad.activate.ui.SwipeUpCloseView;
import com.transsion.wrapperad.install.ui.AppInstalledTipView;
import com.transsion.wrapperad.install.ui.StreamerIconAdView;
import jg.c;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f65663a = new b();

    public static final class a implements Application.ActivityLifecycleCallbacks {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(Activity activity) {
            boolean z10 = activity instanceof BaseMusicFloatActivity;
            if (z10) {
                lg.a.C0828a.f(lg.a.f68839a, "AdSceneCoordinator", "飘带拉激活", false, 4, null);
                b.f65663a.g(activity);
            }
            IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
            if (!(iMemberApi != null ? iMemberApi.c() : false) && z10) {
                lg.a.C0828a.f(lg.a.f68839a, "AdSceneCoordinator", "会员激励拉激活", false, 4, null);
                b bVar = b.f65663a;
                bVar.f(activity);
                if (((BaseMusicFloatActivity) activity).isShowMemberPushViewTip()) {
                    bVar.h(activity);
                }
            }
            if (z10) {
                lg.a.C0828a.f(lg.a.f68839a, "AdSceneCoordinator", "飘带常规Icon", false, 4, null);
                b.f65663a.i(activity);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            Intrinsics.h(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            Intrinsics.h(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            Intrinsics.h(activity, "activity");
            b.f65663a.j(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(final Activity activity) {
            Intrinsics.h(activity, "activity");
            if (o.f646a.g() || g.f639a.b()) {
                return;
            }
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: iy.a
                @Override // java.lang.Runnable
                public final void run() {
                    b.a.b(activity);
                }
            }, 300L);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
            Intrinsics.h(activity, "activity");
            Intrinsics.h(outState, "outState");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            Intrinsics.h(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            Intrinsics.h(activity, "activity");
        }
    }

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f(Activity activity) {
        try {
            Result.Companion companion = Result.INSTANCE;
            View decorView = activity.getWindow().getDecorView();
            Intrinsics.f(decorView, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup = (ViewGroup) decorView;
            SwipeUpCloseView swipeUpCloseView = (SwipeUpCloseView) viewGroup.findViewWithTag("FLOAT_VIEW_TAG");
            if (swipeUpCloseView != null) {
                swipeUpCloseView.onActivityResume(activity);
                return;
            }
            SwipeUpCloseView swipeUpCloseView2 = new SwipeUpCloseView(activity, null, 0, 6, null);
            swipeUpCloseView2.setTag("FLOAT_VIEW_TAG");
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 49;
            layoutParams.topMargin = ImmersionBar.getStatusBarHeight(activity);
            layoutParams.leftMargin = a0.a(12.0f);
            layoutParams.rightMargin = a0.a(12.0f);
            viewGroup.addView(swipeUpCloseView2, layoutParams);
            swipeUpCloseView2.onActivityResume(activity);
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g(Activity activity) {
        try {
            Result.Companion companion = Result.INSTANCE;
            View decorView = activity.getWindow().getDecorView();
            Intrinsics.f(decorView, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup = (ViewGroup) decorView;
            AppInstalledTipView appInstalledTipView = (AppInstalledTipView) viewGroup.findViewWithTag("INSTALLED_FLOAT_VIEW_TAG");
            if (appInstalledTipView != null) {
                appInstalledTipView.onActivityResume(activity);
                return;
            }
            AppInstalledTipView appInstalledTipView2 = new AppInstalledTipView(activity, null, 0, 6, null);
            appInstalledTipView2.setTag("INSTALLED_FLOAT_VIEW_TAG");
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 81;
            BaseMusicFloatActivity baseMusicFloatActivity = activity instanceof BaseMusicFloatActivity ? (BaseMusicFloatActivity) activity : null;
            if (baseMusicFloatActivity != null) {
                layoutParams.bottomMargin = baseMusicFloatActivity.getTipViewBottomMargin();
            } else {
                layoutParams.bottomMargin = a0.a(12.0f);
            }
            viewGroup.addView(appInstalledTipView2, layoutParams);
            appInstalledTipView2.onActivityResume(activity);
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(Activity activity) {
        try {
            Result.Companion companion = Result.INSTANCE;
            View decorView = activity.getWindow().getDecorView();
            Intrinsics.f(decorView, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup = (ViewGroup) decorView;
            MemberPromotionView memberPromotionView = (MemberPromotionView) viewGroup.findViewWithTag("MEMBER_PUSH_VIEW_TAG");
            if (memberPromotionView != null) {
                memberPromotionView.onActivityResume(activity);
                return;
            }
            MemberPromotionView memberPromotionView2 = new MemberPromotionView(activity);
            memberPromotionView2.setTag("MEMBER_PUSH_VIEW_TAG");
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 49;
            layoutParams.topMargin = ImmersionBar.getStatusBarHeight(activity);
            layoutParams.leftMargin = a0.a(12.0f);
            layoutParams.rightMargin = a0.a(12.0f);
            viewGroup.addView(memberPromotionView2, layoutParams);
            memberPromotionView2.onActivityResume(activity);
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i(Activity activity) {
        lg.a.C0828a.f(lg.a.f68839a, "AdSceneCoordinator", "activity name: " + activity.getClass().getSimpleName(), false, 4, null);
        if (Intrinsics.c(activity.getClass().getSimpleName(), "StreamDetailActivity") || Intrinsics.c(activity.getClass().getSimpleName(), "MovieDetailActivity")) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            View decorView = activity.getWindow().getDecorView();
            Intrinsics.f(decorView, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup = (ViewGroup) decorView;
            StreamerIconAdView streamerIconAdView = (StreamerIconAdView) viewGroup.findViewWithTag("STREAMER_ICON_AD_VIEW_TAG");
            if (streamerIconAdView != null) {
                streamerIconAdView.onActivityResume(activity);
                return;
            }
            StreamerIconAdView streamerIconAdView2 = new StreamerIconAdView(activity, null, 0, 6, null);
            streamerIconAdView2.setTag("STREAMER_ICON_AD_VIEW_TAG");
            c.g(streamerIconAdView2);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 81;
            BaseMusicFloatActivity baseMusicFloatActivity = activity instanceof BaseMusicFloatActivity ? (BaseMusicFloatActivity) activity : null;
            if (baseMusicFloatActivity != null) {
                layoutParams.bottomMargin = baseMusicFloatActivity.getTipViewBottomMargin();
            } else {
                layoutParams.bottomMargin = a0.a(12.0f);
            }
            viewGroup.addView(streamerIconAdView2, layoutParams);
            streamerIconAdView2.onActivityResume(activity);
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j(Activity activity) {
        try {
            Result.Companion companion = Result.INSTANCE;
            View decorView = activity.getWindow().getDecorView();
            Intrinsics.f(decorView, "null cannot be cast to non-null type android.view.ViewGroup");
            SwipeUpCloseView swipeUpCloseView = (SwipeUpCloseView) ((ViewGroup) decorView).findViewWithTag("FLOAT_VIEW_TAG");
            if (swipeUpCloseView != null) {
                swipeUpCloseView.onActivityPause(activity);
                return;
            }
            Result.m454constructorimpl(Unit.f67061a);
            try {
                View decorView2 = activity.getWindow().getDecorView();
                Intrinsics.f(decorView2, "null cannot be cast to non-null type android.view.ViewGroup");
                AppInstalledTipView appInstalledTipView = (AppInstalledTipView) ((ViewGroup) decorView2).findViewWithTag("INSTALLED_FLOAT_VIEW_TAG");
                if (appInstalledTipView != null) {
                    appInstalledTipView.onActivityPause(activity);
                    return;
                }
                Result.m454constructorimpl(Unit.f67061a);
                try {
                    View decorView3 = activity.getWindow().getDecorView();
                    Intrinsics.f(decorView3, "null cannot be cast to non-null type android.view.ViewGroup");
                    StreamerIconAdView streamerIconAdView = (StreamerIconAdView) ((ViewGroup) decorView3).findViewWithTag("STREAMER_ICON_AD_VIEW_TAG");
                    if (streamerIconAdView != null) {
                        streamerIconAdView.onActivityPause();
                    }
                    Result.m454constructorimpl(Unit.f67061a);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m454constructorimpl(ResultKt.a(th2));
                }
                try {
                    View decorView4 = activity.getWindow().getDecorView();
                    Intrinsics.f(decorView4, "null cannot be cast to non-null type android.view.ViewGroup");
                    MemberPromotionView memberPromotionView = (MemberPromotionView) ((ViewGroup) decorView4).findViewWithTag("MEMBER_PUSH_VIEW_TAG");
                    if (memberPromotionView != null) {
                        memberPromotionView.onActivityPause(activity);
                    }
                    Result.m454constructorimpl(Unit.f67061a);
                } catch (Throwable th3) {
                    Result.Companion companion3 = Result.INSTANCE;
                    Result.m454constructorimpl(ResultKt.a(th3));
                }
            } catch (Throwable th4) {
                Result.Companion companion4 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th4));
            }
        } catch (Throwable th5) {
            Result.Companion companion5 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th5));
        }
    }

    public final void k(Application application) {
        Intrinsics.h(application, "application");
        application.registerActivityLifecycleCallbacks(new a());
    }
}
