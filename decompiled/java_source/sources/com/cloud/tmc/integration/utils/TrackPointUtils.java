package com.cloud.tmc.integration.utils;

import android.os.Bundle;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.utils.ext.StringExtKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J2\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004H\u0007J\u001e\u0010\f\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0007J$\u0010\f\u001a\u00020\u00062\b\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0007J\u001a\u0010\u000f\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\u0004H\u0007J4\u0010\u000f\u001a\u00020\u00062\b\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/cloud/tmc/integration/utils/TrackPointUtils;", "", "()V", "TAG", "", "openPageActionTrack", "", "page", "Lcom/cloud/tmc/integration/structure/Page;", "navigationType", FrameworkConstants.GLOBAL_DATA_KEY_PAGE_PATH, "pageRandomIdByGAId", "pageRouteTrackEnd", "appId", "chainId", "pageRouteTrackStart", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TrackPointUtils {
    public static final TrackPointUtils INSTANCE = new TrackPointUtils();
    private static final String TAG = "TrackPointUtils";

    private TrackPointUtils() {
    }

    @JvmStatic
    @JvmOverloads
    public static final void openPageActionTrack(Page page, String navigationType) {
        Intrinsics.h(navigationType, "navigationType");
        openPageActionTrack$default(page, navigationType, null, null, 12, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void openPageActionTrack(Page page, String navigationType, String str) {
        Intrinsics.h(navigationType, "navigationType");
        openPageActionTrack$default(page, navigationType, str, null, 8, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void openPageActionTrack(Page page, String navigationType, String pagePath, String pageRandomIdByGAId) {
        App app;
        Intrinsics.h(navigationType, "navigationType");
        try {
            boolean zContains = CollectionsKt.o(TmcConstants.NAVIGATION_ON_START, TmcConstants.NAVIGATION_HOT_RE_LAUNCH, TmcConstants.NAVIGATION_HOT_NAVIGATE_TO, TmcConstants.NAVIGATION_HOT_SHELL_START).contains(navigationType);
            PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            String appId = (page == null || (app = page.getApp()) == null) ? null : app.getAppId();
            PointAnalyseType pointAnalyseType = PointAnalyseType.POINT_OPEN_PAGE_ACTION;
            Bundle bundle = new Bundle();
            String str = ChainPoint.PAGE_PATH;
            String pagePath2 = page != null ? page.getPagePath() : null;
            if (pagePath2 == null) {
                pagePath2 = "";
            }
            bundle.putString(str, StringExtKt.orDefault(pagePath, pagePath2));
            bundle.putString("navigationType", navigationType);
            bundle.putBoolean(ChainPoint.NAVIGATION_IS_FIRST_PAGE, zContains);
            if (pageRandomIdByGAId == null) {
                pageRandomIdByGAId = "null";
            }
            bundle.putString(TmcConstants.KEY_PAGE_RANDOM_ID, pageRandomIdByGAId);
            Unit unit = Unit.f67061a;
            performanceAnalyseProxy.record(appId, pointAnalyseType, "", bundle);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
        }
    }

    public static /* synthetic */ void openPageActionTrack$default(Page page, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            str2 = null;
        }
        if ((i11 & 8) != 0) {
            str3 = null;
        }
        openPageActionTrack(page, str, str2, str3);
    }

    @JvmStatic
    @JvmOverloads
    public static final void pageRouteTrackEnd(Page page) {
        pageRouteTrackEnd$default(page, null, 2, null);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001a  */
    @JvmStatic
    @JvmOverloads
    public static final void pageRouteTrackEnd(Page page, String pagePath) {
        Bundle startParams;
        String string;
        App app;
        if (page != null) {
            try {
                App app2 = page.getApp();
                if (app2 == null || (startParams = app2.getStartParams()) == null) {
                    string = null;
                } else {
                    string = startParams.getString(TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE);
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2.getMessage(), th2);
                return;
            }
        } else {
            string = null;
        }
        String strOrDefault = StringExtKt.orDefault(string, TmcConstants.COLD_OPEN_TYPE);
        String appId = (page == null || (app = page.getApp()) == null) ? null : app.getAppId();
        String pagePath2 = page != null ? page.getPagePath() : null;
        if (pagePath2 == null) {
            pagePath2 = "";
        }
        pageRouteTrackEnd(appId, strOrDefault, StringExtKt.orDefault(pagePath, pagePath2));
    }

    @JvmStatic
    @JvmOverloads
    public static final void pageRouteTrackEnd(String appId, String chainId, String pagePath) {
        Intrinsics.h(chainId, "chainId");
        try {
            PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            PointAnalyseType pointAnalyseType = PointAnalyseType.POINT_CHAIN_END;
            Bundle bundle = new Bundle();
            bundle.putString(ChainPoint.TYPE, "page");
            bundle.putString(ChainPoint.CHAIN_ID, chainId);
            bundle.putString(ChainPoint.PAGE_PATH, String.valueOf(pagePath));
            Unit unit = Unit.f67061a;
            performanceAnalyseProxy.record(appId, pointAnalyseType, ChainPoint.ROUTE_PAGE, bundle);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
        }
    }

    public static /* synthetic */ void pageRouteTrackEnd$default(Page page, String str, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = null;
        }
        pageRouteTrackEnd(page, str);
    }

    @JvmStatic
    public static final void pageRouteTrackStart(Page page, String navigationType) {
        String pageRandomIdByGAId;
        App app;
        App app2;
        Bundle startParams;
        Intrinsics.h(navigationType, "navigationType");
        if (page != null) {
            try {
                pageRandomIdByGAId = page.getPageRandomIdByGAId();
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2.getMessage(), th2);
                return;
            }
        } else {
            pageRandomIdByGAId = null;
        }
        openPageActionTrack(page, navigationType, null, pageRandomIdByGAId);
        pageRouteTrackStart((page == null || (app = page.getApp()) == null) ? null : app.getAppId(), StringExtKt.orDefault((page == null || (app2 = page.getApp()) == null || (startParams = app2.getStartParams()) == null) ? null : startParams.getString(TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE), TmcConstants.COLD_OPEN_TYPE), String.valueOf(page != null ? page.getPagePath() : null), navigationType, page != null ? page.getPageRandomIdByGAId() : null);
    }

    @JvmStatic
    public static final void pageRouteTrackStart(String appId, String chainId, String pagePath, String navigationType, String pageRandomIdByGAId) {
        Intrinsics.h(chainId, "chainId");
        Intrinsics.h(pagePath, "pagePath");
        Intrinsics.h(navigationType, "navigationType");
        try {
            PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            PointAnalyseType pointAnalyseType = PointAnalyseType.POINT_CHAIN_START;
            Bundle bundle = new Bundle();
            bundle.putString(ChainPoint.TYPE, "page");
            bundle.putString(ChainPoint.CHAIN_ID, chainId);
            bundle.putString(ChainPoint.PAGE_PATH, pagePath);
            bundle.putString("navigationType", navigationType);
            bundle.putString(TmcConstants.KEY_PAGE_RANDOM_ID, String.valueOf(pageRandomIdByGAId));
            Unit unit = Unit.f67061a;
            performanceAnalyseProxy.record(appId, pointAnalyseType, ChainPoint.ROUTE_PAGE, bundle);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
        }
    }
}
