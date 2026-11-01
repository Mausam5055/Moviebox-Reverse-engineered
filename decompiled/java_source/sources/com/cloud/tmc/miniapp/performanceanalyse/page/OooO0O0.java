package com.cloud.tmc.miniapp.performanceanalyse.page;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.tmc.integration.proxy.ReportProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppManager;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointConstants;
import com.cloud.tmc.miniapp.base.ShowPageData;
import com.cloud.tmc.miniapp.base.ShowPageStore;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.cloud.tmc.miniutils.util.GsonUtils;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Stack;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class OooO0O0 {
    public static final OooO0O0 OooO00o = new OooO0O0();

    /* JADX WARN: Code duplicated, block: B:85:0x01f7 A[PHI: r9
  0x01f7: PHI (r9v10 long) = (r9v8 long), (r9v14 long) binds: [B:83:0x01f0, B:76:0x01d0] A[DONT_GENERATE, DONT_INLINE]] */
    public final void OooO00o(com.cloud.tmc.miniapp.performanceanalyse.app.OooO00o appOpenPointData, OooO00o oooO00o, Bundle data) {
        int i11;
        int size;
        long jLongValue;
        long jLongValue2;
        long jLongValue3;
        long jLongValue4;
        String str = "false";
        Intrinsics.h(appOpenPointData, "appOpenPointData");
        Intrinsics.h(data, "data");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("reportPageOpenFail #########> appOpenPointData:");
        sb2.append(appOpenPointData);
        sb2.append(", pageOpenPointData:");
        sb2.append(oooO00o);
        sb2.append(", data");
        sb2.append(data);
        try {
            long j11 = data.containsKey(ChainPoint.TIME) ? data.getLong(ChainPoint.TIME) : System.currentTimeMillis();
            data.putString("openPageResult", "false");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            if (oooO00o == null) {
                size = appOpenPointData.OooO0OO.size();
                if (1 <= size) {
                    int i12 = 1;
                    while (true) {
                        String strValueOf = String.valueOf(i12);
                        Long l11 = appOpenPointData.OooO0OO.get(strValueOf);
                        long jLongValue5 = l11 != null ? l11.longValue() : 0L;
                        Long l12 = appOpenPointData.OooO0Oo.get(strValueOf);
                        long jLongValue6 = l12 != null ? l12.longValue() : 0L;
                        Long l13 = appOpenPointData.OooO0o0.get(strValueOf);
                        linkedHashMap.put(strValueOf, Long.valueOf(l13 != null ? l13.longValue() : 0L));
                        linkedHashMap2.put(strValueOf, new long[]{jLongValue5, jLongValue6});
                        if (i12 == size) {
                            break;
                        } else {
                            i12++;
                        }
                    }
                }
            } else {
                int size2 = oooO00o.OooO0OO.size() + 11;
                Iterator<Map.Entry<String, Long>> it = oooO00o.OooO0OO.entrySet().iterator();
                while (it.hasNext()) {
                    String key = it.next().getKey();
                    if (!oooO00o.OooO0Oo.containsKey(key)) {
                        oooO00o.OooO0Oo.put(key, Long.valueOf(j11));
                        Map<String, Long> map = oooO00o.OooO0o0;
                        Long l14 = oooO00o.OooO0Oo.get(key);
                        Intrinsics.e(l14);
                        long jLongValue7 = l14.longValue();
                        Long l15 = oooO00o.OooO0OO.get(key);
                        Intrinsics.e(l15);
                        map.put(key, Long.valueOf(jLongValue7 - l15.longValue()));
                        str = "true";
                    }
                }
                data.putString("isExitInStage", str);
                int i13 = 1;
                while (true) {
                    i11 = 12;
                    if (i13 >= 12) {
                        break;
                    }
                    String strValueOf2 = String.valueOf(i13);
                    if (oooO00o.OooO0o) {
                        Long l16 = appOpenPointData.OooO0OO.get(strValueOf2);
                        jLongValue3 = l16 != null ? l16.longValue() : 0L;
                        Long l17 = appOpenPointData.OooO0Oo.get(strValueOf2);
                        jLongValue4 = l17 != null ? l17.longValue() : 0L;
                        Long l18 = appOpenPointData.OooO0o0.get(strValueOf2);
                        linkedHashMap.put(strValueOf2, Long.valueOf(l18 != null ? l18.longValue() : 0L));
                    } else {
                        Long l19 = oooO00o.OooO0OO.get("12");
                        jLongValue3 = l19 != null ? l19.longValue() : 0L;
                        Long l20 = oooO00o.OooO0OO.get("12");
                        jLongValue4 = l20 != null ? l20.longValue() : 0L;
                        linkedHashMap.put(strValueOf2, 0L);
                    }
                    linkedHashMap2.put(strValueOf2, new long[]{jLongValue3, jLongValue4});
                    i13++;
                }
                if (12 <= size2) {
                    while (true) {
                        String strValueOf3 = String.valueOf(i11);
                        if (oooO00o.OooO0o || !(Intrinsics.c(strValueOf3, PrepareException.ERROR_FILE2VURL_MINIAPP_FILE_EXCEPTION) || Intrinsics.c(strValueOf3, "16"))) {
                            Long l21 = oooO00o.OooO0OO.get(strValueOf3);
                            jLongValue = l21 != null ? l21.longValue() : 0L;
                            Long l22 = oooO00o.OooO0Oo.get(strValueOf3);
                            if (l22 != null) {
                                jLongValue2 = l22.longValue();
                            } else {
                                jLongValue2 = 0;
                            }
                        } else {
                            Long l23 = oooO00o.OooO0Oo.get("14");
                            jLongValue = l23 != null ? l23.longValue() : 0L;
                            Long l24 = oooO00o.OooO0Oo.get("14");
                            if (l24 != null) {
                                jLongValue2 = l24.longValue();
                            } else {
                                jLongValue2 = 0;
                            }
                        }
                        Long l25 = oooO00o.OooO0o0.get(strValueOf3);
                        linkedHashMap.put(strValueOf3, Long.valueOf(l25 != null ? l25.longValue() : 0L));
                        linkedHashMap2.put(strValueOf3, new long[]{jLongValue, jLongValue2});
                        if (i11 == size2) {
                            break;
                        } else {
                            i11++;
                        }
                    }
                }
                size = size2;
            }
            data.putInt("maxStage", size);
            data.putString("stageCostTime", GsonUtils.toJson(linkedHashMap));
            data.putString("stageRangeTime", GsonUtils.toJson(linkedHashMap2));
            data.putString(PointConstants.POINT_PAGE_PATH, String.valueOf(oooO00o != null ? oooO00o.OooO00o : null));
            if (oooO00o != null) {
                oooO00o.OooO0oO = true;
            }
            data.remove(ChainPoint.PAGE_PATH);
            data.remove(ChainPoint.PAGE_ID);
            ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(appOpenPointData.OooO00o, "mini_page_open", data);
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:55:0x0141 A[PHI: r16
  0x0141: PHI (r16v3 long) = (r16v1 long), (r16v6 long) binds: [B:53:0x013a, B:46:0x011a] A[DONT_GENERATE, DONT_INLINE]] */
    public final void OooO00o(com.cloud.tmc.miniapp.performanceanalyse.app.OooO00o oooO00o, OooO00o oooO00o2, Bundle bundle, boolean z10) {
        int i11;
        App appFindApp;
        ShowPageStore showPageStore;
        Stack<ShowPageData> stackFindShowPages;
        long jLongValue;
        long jLongValue2;
        long jLongValue3;
        long jLongValue4;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("reportPageOpenSuccess #########> appOpenPointData:");
        sb2.append(oooO00o);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("reportPageOpenSuccess #########> pageOpenPointData:");
        sb3.append(oooO00o2);
        StringBuilder sb4 = new StringBuilder();
        sb4.append("reportPageOpenSuccess #########> data:");
        sb4.append(bundle);
        StringBuilder sb5 = new StringBuilder();
        sb5.append("reportPageOpenSuccess #########> isHomePage:");
        sb5.append(z10);
        try {
            if (oooO00o2.OooO0oo) {
                return;
            }
            bundle.putString("openPageResult", "true");
            bundle.putString(ChainPoint.OPEN_PAGE_FAILED_REASON, "");
            bundle.putInt("maxStage", 17);
            bundle.putString("isExitInStage", "");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            int i12 = 1;
            while (true) {
                if (i12 >= 12) {
                    break;
                }
                String strValueOf = String.valueOf(i12);
                if (z10) {
                    Long l11 = oooO00o.OooO0OO.get(strValueOf);
                    jLongValue3 = l11 != null ? l11.longValue() : 0L;
                    Long l12 = oooO00o.OooO0Oo.get(strValueOf);
                    jLongValue4 = l12 != null ? l12.longValue() : 0L;
                    Long l13 = oooO00o.OooO0o0.get(strValueOf);
                    linkedHashMap.put(strValueOf, Long.valueOf(l13 != null ? l13.longValue() : 0L));
                } else {
                    Long l14 = oooO00o2.OooO0OO.get("12");
                    jLongValue3 = l14 != null ? l14.longValue() : 0L;
                    Long l15 = oooO00o2.OooO0OO.get("12");
                    jLongValue4 = l15 != null ? l15.longValue() : 0L;
                    linkedHashMap.put(strValueOf, 0L);
                }
                linkedHashMap2.put(strValueOf, new long[]{jLongValue3, jLongValue4});
                i12++;
            }
            for (i11 = 12; i11 < 18; i11++) {
                String strValueOf2 = String.valueOf(i11);
                if (z10 || !(Intrinsics.c(strValueOf2, PrepareException.ERROR_FILE2VURL_MINIAPP_FILE_EXCEPTION) || Intrinsics.c(strValueOf2, "16"))) {
                    Long l16 = oooO00o2.OooO0OO.get(strValueOf2);
                    jLongValue = l16 != null ? l16.longValue() : 0L;
                    Long l17 = oooO00o2.OooO0Oo.get(strValueOf2);
                    if (l17 != null) {
                        jLongValue2 = l17.longValue();
                    } else {
                        jLongValue2 = 0;
                    }
                } else {
                    Long l18 = oooO00o2.OooO0Oo.get("14");
                    jLongValue = l18 != null ? l18.longValue() : 0L;
                    Long l19 = oooO00o2.OooO0Oo.get("14");
                    if (l19 != null) {
                        jLongValue2 = l19.longValue();
                    } else {
                        jLongValue2 = 0;
                    }
                }
                Long l20 = oooO00o2.OooO0o0.get(strValueOf2);
                linkedHashMap.put(strValueOf2, Long.valueOf(l20 != null ? l20.longValue() : 0L));
                linkedHashMap2.put(strValueOf2, new long[]{jLongValue, jLongValue2});
            }
            bundle.putString("stageCostTime", GsonUtils.toJson(linkedHashMap));
            bundle.putString("stageRangeTime", GsonUtils.toJson(linkedHashMap2));
            bundle.putString(PointConstants.POINT_PAGE_PATH, String.valueOf(oooO00o2.OooO00o));
            oooO00o2.OooO0oo = true;
            bundle.remove(ChainPoint.PAGE_PATH);
            bundle.remove(ChainPoint.PAGE_ID);
            if (Intrinsics.c(bundle.getString(ChainPoint.PAGE_CATEGOR_TYPE), "2") && (appFindApp = ((AppManager) TmcProxy.get(AppManager.class)).findApp(oooO00o.OooO00o)) != null && (showPageStore = (ShowPageStore) appFindApp.getData(ShowPageStore.class)) != null && (stackFindShowPages = showPageStore.findShowPages()) != null) {
                for (ShowPageData showPageData : stackFindShowPages) {
                    if (Intrinsics.c(showPageData.getUrl(), oooO00o2.OooO00o)) {
                        bundle.putString(PointConstants.POINT_PAGE_PATH, String.valueOf(showPageData.getRequestUrl()));
                    }
                }
            }
            ((ReportProxy) TmcProxy.get(ReportProxy.class)).report(oooO00o.OooO00o, "mini_page_open", bundle);
        } catch (Throwable unused) {
        }
    }

    public final boolean OooO00o(String str, Bundle data) {
        OooO00o oooO00o;
        Intrinsics.h(data, "data");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("recordPageStageFail #########> appId:");
        sb2.append(str);
        sb2.append(", data:");
        sb2.append(data);
        if (str != null) {
            try {
                com.cloud.tmc.miniapp.performanceanalyse.app.OooO00o oooO00o2 = (com.cloud.tmc.miniapp.performanceanalyse.app.OooO00o) ((LinkedHashMap) com.cloud.tmc.miniapp.performanceanalyse.app.OooO0O0.OooO0O0).get(str);
                if (oooO00o2 == null) {
                    return true;
                }
                String string = data.getString(ChainPoint.PAGE_ID, "");
                if (TextUtils.isEmpty(string) || (oooO00o = oooO00o2.OooO0o.get(string)) == null || !Intrinsics.c(oooO00o.OooO0O0, string)) {
                    return true;
                }
                if (!Intrinsics.c(oooO00o.OooO00o, data.getString(ChainPoint.PAGE_PATH, ""))) {
                    return true;
                }
                OooO00o.OooO00o(oooO00o2, oooO00o, data);
            } catch (Throwable unused) {
            }
        }
        return true;
    }

    public final boolean OooO00o(String stage, String str, Bundle data) {
        OooO00o oooO00o;
        Intrinsics.h(stage, "stage");
        Intrinsics.h(data, "data");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("recordPageStageEnd #########> stage:");
        sb2.append(stage);
        sb2.append(", appId:");
        sb2.append(str);
        sb2.append(", data:");
        sb2.append(data);
        try {
            long j11 = data.containsKey(ChainPoint.TIME) ? data.getLong(ChainPoint.TIME) : System.currentTimeMillis();
            com.cloud.tmc.miniapp.performanceanalyse.app.OooO00o oooO00o2 = (com.cloud.tmc.miniapp.performanceanalyse.app.OooO00o) ((LinkedHashMap) com.cloud.tmc.miniapp.performanceanalyse.app.OooO0O0.OooO0O0).get(str);
            if (oooO00o2 == null) {
                return true;
            }
            String string = data.getString(ChainPoint.PAGE_ID, "");
            if (TextUtils.isEmpty(string) || (oooO00o = oooO00o2.OooO0o.get(string)) == null || !Intrinsics.c(oooO00o.OooO0O0, string)) {
                return true;
            }
            if (!Intrinsics.c(oooO00o.OooO00o, data.getString(ChainPoint.PAGE_PATH, "")) || !oooO00o.OooO0OO.containsKey(stage)) {
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
                OooO00o(oooO00o2, oooO00o, data, oooO00o.OooO0o);
            }
        } catch (Throwable unused) {
        }
        return true;
    }

    public final boolean OooO0O0(String str, Bundle data) {
        OooO00o oooO00o;
        Intrinsics.h(data, "data");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("reportPageOpenFinish #########> appId:");
        sb2.append(str);
        sb2.append(", data:");
        sb2.append(data);
        if (str != null) {
            try {
                com.cloud.tmc.miniapp.performanceanalyse.app.OooO00o oooO00o2 = (com.cloud.tmc.miniapp.performanceanalyse.app.OooO00o) ((LinkedHashMap) com.cloud.tmc.miniapp.performanceanalyse.app.OooO0O0.OooO0O0).get(str);
                if (oooO00o2 == null) {
                    return true;
                }
                String string = data.getString(ChainPoint.PAGE_ID, "");
                if (TextUtils.isEmpty(string) || (oooO00o = oooO00o2.OooO0o.get(string)) == null || !Intrinsics.c(oooO00o.OooO0O0, string)) {
                    return true;
                }
                if (!Intrinsics.c(oooO00o.OooO00o, data.getString(ChainPoint.PAGE_PATH, ""))) {
                    return true;
                }
                if (oooO00o.OooO0oo) {
                    oooO00o2.OooO0o.remove(string);
                    return true;
                }
                if (oooO00o.OooO0oO) {
                    oooO00o2.OooO0o.remove(string);
                    return true;
                }
                OooO00o.OooO00o(oooO00o2, oooO00o, data);
                oooO00o2.OooO0o.remove(string);
            } catch (Throwable unused) {
            }
        }
        return true;
    }

    public final boolean OooO0O0(String stage, String str, Bundle data) {
        Intrinsics.h(stage, "stage");
        Intrinsics.h(data, "data");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("recordPageStageStart #########> stage:");
        sb2.append(stage);
        sb2.append(", appId:");
        sb2.append(str);
        sb2.append(", data:");
        sb2.append(data);
        try {
            long j11 = data.containsKey(ChainPoint.TIME) ? data.getLong(ChainPoint.TIME) : System.currentTimeMillis();
            com.cloud.tmc.miniapp.performanceanalyse.app.OooO00o oooO00o = (com.cloud.tmc.miniapp.performanceanalyse.app.OooO00o) ((LinkedHashMap) com.cloud.tmc.miniapp.performanceanalyse.app.OooO0O0.OooO0O0).get(str);
            if (oooO00o == null) {
                return true;
            }
            String pageId = data.getString(ChainPoint.PAGE_ID, "");
            if (TextUtils.isEmpty(pageId)) {
                return true;
            }
            String pagePath = data.getString(ChainPoint.PAGE_PATH, "");
            if (Intrinsics.c(stage, ChainPoint.PageCreateContainer)) {
                if (oooO00o.OooO0o.containsKey(pageId)) {
                    oooO00o.OooO0o.remove(pageId);
                }
                Map mapM = MapsKt.m(TuplesKt.a(stage, Long.valueOf(j11)));
                boolean zIsEmpty = oooO00o.OooO0o.isEmpty();
                Map<String, OooO00o> map = oooO00o.OooO0o;
                Intrinsics.g(pageId, "pageId");
                Intrinsics.g(pagePath, "pagePath");
                map.put(pageId, new OooO00o(pagePath, pageId, mapM, new LinkedHashMap(), new LinkedHashMap(), zIsEmpty, false, false));
            } else {
                OooO00o oooO00o2 = oooO00o.OooO0o.get(pageId);
                if (oooO00o2 == null) {
                    return true;
                }
                oooO00o2.OooO0OO.put(stage, Long.valueOf(j11));
            }
            return true;
        } catch (Throwable unused) {
        }
    }
}
