package com.cloud.tmc.miniapp.performanceanalyse.app;

import android.os.Bundle;
import com.cloud.tmc.integration.proxy.ReportProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppManager;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointConstants;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import com.cloud.tmc.miniutils.util.GsonUtils;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class OooO0O0 {
    public static final OooO0O0 OooO00o = new OooO0O0();
    public static final Map<String, OooO00o> OooO0O0 = new LinkedHashMap();

    public final int OooO00o(int i11, int i12) {
        if (i11 == 2) {
            return i11;
        }
        if (i11 == 0) {
            return i12;
        }
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x0125  */
    public final void OooO00o(OooO00o appOpenPointData, Bundle data) {
        long j11;
        long j12;
        Bundle sceneParams;
        boolean z10 = false;
        Intrinsics.h(appOpenPointData, "appOpenPointData");
        Intrinsics.h(data, "data");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("reportAppOpenSuccess =======> appOpenPointData:");
        sb2.append(appOpenPointData);
        sb2.append(", data:");
        sb2.append(data);
        try {
            if (appOpenPointData.OooOO0o) {
                return;
            }
            data.putString("openMiniAppResult", "true");
            data.putInt("syncType", (appOpenPointData.OooO0oO == 2 || appOpenPointData.OooO0oo == 2 || appOpenPointData.OooO == 2 || appOpenPointData.OooOO0 == 2) ? 2 : 1);
            data.putString("openMiniAppFailedReason", "");
            data.putInt("maxStage", 17);
            data.putString("isExitInStage", "");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            long j13 = 0;
            long j14 = 0;
            for (int i11 = 1; i11 < 18; i11++) {
                String strValueOf = String.valueOf(i11);
                Long l11 = appOpenPointData.OooO0OO.get(strValueOf);
                long jLongValue = l11 != null ? l11.longValue() : 0L;
                Long l12 = appOpenPointData.OooO0Oo.get(strValueOf);
                long jLongValue2 = l12 != null ? l12.longValue() : 0L;
                Long l13 = appOpenPointData.OooO0o0.get(strValueOf);
                linkedHashMap.put(strValueOf, Long.valueOf(l13 != null ? l13.longValue() : 0L));
                linkedHashMap2.put(strValueOf, new long[]{jLongValue, jLongValue2});
                if (i11 == 1) {
                    j13 = jLongValue;
                } else if (i11 == 17) {
                    j14 = jLongValue2;
                }
            }
            data.putString("stageCostTime", GsonUtils.toJson(linkedHashMap));
            data.putString("stageRangeTime", GsonUtils.toJson(linkedHashMap2));
            data.putString(PointConstants.POINT_PAGE_PATH, String.valueOf(appOpenPointData.OooO0O0));
            appOpenPointData.OooOOO0 = true;
            appOpenPointData.OooOO0o = true;
            data.remove(ChainPoint.PAGE_PATH);
            data.remove(ChainPoint.PAGE_ID);
            String str = appOpenPointData.OooO00o;
            try {
                App appFindApp = ((AppManager) TmcProxy.get(AppManager.class)).findApp(str);
                j11 = (appFindApp == null || (sceneParams = appFindApp.getSceneParams()) == null) ? 0L : sceneParams.getLong(TmcConstants.KEY_APP_START_FIRST_TIME);
                if (appFindApp != null) {
                    try {
                        Bundle sceneParams2 = appFindApp.getSceneParams();
                        if (sceneParams2 != null) {
                            j12 = sceneParams2.getLong(TmcConstants.KEY_APP_START_MINI_FIRST_TIME);
                        } else {
                            j12 = 0;
                        }
                    } catch (Throwable unused) {
                        j12 = 0;
                    }
                } else {
                    j12 = 0;
                }
                if (appFindApp != null) {
                    try {
                        Bundle sceneParams3 = appFindApp.getSceneParams();
                        if (sceneParams3 != null) {
                            z10 = sceneParams3.getBoolean(TmcConstants.KEY_APP_MINI_PROCESS_ALIVE);
                        }
                    } catch (Throwable unused2) {
                    }
                }
            } catch (Throwable unused3) {
                j11 = 0;
            }
            if (j11 != 0) {
                data.putLong("mini_first_time", j11);
            }
            if (j12 != 0) {
                data.putLong("mini_second_time", j12);
            }
            try {
                if (j11 != 0) {
                    TmcLogger.d("h5PointTrack", "firstStartTime:" + j11);
                    j13 = j11;
                } else if (j12 != 0) {
                    TmcLogger.d("h5PointTrack", "secondStartTime:" + j12);
                    j13 = j12;
                } else {
                    TmcLogger.d("h5PointTrack", "reportStartTime:" + j13);
                }
                data.putString("miniapp_all_start_time", String.valueOf(j14 - j13));
                data.putBoolean("is_mini_process_alive", z10);
                MiniAppLaunch.INSTANCE.trackCommonResPoint(str, data);
                ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(appOpenPointData.OooO00o, "mini_app_open", data);
            } catch (Throwable unused4) {
            }
        } catch (Throwable th2) {
            TmcLogger.e("h5PointTrack", "Exception failed!", th2);
        }
    }

    public final boolean OooO00o(String str) {
        OooO00o oooO00o;
        if (str == null || (oooO00o = (OooO00o) ((LinkedHashMap) OooO0O0).get(str)) == null) {
            return false;
        }
        return oooO00o.OooOOO0;
    }

    public final boolean OooO00o(String str, Bundle data) {
        OooO00o oooO00o;
        String str2 = "false";
        Intrinsics.h(data, "data");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("recordAppStageFail =======> appId:");
        sb2.append(str);
        sb2.append(", data:");
        sb2.append(data);
        try {
            long j11 = data.containsKey(ChainPoint.TIME) ? data.getLong(ChainPoint.TIME) : System.currentTimeMillis();
            if (str == null || (oooO00o = (OooO00o) ((LinkedHashMap) OooO0O0).get(str)) == null) {
                return true;
            }
            data.putString("openMiniAppResult", "false");
            Iterator<Map.Entry<String, Long>> it = oooO00o.OooO0OO.entrySet().iterator();
            while (it.hasNext()) {
                String key = it.next().getKey();
                if (!oooO00o.OooO0Oo.containsKey(key)) {
                    oooO00o.OooO0Oo.put(key, Long.valueOf(j11));
                    Map<String, Long> map = oooO00o.OooO0o0;
                    Long l11 = oooO00o.OooO0Oo.get(key);
                    Intrinsics.e(l11);
                    long jLongValue = l11.longValue();
                    Long l12 = oooO00o.OooO0OO.get(key);
                    Intrinsics.e(l12);
                    map.put(key, Long.valueOf(jLongValue - l12.longValue()));
                    str2 = "true";
                }
            }
            data.putString("isExitInStage", str2);
            OooO0O0 oooO0O0 = OooO00o;
            data.putInt("syncType", oooO0O0.OooO00o(oooO0O0.OooO00o(oooO0O0.OooO00o(oooO0O0.OooO00o(0, oooO00o.OooO0oO), oooO00o.OooO0oo), oooO00o.OooOO0), oooO00o.OooO));
            int size = oooO00o.OooO0OO.size();
            data.putInt("maxStage", size);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            if (1 <= size) {
                int i11 = 1;
                while (true) {
                    String strValueOf = String.valueOf(i11);
                    Long l13 = oooO00o.OooO0OO.get(strValueOf);
                    long jLongValue2 = l13 != null ? l13.longValue() : 0L;
                    Long l14 = oooO00o.OooO0Oo.get(strValueOf);
                    long jLongValue3 = l14 != null ? l14.longValue() : 0L;
                    Long l15 = oooO00o.OooO0o0.get(strValueOf);
                    linkedHashMap.put(strValueOf, Long.valueOf(l15 != null ? l15.longValue() : 0L));
                    linkedHashMap2.put(strValueOf, new long[]{jLongValue2, jLongValue3});
                    if (i11 == size) {
                        break;
                    }
                    i11++;
                }
            }
            data.putString("stageCostTime", GsonUtils.toJson(linkedHashMap));
            data.putString("stageRangeTime", GsonUtils.toJson(linkedHashMap2));
            data.putString(PointConstants.POINT_PAGE_PATH, String.valueOf(oooO00o.OooO0O0));
            MiniAppLaunch.INSTANCE.trackCommonResPoint(str, data);
            data.remove(ChainPoint.PAGE_PATH);
            data.remove(ChainPoint.PAGE_ID);
            ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(oooO00o.OooO00o, "mini_app_open", data);
            oooO00o.OooOO0o = true;
            if (!oooO00o.OooOO0O) {
                com.cloud.tmc.miniapp.performanceanalyse.page.OooO0O0 oooO0O1 = com.cloud.tmc.miniapp.performanceanalyse.page.OooO0O0.OooO00o;
                Bundle bundle = new Bundle();
                bundle.putString("isExitInStage", str2);
                Unit unit = Unit.f67061a;
                oooO0O1.OooO00o(oooO00o, (com.cloud.tmc.miniapp.performanceanalyse.page.OooO00o) null, bundle);
            }
        } catch (Throwable unused) {
        }
        return true;
    }

    public final boolean OooO00o(String stage, String str, Bundle data) {
        Intrinsics.h(stage, "stage");
        Intrinsics.h(data, "data");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("recordAppStageEnd =======> stage:");
        sb2.append(stage);
        sb2.append(", appId:");
        sb2.append(str);
        sb2.append(", data:");
        sb2.append(data);
        try {
            long j11 = data.containsKey(ChainPoint.TIME) ? data.getLong(ChainPoint.TIME) : System.currentTimeMillis();
            if (str != null) {
                OooO0O0 oooO0O0 = OooO00o;
                OooO00o oooO00o = (OooO00o) ((LinkedHashMap) OooO0O0).get(str);
                if (oooO00o == null || !oooO00o.OooO0OO.containsKey(stage) || oooO00o.OooO0Oo.containsKey(stage)) {
                    return true;
                }
                oooO00o.OooO0Oo.put(stage, Long.valueOf(j11));
                Map<String, Long> map = oooO00o.OooO0o0;
                Long l11 = oooO00o.OooO0Oo.get(stage);
                Intrinsics.e(l11);
                long jLongValue = l11.longValue();
                Long l12 = oooO00o.OooO0OO.get(stage);
                Intrinsics.e(l12);
                map.put(stage, Long.valueOf(jLongValue - l12.longValue()));
                if (Intrinsics.c(stage, ChainPoint.PageDrawView)) {
                    oooO0O0.OooO00o(oooO00o, data);
                }
            }
        } catch (Throwable unused) {
        }
        return true;
    }

    public final boolean OooO0O0(String str, Bundle data) {
        Intrinsics.h(data, "data");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("recordAppStageFinish =======> appId:");
        sb2.append(str);
        sb2.append(", data:");
        sb2.append(data);
        if (str != null) {
            try {
                OooO0O0 oooO0O0 = OooO00o;
                Map<String, OooO00o> map = OooO0O0;
                OooO00o oooO00o = (OooO00o) ((LinkedHashMap) map).get(str);
                if (oooO00o == null) {
                    return true;
                }
                if (oooO00o.OooOO0o) {
                    map.remove(str);
                    return true;
                }
                data.putString(ChainPoint.OPEN_MINI_APP_FAILED_REASON, "小程序关闭");
                oooO0O0.OooO00o(str, data);
                map.remove(str);
            } catch (Throwable unused) {
            }
        }
        return true;
    }

    public final boolean OooO0O0(String stage, String str, Bundle data) {
        Intrinsics.h(stage, "stage");
        Intrinsics.h(data, "data");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("recordAppStageStart =======> stage:");
        sb2.append(stage);
        sb2.append(", appId:");
        sb2.append(str);
        sb2.append(", data:");
        sb2.append(data);
        try {
            long j11 = data.containsKey(ChainPoint.TIME) ? data.getLong(ChainPoint.TIME) : System.currentTimeMillis();
            if (str == null) {
                return true;
            }
            if (Intrinsics.c(stage, ChainPoint.AppSetupStep)) {
                Map<String, OooO00o> map = OooO0O0;
                if (map.containsKey(str)) {
                    map.remove(str);
                }
                map.put(str, new OooO00o(str, null, MapsKt.m(TuplesKt.a(stage, Long.valueOf(j11))), new LinkedHashMap(), new LinkedHashMap(), new LinkedHashMap(), 0, 0, 0, 0, false, false, false));
            } else {
                OooO00o oooO00o = (OooO00o) ((LinkedHashMap) OooO0O0).get(str);
                if (oooO00o == null || oooO00o.OooO0OO.containsKey(stage)) {
                    return true;
                }
                oooO00o.OooO0OO.put(stage, Long.valueOf(j11));
                if (Intrinsics.c(stage, ChainPoint.PageCreateContainer)) {
                    oooO00o.OooOO0O = true;
                    oooO00o.OooO0O0 = data.getString(ChainPoint.PAGE_PATH, "");
                }
            }
            return true;
        } catch (Throwable unused) {
        }
    }

    public final boolean OooO0OO(String str, Bundle data) {
        Intrinsics.h(data, "data");
        if (str != null) {
            try {
                OooO00o oooO00o = (OooO00o) ((LinkedHashMap) OooO0O0).get(str);
                if (oooO00o == null) {
                    return true;
                }
                int i11 = data.getInt(ChainPoint.UPDATE_FRAMEWORK_MODE, -1);
                if (i11 != -1) {
                    oooO00o.OooO0oo = i11;
                }
                int i12 = data.getInt(ChainPoint.UPDATE_APP_MODE, -1);
                if (i12 != -1) {
                    oooO00o.OooO0oO = i12;
                }
                int i13 = data.getInt(ChainPoint.DOWNLOAD_FRAMEWORK_MODE, -1);
                if (i13 != -1) {
                    oooO00o.OooOO0 = i13;
                }
                int i14 = data.getInt(ChainPoint.DOWNLOAD_APP_MODE, -1);
                if (i14 != -1) {
                    oooO00o.OooO = i14;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("recordAppStageInsert ==> updateFrameworkMode:");
                sb2.append(i11);
                sb2.append(", updateAppMode:");
                sb2.append(i12);
                sb2.append(", downloadFrameworkMode:");
                sb2.append(i13);
                sb2.append(", downloadAppMode:");
                sb2.append(i14);
            } catch (Throwable unused) {
            }
        }
        return true;
    }
}
