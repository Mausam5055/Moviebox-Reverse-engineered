package com.cloud.tmc.miniapp.action;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.b;
import com.cloud.tmc.integration.activity.LoadStepAction;
import com.cloud.tmc.integration.proxy.AnimtionProxy;
import com.cloud.tmc.integration.utils.ext.CommonExtKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.ui.extension.OfflineAppExtensionKt;
import com.cloud.tmc.miniapp.widget.LoadingTextView;
import com.cloud.tmc.miniapp.widget.MiniNoNetworkView;
import com.cloud.tmc.miniapp.widget.MiniappLaunchLoadingView;
import com.cloud.tmc.miniapp.widget.StatusLayout;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface StatusAction {

    public static final class DefaultImpls {
        public static boolean isLoadStatusLoadingOrError(StatusAction statusAction) {
            StatusLayout statusLayout = statusAction.getStatusLayout();
            if (statusLayout != null) {
                return statusLayout.OooO0OO();
            }
            return true;
        }

        public static void setLoadingProgressConfig(StatusAction statusAction, LoadingTextView.LoadingAnimationModel progressConfig) {
            Intrinsics.h(progressConfig, "progressConfig");
            StatusLayout statusLayout = statusAction.getStatusLayout();
            if (statusLayout != null) {
                statusLayout.setLoadingProgressConfig(progressConfig);
            }
        }

        public static boolean showComplete(StatusAction statusAction) {
            StatusLayout statusLayout = statusAction.getStatusLayout();
            if (statusLayout == null) {
                return true;
            }
            if (!statusLayout.OooO0OO()) {
                return false;
            }
            statusLayout.OooO00o();
            statusLayout.OooO0O0();
            return true;
        }

        public static void showCustomErrorLayout(StatusAction statusAction, String str, String str2, String str3, StatusLayout.OooO0O0 oooO0O0, String str4, StatusLayout.OooO00o oooO00o) {
            PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            Bundle bundle = new Bundle();
            bundle.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
            Unit unit = Unit.f67061a;
            performanceAnalyseProxy.recordForCommon(str4, TmcConstants.REPORTER_NO_NET_WORK_PAGE, bundle);
            StatusLayout statusLayout = statusAction.getStatusLayout();
            if (statusLayout != null) {
                statusLayout.OooO00o();
                statusLayout.OooO0O0(statusAction.getViewThemeMode());
                statusLayout.OooOOOo = true;
                ConstraintLayout constraintLayout = statusLayout.OooO0oO;
                if (constraintLayout != null) {
                    constraintLayout.setVisibility(8);
                }
                LinearLayout linearLayout = statusLayout.OooO0o;
                if (linearLayout != null) {
                    linearLayout.setVisibility(8);
                }
                try {
                    LoadingTextView loadingTextView = statusLayout.OooO0oo;
                    if (loadingTextView != null) {
                        loadingTextView.OooO00o();
                    }
                    MiniNoNetworkView miniNoNetworkView = statusLayout.OooOOO0;
                    if (miniNoNetworkView != null) {
                        miniNoNetworkView.OooO00o(str, str2, str3);
                    }
                } catch (Throwable th2) {
                    TmcLogger.e("launcher step error", th2);
                }
                statusLayout.setOnCustomNoNetWorkRetryListener(oooO0O0);
            }
        }

        public static void showError(StatusAction statusAction, StatusLayout.OooO0O0 oooO0O0, int i11, String str, String str2, StatusLayout.OooO00o oooO00o) {
            Integer viewThemeMode = statusAction.getViewThemeMode();
            statusAction.showErrorLayout((viewThemeMode != null && viewThemeMode.intValue() == 2) ? R.drawable.mini_ic_error_normal_mode : R.drawable.mini_ic_error, i11, oooO0O0, str, oooO00o);
        }

        public static /* synthetic */ void showError$default(StatusAction statusAction, StatusLayout.OooO0O0 oooO0O0, int i11, String str, String str2, StatusLayout.OooO00o oooO00o, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showError");
            }
            if ((i12 & 2) != 0) {
                i11 = R.string.loading_error_tv;
            }
            int i13 = i11;
            if ((i12 & 4) != 0) {
                str = "";
            }
            String str3 = str;
            if ((i12 & 16) != 0) {
                oooO00o = null;
            }
            statusAction.showError(oooO0O0, i13, str3, str2, oooO00o);
        }

        public static void showErrorLayout(StatusAction statusAction, int i11, int i12, int i13, StatusLayout.OooO0O0 oooO0O0, boolean z10, boolean z11, StatusLayout.OooO00o oooO00o) {
            StatusLayout statusLayout = statusAction.getStatusLayout();
            if (statusLayout != null) {
                showErrorLayout$default(statusAction, b.getDrawable(statusLayout.getContext(), i11), statusLayout.getContext().getString(i12), statusLayout.getContext().getString(i13), oooO0O0, null, z10, z11, oooO00o, 16, null);
            }
        }

        public static void showErrorLayout(StatusAction statusAction, int i11, int i12, StatusLayout.OooO0O0 oooO0O0, String str, StatusLayout.OooO00o oooO00o) {
            StatusLayout statusLayout = statusAction.getStatusLayout();
            if (statusLayout != null) {
                statusAction.showErrorLayout(b.getDrawable(statusLayout.getContext(), i11), statusLayout.getContext().getString(i12), oooO0O0, str, oooO00o);
            }
        }

        public static void showErrorLayout(StatusAction statusAction, Drawable drawable, CharSequence charSequence, StatusLayout.OooO0O0 oooO0O0, String str, StatusLayout.OooO00o oooO00o) {
            if (statusAction.getStatusLayout() != null) {
                showErrorLayout$default(statusAction, drawable, charSequence, null, oooO0O0, str, false, false, oooO00o, 96, null);
            }
        }

        public static void showErrorLayout(StatusAction statusAction, Drawable drawable, CharSequence charSequence, CharSequence charSequence2, StatusLayout.OooO0O0 oooO0O0, String str, boolean z10, boolean z11, StatusLayout.OooO00o oooO00o) {
            StatusLayout statusLayout = statusAction.getStatusLayout();
            if (statusLayout != null) {
                statusLayout.OooO00o();
                statusLayout.OooO0O0(statusAction.getViewThemeMode());
                statusLayout.OooO00o(str, z10, z11);
                statusLayout.setIcon(drawable);
                statusLayout.setHint(charSequence);
                statusLayout.setTitle(charSequence2);
                statusLayout.setOnRetryListener(oooO0O0);
            }
        }

        public static /* synthetic */ void showErrorLayout$default(StatusAction statusAction, int i11, int i12, int i13, StatusLayout.OooO0O0 oooO0O0, boolean z10, boolean z11, StatusLayout.OooO00o oooO00o, int i14, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showErrorLayout");
            }
            statusAction.showErrorLayout(i11, i12, i13, oooO0O0, (i14 & 16) != 0 ? true : z10, (i14 & 32) != 0 ? false : z11, (i14 & 64) != 0 ? null : oooO00o);
        }

        public static /* synthetic */ void showErrorLayout$default(StatusAction statusAction, int i11, int i12, StatusLayout.OooO0O0 oooO0O0, String str, StatusLayout.OooO00o oooO00o, int i13, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showErrorLayout");
            }
            if ((i13 & 8) != 0) {
                str = "";
            }
            String str2 = str;
            if ((i13 & 16) != 0) {
                oooO00o = null;
            }
            statusAction.showErrorLayout(i11, i12, oooO0O0, str2, oooO00o);
        }

        public static /* synthetic */ void showErrorLayout$default(StatusAction statusAction, Drawable drawable, CharSequence charSequence, StatusLayout.OooO0O0 oooO0O0, String str, StatusLayout.OooO00o oooO00o, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showErrorLayout");
            }
            if ((i11 & 8) != 0) {
                str = "";
            }
            String str2 = str;
            if ((i11 & 16) != 0) {
                oooO00o = null;
            }
            statusAction.showErrorLayout(drawable, charSequence, oooO0O0, str2, oooO00o);
        }

        public static /* synthetic */ void showErrorLayout$default(StatusAction statusAction, Drawable drawable, CharSequence charSequence, CharSequence charSequence2, StatusLayout.OooO0O0 oooO0O0, String str, boolean z10, boolean z11, StatusLayout.OooO00o oooO00o, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showErrorLayout");
            }
            statusAction.showErrorLayout(drawable, charSequence, charSequence2, oooO0O0, (i11 & 16) != 0 ? "" : str, (i11 & 32) != 0 ? false : z10, (i11 & 64) != 0 ? false : z11, (i11 & 128) != 0 ? null : oooO00o);
        }

        public static void showLoading(StatusAction statusAction) {
            StatusLayout statusLayout = statusAction.getStatusLayout();
            if (statusLayout != null) {
                statusLayout.OooO0O0(statusAction.getViewThemeMode());
                statusLayout.OooO0Oo();
                statusLayout.setOnRetryListener(null);
            }
        }

        public static void showLoadingLogo(StatusAction statusAction, String appName, String logo) {
            String string;
            TextView textView;
            Intrinsics.h(appName, "appName");
            Intrinsics.h(logo, "logo");
            StatusLayout statusLayout = statusAction.getStatusLayout();
            if (statusLayout != null) {
                Intrinsics.h(logo, "logo");
                Intrinsics.h(appName, "appName");
                try {
                    string = statusLayout.getContext().getString(R.string.dialog_loading_tv);
                } catch (Throwable unused) {
                    string = "Loading...";
                }
                Intrinsics.g(string, "try {\n            contex…   \"Loading...\"\n        }");
                if (!Intrinsics.c(appName, string) && (textView = statusLayout.OooO) != null) {
                    textView.setText(appName);
                }
                MiniappLaunchLoadingView miniappLaunchLoadingView = statusLayout.OooOO0;
                if (miniappLaunchLoadingView != null) {
                    Intrinsics.h(logo, "logo");
                    try {
                        AppCompatImageView appCompatImageView = miniappLaunchLoadingView.OooO00o;
                        if (appCompatImageView == null) {
                            Intrinsics.z("mLoadingImg");
                            appCompatImageView = null;
                        }
                        AppCompatImageView appCompatImageView2 = appCompatImageView;
                        if (((AnimtionProxy) TmcProxy.get(AnimtionProxy.class)).enableLoadingAnimation() && !miniappLaunchLoadingView.OooO0o) {
                            miniappLaunchLoadingView.OooO0oO = true;
                            miniappLaunchLoadingView.OooO00o();
                        }
                        if (logo.length() == 0) {
                            return;
                        }
                        ImageLoaderProxy imageLoaderProxy = (ImageLoaderProxy) TmcProxy.get(ImageLoaderProxy.class);
                        Context context = miniappLaunchLoadingView.getContext();
                        int dp2px = CommonExtKt.getDp2px(14);
                        Integer num = miniappLaunchLoadingView.OooO0OO;
                        int i11 = (num != null && num.intValue() == 2) ? R.drawable.drawable_app_icon_place_holder_normal_mode : R.drawable.drawable_app_icon_place_holder;
                        Integer num2 = miniappLaunchLoadingView.OooO0OO;
                        imageLoaderProxy.loadImgRoundCorners(context, logo, appCompatImageView2, dp2px, i11, (num2 != null && num2.intValue() == 2) ? R.drawable.drawable_app_icon_place_holder_normal_mode : R.drawable.drawable_app_icon_place_holder);
                    } catch (Throwable th2) {
                        TmcLogger.e(miniappLaunchLoadingView.OooO0Oo, th2);
                    }
                }
            }
        }

        public static void showMainLayoutAlpha(StatusAction statusAction, float f11) {
            StatusLayout statusLayout = statusAction.getStatusLayout();
            if (statusLayout != null) {
                statusLayout.setMainLayoutAlpha(f11);
            }
        }

        public static void showNoNetwork(StatusAction statusAction, StatusLayout.OooO0O0 oooO0O0, int i11, String str, String str2, StatusLayout.OooO00o oooO00o) {
            if (statusAction.getStatusLayout() != null) {
                PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                Bundle bundle = new Bundle();
                bundle.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 1);
                Unit unit = Unit.f67061a;
                performanceAnalyseProxy.recordForCommon(str2, TmcConstants.REPORTER_NO_NET_WORK_PAGE, bundle);
                Integer viewThemeMode = statusAction.getViewThemeMode();
                showErrorLayout$default(statusAction, (viewThemeMode != null && viewThemeMode.intValue() == 2) ? R.drawable.mini_ic_no_network_normal_mode : R.drawable.mini_ic_no_network, R.string.mini_no_network_info, R.string.mini_no_network_connection, oooO0O0, false, false, oooO00o, 48, null);
            }
        }

        public static /* synthetic */ void showNoNetwork$default(StatusAction statusAction, StatusLayout.OooO0O0 oooO0O0, int i11, String str, String str2, StatusLayout.OooO00o oooO00o, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showNoNetwork");
            }
            if ((i12 & 2) != 0) {
                i11 = R.string.loading_error_tv;
            }
            int i13 = i11;
            if ((i12 & 4) != 0) {
                str = "";
            }
            String str3 = str;
            if ((i12 & 16) != 0) {
                oooO00o = null;
            }
            statusAction.showNoNetwork(oooO0O0, i13, str3, str2, oooO00o);
        }

        public static void showPhotoEmpty(StatusAction statusAction, int i11, int i12, StatusLayout.OooO0O0 oooO0O0) {
            StatusLayout statusLayout = statusAction.getStatusLayout();
            if (statusLayout != null) {
                showErrorLayout$default(statusAction, b.getDrawable(statusLayout.getContext(), i11), statusLayout.getContext().getString(i12), oooO0O0, (String) null, (StatusLayout.OooO00o) null, 24, (Object) null);
                statusLayout.setHintColor(R.color.mini_color_686c73);
            }
        }

        public static void showUnstableNetwork(StatusAction statusAction, StatusLayout.OooO0O0 oooO0O0, int i11, String str, String str2, StatusLayout.OooO00o oooO00o) {
            if (statusAction.getStatusLayout() != null) {
                PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                Bundle bundle = new Bundle();
                bundle.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 3);
                Unit unit = Unit.f67061a;
                performanceAnalyseProxy.recordForCommon(str2, TmcConstants.REPORTER_NO_NET_WORK_PAGE, bundle);
                Integer viewThemeMode = statusAction.getViewThemeMode();
                statusAction.showErrorLayout((viewThemeMode != null && viewThemeMode.intValue() == 2) ? R.drawable.mini_ic_unstable_network_normal_mode : R.drawable.mini_ic_unstable_network, R.string.mini_unstable_network_info, R.string.mini_unstable_network, oooO0O0, true, true, oooO00o);
            }
        }

        public static /* synthetic */ void showUnstableNetwork$default(StatusAction statusAction, StatusLayout.OooO0O0 oooO0O0, int i11, String str, String str2, StatusLayout.OooO00o oooO00o, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showUnstableNetwork");
            }
            if ((i12 & 2) != 0) {
                i11 = R.string.loading_error_tv;
            }
            int i13 = i11;
            if ((i12 & 4) != 0) {
                str = "";
            }
            String str3 = str;
            if ((i12 & 16) != 0) {
                oooO00o = null;
            }
            statusAction.showUnstableNetwork(oooO0O0, i13, str3, str2, oooO00o);
        }

        public static void statusLayoutCreateShortCutsSuccess(StatusAction statusAction, String appId, Function3<? super String, ? super String, ? super String, Unit> function3) {
            Intrinsics.h(appId, "appId");
            if (statusAction.getStatusLayout() != null) {
                Intrinsics.h(appId, "appId");
            }
        }

        public static void statusLayoutOnResume(StatusAction statusAction) {
            MiniNoNetworkView miniNoNetworkView;
            StatusLayout statusLayout = statusAction.getStatusLayout();
            if (statusLayout == null || (miniNoNetworkView = statusLayout.OooOOO0) == null || miniNoNetworkView.getVisibility() != 0) {
                return;
            }
            OfflineAppExtensionKt.offlineAppOnResume(miniNoNetworkView, miniNoNetworkView.getLlOfflineApps());
        }

        public static void updateStepAnimation(StatusAction statusAction, LoadStepAction step) {
            Intrinsics.h(step, "step");
            StatusLayout statusLayout = statusAction.getStatusLayout();
            if (statusLayout != null) {
                Intrinsics.h(step, "step");
                LoadingTextView loadingTextView = statusLayout.OooO0oo;
                if (loadingTextView != null) {
                    loadingTextView.OooO00o(step);
                }
            }
        }
    }

    StatusLayout getStatusLayout();

    Integer getViewThemeMode();

    boolean isLoadStatusLoadingOrError();

    void setLoadingProgressConfig(LoadingTextView.LoadingAnimationModel loadingAnimationModel);

    boolean showComplete();

    void showCustomErrorLayout(String str, String str2, String str3, StatusLayout.OooO0O0 oooO0O0, String str4, StatusLayout.OooO00o oooO00o);

    void showError(StatusLayout.OooO0O0 oooO0O0, int i11, String str, String str2, StatusLayout.OooO00o oooO00o);

    void showErrorLayout(int i11, int i12, int i13, StatusLayout.OooO0O0 oooO0O0, boolean z10, boolean z11, StatusLayout.OooO00o oooO00o);

    void showErrorLayout(int i11, int i12, StatusLayout.OooO0O0 oooO0O0, String str, StatusLayout.OooO00o oooO00o);

    void showErrorLayout(Drawable drawable, CharSequence charSequence, StatusLayout.OooO0O0 oooO0O0, String str, StatusLayout.OooO00o oooO00o);

    void showErrorLayout(Drawable drawable, CharSequence charSequence, CharSequence charSequence2, StatusLayout.OooO0O0 oooO0O0, String str, boolean z10, boolean z11, StatusLayout.OooO00o oooO00o);

    void showLoading();

    void showLoadingLogo(String str, String str2);

    void showMainLayoutAlpha(float f11);

    void showNoNetwork(StatusLayout.OooO0O0 oooO0O0, int i11, String str, String str2, StatusLayout.OooO00o oooO00o);

    void showPhotoEmpty(int i11, int i12, StatusLayout.OooO0O0 oooO0O0);

    void showUnstableNetwork(StatusLayout.OooO0O0 oooO0O0, int i11, String str, String str2, StatusLayout.OooO00o oooO00o);

    void statusLayoutCreateShortCutsSuccess(String str, Function3<? super String, ? super String, ? super String, Unit> function3);

    void statusLayoutOnResume();

    void updateStepAnimation(LoadStepAction loadStepAction);
}
