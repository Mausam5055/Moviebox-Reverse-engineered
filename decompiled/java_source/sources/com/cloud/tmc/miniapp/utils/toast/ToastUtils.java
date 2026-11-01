package com.cloud.tmc.miniapp.utils.toast;

import android.app.Application;
import android.content.res.Resources;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.utils.toast.config.IToastInterceptor;
import com.cloud.tmc.miniapp.utils.toast.config.IToastStrategy;
import com.cloud.tmc.miniapp.utils.toast.config.IToastStyle;
import com.cloud.tmc.miniapp.utils.toast.config.ToastType;
import com.cloud.tmc.miniapp.utils.toast.style.AddHomeSuccessToastStyle;
import com.cloud.tmc.miniapp.utils.toast.style.BlackToastStyle;
import com.cloud.tmc.miniapp.utils.toast.style.StateToastStyle;
import com.cloud.tmc.miniutils.util.StringUtils;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.File;
import java.lang.ref.WeakReference;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class ToastUtils {
    public static final ToastUtils INSTANCE = new ToastUtils();
    private static final String TAG = "ToastUtils";
    private static Application sApplication;
    private static WeakReference<ToastParams> sTempToastParams;
    private static IToastInterceptor sToastInterceptor;
    private static IToastStrategy sToastStrategy;
    private static IToastStyle<?> sToastStyle;

    private ToastUtils() {
    }

    @JvmStatic
    public static final void cancel() {
        hideToast();
        hideLoading();
    }

    @JvmStatic
    public static final void hideLoading() {
        ToastParams toastParams;
        IToastStrategy strategy;
        WeakReference<ToastParams> weakReference = sTempToastParams;
        if (weakReference == null || (toastParams = weakReference.get()) == null) {
            return;
        }
        IToastStyle<?> style = toastParams.getStyle();
        if (!Intrinsics.c(style != null ? style.getToastType() : null, ToastType.LOADING.INSTANCE) || (strategy = toastParams.getStrategy()) == null) {
            return;
        }
        strategy.cancelToast();
    }

    @JvmStatic
    public static final void hideToast() {
        ToastParams toastParams;
        IToastStrategy strategy;
        WeakReference<ToastParams> weakReference = sTempToastParams;
        if (weakReference == null || (toastParams = weakReference.get()) == null) {
            return;
        }
        IToastStyle<?> style = toastParams.getStyle();
        if (Intrinsics.c(style != null ? style.getToastType() : null, ToastType.LOADING.INSTANCE) || (strategy = toastParams.getStrategy()) == null) {
            return;
        }
        strategy.cancelToast();
    }

    @JvmStatic
    @JvmOverloads
    public static final void init(Application application) {
        Intrinsics.h(application, "application");
        init$default(application, null, null, 6, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void init(Application application, IToastStrategy iToastStrategy) {
        Intrinsics.h(application, "application");
        init$default(application, iToastStrategy, null, 4, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void init(Application application, IToastStrategy iToastStrategy, IToastStyle<?> iToastStyle) {
        Intrinsics.h(application, "application");
        sApplication = application;
        if (iToastStrategy == null) {
            iToastStrategy = new ToastStrategy(0, 1, null);
        }
        setStrategy(iToastStrategy);
        if (iToastStyle == null) {
            iToastStyle = new BlackToastStyle();
        }
        setStyle(iToastStyle);
    }

    public static /* synthetic */ void init$default(Application application, IToastStrategy iToastStrategy, IToastStyle iToastStyle, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            iToastStrategy = null;
        }
        if ((i11 & 4) != 0) {
            iToastStyle = null;
        }
        init(application, iToastStrategy, iToastStyle);
    }

    public static final boolean isInit() {
        return (sApplication == null || sToastStrategy == null || sToastStyle == null) ? false : true;
    }

    @JvmStatic
    public static /* synthetic */ void isInit$annotations() {
    }

    @JvmStatic
    public static final void setInterceptor(IToastInterceptor interceptor) {
        Intrinsics.h(interceptor, "interceptor");
        sToastInterceptor = interceptor;
    }

    @JvmStatic
    public static final void setStrategy(IToastStrategy strategy) {
        Intrinsics.h(strategy, "strategy");
        strategy.registerStrategy(sApplication);
        sToastStrategy = strategy;
    }

    @JvmStatic
    public static final void setStyle(IToastStyle<?> style) {
        Intrinsics.h(style, "style");
        sToastStyle = style;
    }

    @JvmStatic
    @JvmOverloads
    public static final void showAddhomeSuccessToast() {
        String string = StringUtils.getString(R.string.mini_add_home_successful_toast);
        Intrinsics.g(string, "getString(R.string.mini_add_home_successful_toast)");
        showToast(new ToastParams(string, 0, 0L, false, null, 0, new AddHomeSuccessToastStyle(), null, null, null, 958, null));
    }

    @JvmStatic
    @JvmOverloads
    public static final void showLoading(CharSequence text) {
        Intrinsics.h(text, "text");
        showLoading$default(text, null, 0, 0L, false, null, null, 126, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showLoading(CharSequence text, ToastType type) {
        Intrinsics.h(text, "text");
        Intrinsics.h(type, "type");
        showLoading$default(text, type, 0, 0L, false, null, null, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showLoading(CharSequence text, ToastType type, int i11) {
        Intrinsics.h(text, "text");
        Intrinsics.h(type, "type");
        showLoading$default(text, type, i11, 0L, false, null, null, 120, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showLoading(CharSequence text, ToastType type, int i11, long j11) {
        Intrinsics.h(text, "text");
        Intrinsics.h(type, "type");
        showLoading$default(text, type, i11, j11, false, null, null, 112, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showLoading(CharSequence text, ToastType type, int i11, long j11, boolean z10) {
        Intrinsics.h(text, "text");
        Intrinsics.h(type, "type");
        showLoading$default(text, type, i11, j11, z10, null, null, 96, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showLoading(CharSequence text, ToastType type, int i11, long j11, boolean z10, File file) {
        Intrinsics.h(text, "text");
        Intrinsics.h(type, "type");
        showLoading$default(text, type, i11, j11, z10, file, null, 64, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showLoading(CharSequence text, ToastType type, int i11, long j11, boolean z10, File file, Function0<Unit> function0) {
        Intrinsics.h(text, "text");
        Intrinsics.h(type, "type");
        showToast(new ToastParams(text, i11, j11, z10, file, 0, new StateToastStyle(type, false, 2, null), null, null, function0, TTAdConstant.PACKAGE_NAME_CODE, null));
    }

    public static /* synthetic */ void showLoading$default(CharSequence charSequence, ToastType toastType, int i11, long j11, boolean z10, File file, Function0 function0, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            toastType = ToastType.LOADING.INSTANCE;
        }
        int i13 = (i12 & 4) != 0 ? 0 : i11;
        if ((i12 & 8) != 0) {
            j11 = 0;
        }
        showLoading(charSequence, toastType, i13, j11, (i12 & 16) == 0 ? z10 : false, (i12 & 32) != 0 ? null : file, (i12 & 64) != 0 ? null : function0);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showToast(int i11) {
        showToast$default(i11, 0, 0L, false, 14, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showToast(int i11, int i12) {
        showToast$default(i11, i12, 0L, false, 12, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showToast(int i11, int i12, long j11) {
        showToast$default(i11, i12, j11, false, 8, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showToast(int i11, int i12, long j11, boolean z10) {
        showToast$default(INSTANCE.stringIdToCharSequence(i11), i12, j11, z10, null, 16, null);
    }

    @JvmStatic
    public static final void showToast(ToastParams params) {
        Intrinsics.h(params, "params");
        if (!isInit()) {
            TmcLogger.d(TAG, "It's not init");
            return;
        }
        if (params.getText().length() == 0) {
            TmcLogger.d(TAG, "It's empty");
            return;
        }
        int i11 = 0;
        int i12 = 1;
        if (params.getStrategy() == null) {
            IToastStrategy toastStrategy = sToastStrategy;
            if (toastStrategy == null) {
                toastStrategy = new ToastStrategy(i11, i12, null);
                setStrategy(toastStrategy);
            }
            params.setStrategy(toastStrategy);
        }
        if (params.getStyle() == null) {
            IToastStyle<?> blackToastStyle = sToastStyle;
            if (blackToastStyle == null) {
                blackToastStyle = new BlackToastStyle();
                setStyle(blackToastStyle);
            }
            params.setStyle(blackToastStyle);
        }
        if (params.getInterceptor() == null) {
            IToastInterceptor toastLogInterceptor = sToastInterceptor;
            if (toastLogInterceptor == null) {
                toastLogInterceptor = new ToastLogInterceptor();
                setInterceptor(toastLogInterceptor);
            }
            params.setInterceptor(toastLogInterceptor);
        }
        IToastInterceptor interceptor = params.getInterceptor();
        if (interceptor == null || !interceptor.intercept(params)) {
            if (params.getDuration() == -1) {
                params.setDuration(params.getText().length() > 20 ? 1 : 0);
            }
            sTempToastParams = new WeakReference<>(params);
            IToastStrategy strategy = params.getStrategy();
            if (strategy != null) {
                strategy.showToast(params);
            }
        }
    }

    @JvmStatic
    @JvmOverloads
    public static final void showToast(CharSequence text) {
        Intrinsics.h(text, "text");
        showToast$default(text, 0, 0L, false, null, 30, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showToast(CharSequence text, int i11) {
        Intrinsics.h(text, "text");
        showToast$default(text, i11, 0L, false, null, 28, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showToast(CharSequence text, int i11, long j11) {
        Intrinsics.h(text, "text");
        showToast$default(text, i11, j11, false, null, 24, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showToast(CharSequence text, int i11, long j11, boolean z10) {
        Intrinsics.h(text, "text");
        showToast$default(text, i11, j11, z10, null, 16, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showToast(CharSequence text, int i11, long j11, boolean z10, Function0<Unit> function0) {
        Intrinsics.h(text, "text");
        showToast(new ToastParams(text, i11, j11, z10, null, 0, null, null, null, function0, 496, null));
    }

    public static /* synthetic */ void showToast$default(int i11, int i12, long j11, boolean z10, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i12 = 0;
        }
        if ((i13 & 4) != 0) {
            j11 = 0;
        }
        if ((i13 & 8) != 0) {
            z10 = false;
        }
        showToast(i11, i12, j11, z10);
    }

    public static /* synthetic */ void showToast$default(CharSequence charSequence, int i11, long j11, boolean z10, Function0 function0, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        if ((i12 & 4) != 0) {
            j11 = 0;
        }
        if ((i12 & 8) != 0) {
            z10 = false;
        }
        if ((i12 & 16) != 0) {
            function0 = null;
        }
        showToast(charSequence, i11, j11, z10, function0);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showToastLong(int i11) {
        showToastLong$default(i11, 0L, 2, (Object) null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showToastLong(int i11, long j11) {
        showToastLong(INSTANCE.stringIdToCharSequence(i11), j11);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showToastLong(CharSequence text) {
        Intrinsics.h(text, "text");
        showToastLong$default(text, 0L, 2, (Object) null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showToastLong(CharSequence text, long j11) {
        Intrinsics.h(text, "text");
        showToast$default(text, 1, j11, false, null, 24, null);
    }

    public static /* synthetic */ void showToastLong$default(int i11, long j11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            j11 = 0;
        }
        showToastLong(i11, j11);
    }

    public static /* synthetic */ void showToastLong$default(CharSequence charSequence, long j11, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            j11 = 0;
        }
        showToastLong(charSequence, j11);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showToastShort(int i11) {
        showToastShort$default(i11, 0L, 2, (Object) null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showToastShort(int i11, long j11) {
        showToastShort(INSTANCE.stringIdToCharSequence(i11), j11);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showToastShort(CharSequence text) {
        Intrinsics.h(text, "text");
        showToastShort$default(text, 0L, 2, (Object) null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showToastShort(CharSequence text, long j11) {
        Intrinsics.h(text, "text");
        showToast$default(text, 0, j11, false, null, 24, null);
    }

    public static /* synthetic */ void showToastShort$default(int i11, long j11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            j11 = 0;
        }
        showToastShort(i11, j11);
    }

    public static /* synthetic */ void showToastShort$default(CharSequence charSequence, long j11, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            j11 = 0;
        }
        showToastShort(charSequence, j11);
    }

    private final CharSequence stringIdToCharSequence(int i11) {
        Resources resources;
        CharSequence text;
        try {
            Application application = sApplication;
            return (application == null || (resources = application.getResources()) == null || (text = resources.getText(i11)) == null) ? "" : text;
        } catch (Resources.NotFoundException unused) {
            return String.valueOf(i11);
        }
    }
}
