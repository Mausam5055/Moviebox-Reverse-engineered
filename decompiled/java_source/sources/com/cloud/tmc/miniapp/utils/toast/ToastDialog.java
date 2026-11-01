package com.cloud.tmc.miniapp.utils.toast;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniapp.dialog.OooO0O0;
import com.cloud.tmc.miniapp.utils.toast.config.IToastStyle;
import com.cloud.tmc.miniapp.utils.toast.config.ToastType;
import com.cloud.tmc.miniapp.utils.toast.style.StateToastStyle;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class ToastDialog {
    public static final Companion Companion = new Companion(null);
    private static final Handler HANDLER = new Handler(Looper.getMainLooper());
    private static final String TAG = "ToastDialog";
    private volatile boolean loadingAnimatorPlaying;
    private final AnimatorSet loadingAnimatorSet;
    private final Runnable mCancelRunnable;
    private boolean mGlobalShow;
    private final Object mShowMessageToken;
    private final Runnable mShowRunnable;
    private final Builder mToastDialog;

    public static final class Builder extends OooO0O0.OooO00o<Builder> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Builder(Context context) {
            super(context);
            Intrinsics.h(context, "context");
        }
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ToastDialog(Activity activity, CustomToast toast) {
        this((Context) activity, toast);
        Intrinsics.h(activity, "activity");
        Intrinsics.h(toast, "toast");
        this.mGlobalShow = false;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ToastDialog(Application application, CustomToast toast) {
        this((Context) application, toast);
        Intrinsics.h(application, "application");
        Intrinsics.h(toast, "toast");
        this.mGlobalShow = true;
    }

    public ToastDialog(Context context, final CustomToast toast) {
        Intrinsics.h(context, "context");
        Intrinsics.h(toast, "toast");
        this.mShowMessageToken = new Object();
        this.loadingAnimatorSet = new AnimatorSet();
        Builder builder = new Builder(context);
        updateToast(toast, builder);
        this.mToastDialog = builder;
        this.mShowRunnable = new Runnable() { // from class: com.cloud.tmc.miniapp.utils.toast.a
            @Override // java.lang.Runnable
            public final void run() {
                ToastDialog._init_$lambda$3(toast, this);
            }
        };
        this.mCancelRunnable = new Runnable() { // from class: com.cloud.tmc.miniapp.utils.toast.b
            @Override // java.lang.Runnable
            public final void run() {
                ToastDialog._init_$lambda$4(this.f23865a);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$3(CustomToast toast, final ToastDialog this$0) {
        int duration;
        long shortDuration;
        Intrinsics.h(toast, "$toast");
        Intrinsics.h(this$0, "this$0");
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (toast.getDuration() == 1) {
            shortDuration = toast.getLongDuration();
        } else {
            shortDuration = (toast.getDuration() != 0 && (duration = toast.getDuration()) <= 60000 && duration >= 1000) ? duration : toast.getShortDuration();
        }
        long j11 = jUptimeMillis + shortDuration;
        if (this$0.isShow()) {
            TmcLogger.d(TAG, "It's showing, will be update content");
            HANDLER.removeCallbacksAndMessages(this$0.mShowMessageToken);
            this$0.updateToast(toast, this$0.mToastDialog);
        }
        this$0.mToastDialog.show();
        HANDLER.postAtTime(new Runnable() { // from class: com.cloud.tmc.miniapp.utils.toast.c
            @Override // java.lang.Runnable
            public final void run() {
                ToastDialog.lambda$3$lambda$2(this.f23866a);
            }
        }, this$0.mShowMessageToken, j11);
        TmcLogger.d(TAG, "show runnable is running");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$4(ToastDialog this$0) {
        Intrinsics.h(this$0, "this$0");
        if (this$0.isShow()) {
            TmcLogger.d(TAG, "It's showing, will be dismissed");
            this$0.mToastDialog.dismiss();
        }
        TmcLogger.d(TAG, "cancel runnable is running");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void cancelAnimator() {
        try {
            TmcLogger.d(TAG, "cancelAnimator");
            if (this.loadingAnimatorPlaying) {
                this.loadingAnimatorSet.cancel();
                this.loadingAnimatorPlaying = false;
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isLoadingToastType(CustomToast customToast) {
        ToastParams toastParams = customToast.getToastParams();
        IToastStyle<?> style = toastParams != null ? toastParams.getStyle() : null;
        return (style instanceof StateToastStyle) && (style.getToastType() instanceof ToastType.LOADING);
    }

    private final boolean isMainThread() {
        return Intrinsics.c(Looper.myLooper(), Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void lambda$3$lambda$2(ToastDialog this$0) {
        Intrinsics.h(this$0, "this$0");
        this$0.cancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startAnimator(CustomToast customToast) {
        ImageView imageViewFindIconView;
        try {
            TmcLogger.d(TAG, "startAnimator");
            if (this.loadingAnimatorPlaying || (imageViewFindIconView = customToast.findIconView(customToast.getView())) == null) {
                return;
            }
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageViewFindIconView, "rotation", 0.0f, 360.0f);
            Intrinsics.g(objectAnimatorOfFloat, "ofFloat(it, \"rotation\", 0F, 360F)");
            objectAnimatorOfFloat.setDuration(600L);
            objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            objectAnimatorOfFloat.setRepeatCount(-1);
            this.loadingAnimatorSet.play(objectAnimatorOfFloat);
            this.loadingAnimatorSet.start();
            this.loadingAnimatorPlaying = true;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    private final void updateToast(final CustomToast customToast, Builder builder) {
        builder.setContentView(customToast.getView()).setGravity(customToast.getGravity()).setXOffset(customToast.getXOffset()).setYOffset(customToast.getYOffset()).setAnimStyle(customToast.getAnimationId()).setCancelable(false).setBackgroundDimEnabled(false).setOnCreateListener(new OooO0O0.OooOOOO() { // from class: com.cloud.tmc.miniapp.utils.toast.ToastDialog.updateToast.1
            @Override // com.cloud.tmc.miniapp.dialog.OooO0O0.OooOOOO
            public void onCreate(OooO0O0 oooO0O0) {
                Window window;
                if (oooO0O0 == null || (window = oooO0O0.getWindow()) == null) {
                    return;
                }
                ToastDialog toastDialog = ToastDialog.this;
                CustomToast customToast2 = customToast;
                WindowManager.LayoutParams attributes = window.getAttributes();
                Intrinsics.g(attributes, "window.attributes");
                if (toastDialog.mGlobalShow) {
                    if (Build.VERSION.SDK_INT >= 26) {
                        attributes.type = 2038;
                    } else {
                        attributes.type = 2003;
                    }
                }
                attributes.verticalMargin = customToast2.getVerticalMargin();
                attributes.horizontalMargin = customToast2.getHorizontalMargin();
                window.addFlags(128);
                ToastParams toastParams = customToast2.getToastParams();
                if (toastParams == null || !toastParams.getMask()) {
                    window.addFlags(8);
                    window.addFlags(16);
                }
                window.setAttributes(attributes);
            }
        }).addOnShowListener(new OooO0O0.Oooo000() { // from class: com.cloud.tmc.miniapp.utils.toast.ToastDialog.updateToast.2
            @Override // com.cloud.tmc.miniapp.dialog.OooO0O0.Oooo000
            public void onShow(OooO0O0 oooO0O0) {
                TmcLogger.d(ToastDialog.TAG, "onShow");
                if (ToastDialog.this.isLoadingToastType(customToast)) {
                    ToastDialog.this.startAnimator(customToast);
                }
            }
        }).addOnDismissListener(new OooO0O0.OooOo00() { // from class: com.cloud.tmc.miniapp.utils.toast.ToastDialog.updateToast.3
            @Override // com.cloud.tmc.miniapp.dialog.OooO0O0.OooOo00
            public void onDismiss(OooO0O0 oooO0O0) {
                TmcLogger.d(ToastDialog.TAG, "onDismiss");
                if (ToastDialog.this.isLoadingToastType(customToast)) {
                    ToastDialog.this.cancelAnimator();
                }
            }
        });
    }

    public final void cancel() {
        TmcLogger.d(TAG, "cancel toast dialog");
        Handler handler = HANDLER;
        handler.removeCallbacks(this.mShowRunnable);
        if (isMainThread()) {
            this.mCancelRunnable.run();
        } else {
            handler.removeCallbacks(this.mCancelRunnable);
            handler.post(this.mCancelRunnable);
        }
    }

    public final boolean isShow() {
        return this.mToastDialog.isShowing();
    }

    public final void show() {
        TmcLogger.d(TAG, "show toast dialog");
        if (isMainThread()) {
            this.mShowRunnable.run();
            return;
        }
        Handler handler = HANDLER;
        handler.removeCallbacks(this.mShowRunnable);
        handler.post(this.mShowRunnable);
    }
}
