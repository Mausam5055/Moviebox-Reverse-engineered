package com.cloud.tmc.miniapp.ui.extension;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewGroupKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniapp.ByteAppManager;
import com.cloud.tmc.miniapp.offlineapps.OfflineAppBean;
import com.cloud.tmc.miniapp.offlineapps.ScanScene;
import com.cloud.tmc.miniapp.offlineapps.scan.OooO00o;
import com.cloud.tmc.miniapp.offlineapps.scan.OooO0O0;
import com.cloud.tmc.miniapp.widget.MiniNoNetworkView;
import com.cloud.tmc.miniapp.widget.OfflineAppView;
import com.cloud.tmc.miniapp.widget.StatusLayout;
import com.cloud.tmc.miniutils.util.NetworkUtils;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineAppExtensionKt {
    private static final String TAG = "OfflineAppExtension";
    private static final int offlineAppViews = 4;

    /* JADX INFO: renamed from: com.cloud.tmc.miniapp.ui.extension.OfflineAppExtensionKt$realOfflineAppUpdate$1, reason: invalid class name */
    public static final class AnonymousClass1 implements OooO00o {
        public final /* synthetic */ ConstraintLayout $clOfflineAppsContainer;
        public final /* synthetic */ Context $context;
        public final /* synthetic */ LinearLayout $llOfflineApps;
        public final /* synthetic */ LinearLayout $llOfflineAppsMore;

        public AnonymousClass1(ConstraintLayout constraintLayout, LinearLayout linearLayout, LinearLayout linearLayout2, Context context) {
            this.$clOfflineAppsContainer = constraintLayout;
            this.$llOfflineAppsMore = linearLayout;
            this.$llOfflineApps = linearLayout2;
            this.$context = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void result$lambda$5(List offlineApps, ConstraintLayout constraintLayout, LinearLayout linearLayout, LinearLayout linearLayout2, final Context context) {
            Intrinsics.h(offlineApps, "$offlineApps");
            Intrinsics.h(context, "$context");
            try {
                if (offlineApps.isEmpty()) {
                    if (constraintLayout == null) {
                        return;
                    }
                    constraintLayout.setVisibility(8);
                    return;
                }
                Bundle bundle = new Bundle();
                if (constraintLayout != null) {
                    constraintLayout.setVisibility(0);
                }
                if (offlineApps.size() > OfflineAppExtensionKt.offlineAppViews) {
                    bundle.putString(NotificationCompat.CATEGORY_STATUS, "more");
                    if (linearLayout != null) {
                        linearLayout.setVisibility(0);
                    }
                } else if (linearLayout != null) {
                    linearLayout.setVisibility(8);
                }
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record("", PointAnalyseType.POINT_LATER_OFFLINE_EX, "", bundle);
                ArrayList arrayList = new ArrayList();
                for (int i11 = 0; i11 < 4; i11++) {
                    if (i11 >= offlineApps.size()) {
                        View view = linearLayout2 != null ? ViewGroupKt.get(linearLayout2, i11) : null;
                        if (view != null) {
                            view.setVisibility(4);
                        }
                    } else {
                        OfflineAppBean offlineAppBean = (OfflineAppBean) offlineApps.get(i11);
                        View view2 = linearLayout2 != null ? ViewGroupKt.get(linearLayout2, i11) : null;
                        if (view2 != null) {
                            view2.setVisibility(0);
                        }
                        View view3 = linearLayout2 != null ? ViewGroupKt.get(linearLayout2, i11) : null;
                        OfflineAppView offlineAppView = view3 instanceof OfflineAppView ? (OfflineAppView) view3 : null;
                        if (offlineAppView != null) {
                            String appId = offlineAppBean.getAppId();
                            String logoUrl = offlineAppBean.getLogoUrl();
                            if (logoUrl == null) {
                                logoUrl = "";
                            }
                            String name = offlineAppBean.getName();
                            if (name == null) {
                                name = "";
                            }
                            String logoPath = offlineAppBean.getLogoPath();
                            if (logoPath == null) {
                                logoPath = "";
                            }
                            offlineAppView.OooO00o(appId, logoUrl, name, logoPath);
                            offlineAppView.OooO00o();
                            offlineAppView.OooO0OO.setText(offlineAppView.OooO0oO);
                            offlineAppView.OooO00o(null, null);
                        }
                        arrayList.add(offlineAppBean.getAppId());
                    }
                }
                PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                PointAnalyseType pointAnalyseType = PointAnalyseType.POINT_LATER_OFFLINE_APP_EX;
                Bundle bundle2 = new Bundle();
                bundle2.putString("miniappid", arrayList.toString());
                Unit unit = Unit.f67061a;
                performanceAnalyseProxy.record("", pointAnalyseType, "", bundle2);
                if (linearLayout != null) {
                    linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.ui.extension.g
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view4) {
                            OfflineAppExtensionKt.AnonymousClass1.result$lambda$5$lambda$4(context, view4);
                        }
                    });
                }
            } catch (Throwable th2) {
                TmcLogger.e(OfflineAppExtensionKt.TAG, "offlineAppUpdate fail:", th2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void result$lambda$5$lambda$4(Context context, View view) {
            Intrinsics.h(context, "$context");
            PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            PointAnalyseType pointAnalyseType = PointAnalyseType.POINT_LATER_OFFLINE_CLICK;
            Bundle bundle = new Bundle();
            bundle.putString(NativeComponentConstants.KEY_COMPONENT_TYPE, "more");
            Unit unit = Unit.f67061a;
            performanceAnalyseProxy.record("", pointAnalyseType, "", bundle);
            Bundle bundle2 = new Bundle();
            bundle2.putString(TmcConstants.EXTRA_OPEN_MC_SCENE, "1");
            ByteAppManager.launchMiniAppForId(context, "1000886706715795456", "120011", bundle2);
        }

        @Override // com.cloud.tmc.miniapp.offlineapps.scan.OooO00o
        public void result(final List<OfflineAppBean> offlineApps) {
            Intrinsics.h(offlineApps, "offlineApps");
            final ConstraintLayout constraintLayout = this.$clOfflineAppsContainer;
            final LinearLayout linearLayout = this.$llOfflineAppsMore;
            final LinearLayout linearLayout2 = this.$llOfflineApps;
            final Context context = this.$context;
            ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.miniapp.ui.extension.h
                @Override // java.lang.Runnable
                public final void run() {
                    OfflineAppExtensionKt.AnonymousClass1.result$lambda$5(offlineApps, constraintLayout, linearLayout, linearLayout2, context);
                }
            });
        }
    }

    public static final void createShortCutsSuccess(MiniNoNetworkView miniNoNetworkView, String appId, LinearLayout linearLayout, Function3<? super String, ? super String, ? super String, Unit> function3) {
        Intrinsics.h(miniNoNetworkView, "<this>");
        Intrinsics.h(appId, "appId");
        realCreateShortCutsSuccess(appId, linearLayout, function3);
    }

    public static final void createShortCutsSuccess(StatusLayout statusLayout, String appId, LinearLayout linearLayout, Function3<? super String, ? super String, ? super String, Unit> function3) {
        Intrinsics.h(statusLayout, "<this>");
        Intrinsics.h(appId, "appId");
        realCreateShortCutsSuccess(appId, linearLayout, function3);
    }

    public static final void offlineAppOnResume(MiniNoNetworkView miniNoNetworkView, LinearLayout linearLayout) {
        Intrinsics.h(miniNoNetworkView, "<this>");
        realOfflineAppOnResume(linearLayout);
    }

    public static final void offlineAppOnResume(StatusLayout statusLayout, LinearLayout linearLayout) {
        Intrinsics.h(statusLayout, "<this>");
        realOfflineAppOnResume(linearLayout);
    }

    public static final void offlineAppUpdate(MiniNoNetworkView miniNoNetworkView, Context context, LinearLayout linearLayout, LinearLayout linearLayout2, ConstraintLayout constraintLayout) {
        Intrinsics.h(miniNoNetworkView, "<this>");
        Intrinsics.h(context, "context");
        realOfflineAppUpdate(context, linearLayout, linearLayout2, constraintLayout);
    }

    public static final void offlineAppUpdate(StatusLayout statusLayout, Context context, LinearLayout linearLayout, LinearLayout linearLayout2, ConstraintLayout constraintLayout) {
        Intrinsics.h(statusLayout, "<this>");
        Intrinsics.h(context, "context");
        realOfflineAppUpdate(context, linearLayout, linearLayout2, constraintLayout);
    }

    private static final void realCreateShortCutsSuccess(String str, LinearLayout linearLayout, Function3<? super String, ? super String, ? super String, Unit> function3) {
        try {
            int i11 = offlineAppViews;
            for (int i12 = 0; i12 < i11; i12++) {
                View view = linearLayout != null ? ViewGroupKt.get(linearLayout, i12) : null;
                OfflineAppView offlineAppView = view instanceof OfflineAppView ? (OfflineAppView) view : null;
                if (offlineAppView != null) {
                    offlineAppView.OooO00o(str, function3);
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "offlineAppOnResume fail:", th2);
        }
    }

    private static final void realOfflineAppOnResume(LinearLayout linearLayout) {
        try {
            int i11 = offlineAppViews;
            for (int i12 = 0; i12 < i11; i12++) {
                View view = linearLayout != null ? ViewGroupKt.get(linearLayout, i12) : null;
                OfflineAppView offlineAppView = view instanceof OfflineAppView ? (OfflineAppView) view : null;
                if (offlineAppView != null) {
                    offlineAppView.OooO00o(null, null);
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "offlineAppOnResume fail:", th2);
        }
    }

    private static final void realOfflineAppUpdate(Context context, LinearLayout linearLayout, LinearLayout linearLayout2, ConstraintLayout constraintLayout) {
        int networkStatus = NetworkUtils.getNetworkStatus();
        if (networkStatus == 1) {
            if (constraintLayout != null) {
                constraintLayout.setVisibility(8);
            }
            TmcLogger.d(TAG, "NetworkUtils.getNetworkStatus:" + networkStatus);
            return;
        }
        if (!((ConfigService) TmcProxy.get(ConfigService.class)).getConfigBoolean(LauncherMiniAppConfigHelper.KEY_OFFLINE_APPS_SWITCH, true)) {
            if (constraintLayout != null) {
                constraintLayout.setVisibility(8);
            }
            TmcLogger.d(TAG, "offlineAppsSwitch is close");
        } else {
            ScanScene scanScene = ScanScene.SCAN_PINFORLATER;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(constraintLayout, linearLayout, linearLayout2, context);
            Intrinsics.h(scanScene, "scanScene");
            OooO0O0.OooO00o.OooO00o(false, scanScene, anonymousClass1);
        }
    }
}
