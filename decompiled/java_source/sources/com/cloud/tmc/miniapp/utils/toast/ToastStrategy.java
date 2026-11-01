package com.cloud.tmc.miniapp.utils.toast;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.widget.ImageView;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.utils.toast.config.IToast;
import com.cloud.tmc.miniapp.utils.toast.config.IToastStrategy;
import com.cloud.tmc.miniapp.utils.toast.config.IToastStyle;
import com.cloud.tmc.miniapp.utils.toast.config.ToastType;
import com.cloud.tmc.miniapp.utils.toast.style.StateToastStyle;
import java.io.File;
import java.lang.ref.WeakReference;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
public final class ToastStrategy implements IToastStrategy {
    private static final int DEFAULT_DELAY_TIMEOUT = 200;
    public static final long LONG_DURATION_TIMEOUT = 3500;
    public static final int MAX_CUSTOM_DURATION = 60000;
    public static final int MIN_CUSTOM_DURATION = 1000;
    public static final long SHORT_DURATION_TIMEOUT = 2000;
    public static final int SHOW_STRATEGY_TYPE_IMMEDIATELY = 0;
    public static final int SHOW_STRATEGY_TYPE_QUEUE = 1;
    private static final String TAG = "ToastStrategy";
    private final Object mCancelMessageToken;
    private long mLastShowToastMillis;
    private final Object mShowMessageToken;
    private int mShowStrategyType;
    private WeakReference<IToast> mToastReference;
    private Application sApplication;
    public static final Companion Companion = new Companion(null);
    private static final Handler HANDLER = new Handler(Looper.getMainLooper());

    public final class CancelToastRunnable implements Runnable {
        public CancelToastRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                TmcLogger.d(ToastStrategy.TAG, "cancel toast run with start");
                WeakReference weakReference = ToastStrategy.this.mToastReference;
                IToast iToast = weakReference != null ? (IToast) weakReference.get() : null;
                if (iToast != null) {
                    iToast.cancel();
                }
            } catch (Throwable th2) {
                TmcLogger.e(ToastStrategy.TAG, "cancel toast failed!", th2);
            }
        }
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @SourceDebugExtension
    public final class ShowToastRunnable implements Runnable {
        private ToastParams mToastParams;
        public final /* synthetic */ ToastStrategy this$0;

        public ShowToastRunnable(ToastStrategy toastStrategy, ToastParams params) {
            Intrinsics.h(params, "params");
            this.this$0 = toastStrategy;
            this.mToastParams = params;
        }

        private final void checkUpdateStateToast(IToast iToast) {
            TmcLogger.d(ToastStrategy.TAG, "check update state");
            if (iToast instanceof CustomToast) {
                ((CustomToast) iToast).setToastParams(this.mToastParams);
            }
            IToastStyle<?> style = this.mToastParams.getStyle();
            if (style instanceof StateToastStyle) {
                File file = null;
                ImageView imageViewFindIconView = iToast != null ? iToast.findIconView(iToast != null ? iToast.getView() : null) : null;
                File icon = this.mToastParams.getIcon();
                if (icon != null) {
                    if (icon.length() < 10485760) {
                        try {
                            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(icon.getAbsolutePath());
                            if (imageViewFindIconView != null) {
                                imageViewFindIconView.setImageBitmap(bitmapDecodeFile);
                            }
                            file = icon;
                        } catch (Throwable th2) {
                            TmcLogger.e(ToastStrategy.TAG, th2);
                        }
                    }
                    if (file != null) {
                        return;
                    }
                }
                ToastStrategy toastStrategy = this.this$0;
                int drawableResId = this.mToastParams.getDrawableResId();
                if (drawableResId == 0) {
                    drawableResId = toastStrategy.getStateToastIcon(style.getToastType());
                }
                if (drawableResId != 0 && imageViewFindIconView != null) {
                    imageViewFindIconView.setImageResource(drawableResId);
                }
                Unit unit = Unit.f67061a;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                TmcLogger.d(ToastStrategy.TAG, "show toast run with start");
                WeakReference weakReference = this.this$0.mToastReference;
                IToast iToast = weakReference != null ? (IToast) weakReference.get() : null;
                if (iToast instanceof CustomToast) {
                    ToastParams toastParams = ((CustomToast) iToast).getToastParams();
                    IToastStyle<?> style = toastParams != null ? toastParams.getStyle() : null;
                    ToastType toastType = style != null ? style.getToastType() : null;
                    IToastStyle<?> style2 = this.mToastParams.getStyle();
                    if (!Intrinsics.c(toastType, style2 != null ? style2.getToastType() : null)) {
                        ((CustomToast) iToast).cancel();
                        iToast = null;
                    }
                }
                if (!(iToast instanceof CustomToast) || !((CustomToast) iToast).isShow()) {
                    if (iToast != null) {
                        iToast.cancel();
                    }
                    IToastStyle<?> style3 = this.mToastParams.getStyle();
                    IToast iToastCreateToast = style3 != null ? this.this$0.createToast(style3) : null;
                    this.this$0.mToastReference = new WeakReference(iToastCreateToast);
                    iToast = iToastCreateToast;
                }
                checkUpdateStateToast(iToast);
                if (iToast != null) {
                    iToast.setDuration(this.mToastParams.getDuration());
                }
                if (iToast != null) {
                    iToast.setText(this.mToastParams.getText());
                }
                if (iToast != null) {
                    iToast.show();
                }
                Function0<Unit> showCallBack = this.mToastParams.getShowCallBack();
                if (showCallBack != null) {
                    showCallBack.invoke();
                }
            } catch (Throwable th2) {
                TmcLogger.e(ToastStrategy.TAG, "show toast failed!", th2);
            }
        }
    }

    public ToastStrategy() {
        this(0, 1, null);
    }

    public ToastStrategy(int i11) {
        this.mShowMessageToken = new Object();
        this.mCancelMessageToken = new Object();
        if (i11 != 0 && i11 != 1) {
            throw new IllegalArgumentException("Please don't pass non-existent toast show strategy");
        }
        this.mShowStrategyType = i11;
    }

    public /* synthetic */ ToastStrategy(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i11);
    }

    private final void diyToastStyle(IToast iToast, IToastStyle<?> iToastStyle) {
        Application application = this.sApplication;
        Intrinsics.e(application);
        iToast.setView(iToastStyle.createView(application));
        iToast.setGravity(iToastStyle.getGravity(), iToastStyle.getXOffset(), iToastStyle.getYOffset());
        iToast.setMargin(iToastStyle.getHorizontalMargin(), iToastStyle.getVerticalMargin());
    }

    private final long generateToastWaitMillis(ToastParams toastParams) {
        if (toastParams.getDuration() == 0) {
            return 1000L;
        }
        return toastParams.getDuration() == 1 ? 1500L : 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getStateToastIcon(ToastType toastType) {
        if (toastType instanceof ToastType.SUCCESS) {
            return R.drawable.mini_ic_toast_success;
        }
        if (toastType instanceof ToastType.ERROR) {
            return R.drawable.mini_ic_toast_error;
        }
        if (toastType instanceof ToastType.LOADING) {
            return R.drawable.mini_ic_progress;
        }
        return 0;
    }

    private final boolean isSupportToastStyle(IToast iToast) {
        if (!(iToast instanceof CustomToast) && Build.VERSION.SDK_INT >= 30) {
            Application application = this.sApplication;
            Intrinsics.e(application);
            if (application.getApplicationInfo().targetSdkVersion >= 30) {
                return false;
            }
        }
        return true;
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToastStrategy
    public void cancelToast() {
        TmcLogger.d(TAG, "cancelToast");
        Handler handler = HANDLER;
        handler.removeCallbacksAndMessages(this.mShowMessageToken);
        handler.removeCallbacksAndMessages(this.mCancelMessageToken);
        handler.postAtTime(new CancelToastRunnable(), this.mCancelMessageToken, SystemClock.uptimeMillis());
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToastStrategy
    @SuppressLint({"ObsoleteSdkInt"})
    public IToast createToast(IToastStyle<?> style) {
        IToast systemToast;
        Intrinsics.h(style, "style");
        TmcLogger.d(TAG, "createToast");
        if (this.sApplication == null) {
            throw new IllegalStateException("please provide a application for registerStrategy");
        }
        Activity foregroundActivity = ActivityStack.Companion.getInstance().getForegroundActivity();
        if (foregroundActivity != null) {
            TmcLogger.d(TAG, "create toast with foreground activity");
            systemToast = new ActivityToast(foregroundActivity);
        } else {
            TmcLogger.d(TAG, "create system toast!");
            Application application = this.sApplication;
            Intrinsics.e(application);
            systemToast = new SystemToast(application);
        }
        if (isSupportToastStyle(systemToast)) {
            diyToastStyle(systemToast, style);
        }
        return systemToast;
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToastStrategy
    public void registerStrategy(Application application) {
        TmcLogger.d(TAG, "registerStrategy " + application);
        this.sApplication = application;
        ActivityStack.Companion.getInstance().register(application);
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToastStrategy
    public void showToast(ToastParams params) {
        Intrinsics.h(params, "params");
        TmcLogger.d(TAG, "showToast mShowStrategyType: " + this.mShowStrategyType);
        int i11 = this.mShowStrategyType;
        if (i11 == 0) {
            Handler handler = HANDLER;
            handler.removeCallbacksAndMessages(this.mShowMessageToken);
            handler.postAtTime(new ShowToastRunnable(this, params), this.mShowMessageToken, params.getDelayMillis() + SystemClock.uptimeMillis() + ((long) 200));
            return;
        }
        if (i11 == 1) {
            long delayMillis = params.getDelayMillis() + SystemClock.uptimeMillis() + ((long) 200);
            long jGenerateToastWaitMillis = this.mLastShowToastMillis + generateToastWaitMillis(params);
            if (delayMillis < jGenerateToastWaitMillis) {
                delayMillis = jGenerateToastWaitMillis;
            }
            HANDLER.postAtTime(new ShowToastRunnable(this, params), this.mShowMessageToken, delayMillis);
            this.mLastShowToastMillis = delayMillis;
        }
    }
}
