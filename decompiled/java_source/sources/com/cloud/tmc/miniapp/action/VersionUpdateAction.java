package com.cloud.tmc.miniapp.action;

import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.widget.TextView;
import com.cloud.tmc.integration.activity.LoadStepAction;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.widget.LoadingTextView;
import com.cloud.tmc.miniapp.widget.StatusLayout;
import com.cloud.tmc.miniapp.widget.UpgradeHostAppPromptLayout;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface VersionUpdateAction extends StatusAction {

    public static final class DefaultImpls {
        public static boolean isLoadStatusLoadingOrError(VersionUpdateAction versionUpdateAction) {
            return StatusAction.DefaultImpls.isLoadStatusLoadingOrError(versionUpdateAction);
        }

        public static void setLoadingProgressConfig(VersionUpdateAction versionUpdateAction, LoadingTextView.LoadingAnimationModel progressConfig) {
            Intrinsics.h(progressConfig, "progressConfig");
            StatusAction.DefaultImpls.setLoadingProgressConfig(versionUpdateAction, progressConfig);
        }

        public static boolean showComplete(VersionUpdateAction versionUpdateAction) {
            return StatusAction.DefaultImpls.showComplete(versionUpdateAction);
        }

        public static void showCustomErrorLayout(VersionUpdateAction versionUpdateAction, String str, String str2, String str3, StatusLayout.OooO0O0 oooO0O0, String str4, StatusLayout.OooO00o oooO00o) {
            StatusAction.DefaultImpls.showCustomErrorLayout(versionUpdateAction, str, str2, str3, oooO0O0, str4, oooO00o);
        }

        public static void showError(VersionUpdateAction versionUpdateAction, StatusLayout.OooO0O0 oooO0O0, int i11, String str, String str2, StatusLayout.OooO00o oooO00o) {
            StatusAction.DefaultImpls.showError(versionUpdateAction, oooO0O0, i11, str, str2, oooO00o);
        }

        public static void showErrorLayout(VersionUpdateAction versionUpdateAction, int i11, int i12, int i13, StatusLayout.OooO0O0 oooO0O0, boolean z10, boolean z11, StatusLayout.OooO00o oooO00o) {
            StatusAction.DefaultImpls.showErrorLayout(versionUpdateAction, i11, i12, i13, oooO0O0, z10, z11, oooO00o);
        }

        public static void showErrorLayout(VersionUpdateAction versionUpdateAction, int i11, int i12, StatusLayout.OooO0O0 oooO0O0, String str, StatusLayout.OooO00o oooO00o) {
            StatusAction.DefaultImpls.showErrorLayout(versionUpdateAction, i11, i12, oooO0O0, str, oooO00o);
        }

        public static void showErrorLayout(VersionUpdateAction versionUpdateAction, Drawable drawable, CharSequence charSequence, StatusLayout.OooO0O0 oooO0O0, String str, StatusLayout.OooO00o oooO00o) {
            StatusAction.DefaultImpls.showErrorLayout(versionUpdateAction, drawable, charSequence, oooO0O0, str, oooO00o);
        }

        public static void showErrorLayout(VersionUpdateAction versionUpdateAction, Drawable drawable, CharSequence charSequence, CharSequence charSequence2, StatusLayout.OooO0O0 oooO0O0, String str, boolean z10, boolean z11, StatusLayout.OooO00o oooO00o) {
            StatusAction.DefaultImpls.showErrorLayout(versionUpdateAction, drawable, charSequence, charSequence2, oooO0O0, str, z10, z11, oooO00o);
        }

        public static void showLoading(VersionUpdateAction versionUpdateAction) {
            StatusAction.DefaultImpls.showLoading(versionUpdateAction);
        }

        public static void showLoadingLogo(VersionUpdateAction versionUpdateAction, String appName, String logo) {
            Intrinsics.h(appName, "appName");
            Intrinsics.h(logo, "logo");
            StatusAction.DefaultImpls.showLoadingLogo(versionUpdateAction, appName, logo);
        }

        public static void showMainLayoutAlpha(VersionUpdateAction versionUpdateAction, float f11) {
            StatusAction.DefaultImpls.showMainLayoutAlpha(versionUpdateAction, f11);
        }

        public static void showNoNetwork(VersionUpdateAction versionUpdateAction, StatusLayout.OooO0O0 oooO0O0, int i11, String str, String str2, StatusLayout.OooO00o oooO00o) {
            StatusAction.DefaultImpls.showNoNetwork(versionUpdateAction, oooO0O0, i11, str, str2, oooO00o);
        }

        public static void showPhotoEmpty(VersionUpdateAction versionUpdateAction, int i11, int i12, StatusLayout.OooO0O0 oooO0O0) {
            StatusAction.DefaultImpls.showPhotoEmpty(versionUpdateAction, i11, i12, oooO0O0);
        }

        public static void showUnstableNetwork(VersionUpdateAction versionUpdateAction, StatusLayout.OooO0O0 oooO0O0, int i11, String str, String str2, StatusLayout.OooO00o oooO00o) {
            StatusAction.DefaultImpls.showUnstableNetwork(versionUpdateAction, oooO0O0, i11, str, str2, oooO00o);
        }

        public static void showUpgradeHintView(VersionUpdateAction versionUpdateAction, String appId, Integer num) {
            UpgradeHostAppPromptLayout upgradeHostAppPromptLayout;
            StatusLayout statusLayout = versionUpdateAction.getStatusLayout();
            if (statusLayout == null || appId == null || appId.length() == 0 || (upgradeHostAppPromptLayout = statusLayout.OooOO0O) == null) {
                return;
            }
            Intrinsics.h(appId, "appId");
            upgradeHostAppPromptLayout.OooO0O0 = appId;
            upgradeHostAppPromptLayout.setVisibility(0);
            if (upgradeHostAppPromptLayout.OooO00o == null) {
                if (num != null && num.intValue() == 2) {
                    upgradeHostAppPromptLayout.OooO00o = LayoutInflater.from(upgradeHostAppPromptLayout.getContext()).inflate(R.layout.app_layout_view_upgrade_host_app_prompt_normal_mode, upgradeHostAppPromptLayout);
                } else {
                    upgradeHostAppPromptLayout.OooO00o = LayoutInflater.from(upgradeHostAppPromptLayout.getContext()).inflate(R.layout.app_layout_view_upgrade_host_app_prompt, upgradeHostAppPromptLayout);
                }
                TextView textView = (TextView) upgradeHostAppPromptLayout.findViewById(R.id.tv_open_store);
                if (textView != null) {
                    textView.setOnClickListener(upgradeHostAppPromptLayout);
                }
            }
        }

        public static /* synthetic */ void showUpgradeHintView$default(VersionUpdateAction versionUpdateAction, String str, Integer num, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showUpgradeHintView");
            }
            if ((i11 & 2) != 0) {
                num = 1;
            }
            versionUpdateAction.showUpgradeHintView(str, num);
        }

        public static void statusLayoutCreateShortCutsSuccess(VersionUpdateAction versionUpdateAction, String appId, Function3<? super String, ? super String, ? super String, Unit> function3) {
            Intrinsics.h(appId, "appId");
            StatusAction.DefaultImpls.statusLayoutCreateShortCutsSuccess(versionUpdateAction, appId, function3);
        }

        public static void statusLayoutOnResume(VersionUpdateAction versionUpdateAction) {
            StatusAction.DefaultImpls.statusLayoutOnResume(versionUpdateAction);
        }

        public static void updateStepAnimation(VersionUpdateAction versionUpdateAction, LoadStepAction step) {
            Intrinsics.h(step, "step");
            StatusAction.DefaultImpls.updateStepAnimation(versionUpdateAction, step);
        }
    }

    void showUpgradeHintView(String str, Integer num);
}
