package com.cloud.hisavana.sdk.common.athena;

import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.common.bean.WebPageBean;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.util.g0;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigTotalDTO;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ABTest;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigManager;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.k1;
import com.cloud.hisavana.sdk.q3;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.hisavana.common.tracking.TrackingKey;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class SSPTrackingHelper {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f21954b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SSPTrackingHelper f21953a = new SSPTrackingHelper();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f21955c = 10;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Lazy f21956d = LazyKt.b(new Function0<Boolean>() { // from class: com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper$IS_DEBUG_LOG_MODE$2
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            boolean zIsLoggable;
            try {
                zIsLoggable = Log.isLoggable("ADSDK", 3);
            } catch (Throwable unused) {
                zIsLoggable = false;
            }
            return Boolean.valueOf(zIsLoggable);
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Map f21957e = Collections.synchronizedMap(new LinkedHashMap<String, ConcurrentHashMap<String, Object>>() { // from class: com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper$fillingTrackingMap$1
        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ boolean containsKey(Object obj) {
            if (obj instanceof String) {
                return containsKey((String) obj);
            }
            return false;
        }

        public /* bridge */ boolean containsKey(String str) {
            return super.containsKey((Object) str);
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ boolean containsValue(Object obj) {
            if (obj instanceof ConcurrentHashMap) {
                return containsValue((ConcurrentHashMap<String, Object>) obj);
            }
            return false;
        }

        public /* bridge */ boolean containsValue(ConcurrentHashMap<String, Object> concurrentHashMap) {
            return super.containsValue((Object) concurrentHashMap);
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Set<Map.Entry<String, ConcurrentHashMap<String, Object>>> entrySet() {
            return getEntries();
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            if (obj instanceof String) {
                return get((String) obj);
            }
            return null;
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ ConcurrentHashMap<String, Object> get(Object obj) {
            if (obj instanceof String) {
                return get((String) obj);
            }
            return null;
        }

        public /* bridge */ ConcurrentHashMap<String, Object> get(String str) {
            return (ConcurrentHashMap) super.get((Object) str);
        }

        public /* bridge */ Set<Map.Entry<String, ConcurrentHashMap<String, Object>>> getEntries() {
            return super.entrySet();
        }

        public /* bridge */ Set<String> getKeys() {
            return super.keySet();
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.Map
        public final /* bridge */ /* synthetic */ Object getOrDefault(Object obj, Object obj2) {
            return !(obj instanceof String) ? obj2 : getOrDefault((String) obj, (ConcurrentHashMap<String, Object>) obj2);
        }

        public final /* bridge */ ConcurrentHashMap getOrDefault(Object obj, ConcurrentHashMap concurrentHashMap) {
            return !(obj instanceof String) ? concurrentHashMap : getOrDefault((String) obj, (ConcurrentHashMap<String, Object>) concurrentHashMap);
        }

        public /* bridge */ ConcurrentHashMap<String, Object> getOrDefault(String str, ConcurrentHashMap<String, Object> concurrentHashMap) {
            return (ConcurrentHashMap) super.getOrDefault((Object) str, concurrentHashMap);
        }

        public /* bridge */ int getSize() {
            return super.size();
        }

        public /* bridge */ Collection<ConcurrentHashMap<String, Object>> getValues() {
            return super.values();
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Set<String> keySet() {
            return getKeys();
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ /* synthetic */ Object remove(Object obj) {
            if (obj instanceof String) {
                return remove((String) obj);
            }
            return null;
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ ConcurrentHashMap<String, Object> remove(Object obj) {
            if (obj instanceof String) {
                return remove((String) obj);
            }
            return null;
        }

        public /* bridge */ ConcurrentHashMap<String, Object> remove(String str) {
            return (ConcurrentHashMap) super.remove((Object) str);
        }

        @Override // java.util.HashMap, java.util.Map
        public final /* bridge */ boolean remove(Object obj, Object obj2) {
            if ((obj instanceof String) && (obj2 instanceof ConcurrentHashMap)) {
                return remove((String) obj, (ConcurrentHashMap<String, Object>) obj2);
            }
            return false;
        }

        public /* bridge */ boolean remove(String str, ConcurrentHashMap<String, Object> concurrentHashMap) {
            return super.remove((Object) str, (Object) concurrentHashMap);
        }

        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry<String, ConcurrentHashMap<String, Object>> eldest) {
            return size() > 30;
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ int size() {
            return getSize();
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Collection<ConcurrentHashMap<String, Object>> values() {
            return getValues();
        }
    });

    private SSPTrackingHelper() {
    }

    public static /* synthetic */ void C(SSPTrackingHelper sSPTrackingHelper, int i11, q3 q3Var, List list, String str, String str2, int i12, long j11, int i13, boolean z10, int i14, Object obj) {
        sSPTrackingHelper.B(i11, q3Var, list, str, str2, i12, j11, i13, (i14 & 256) != 0 ? false : z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(q3 q3Var, int i11, int i12, boolean z10, List adsDTOs, long j11, String str, String str2, int i13) {
        String strValueOf;
        ConfigCodeSeatDTO configCodeSeatDTOF;
        Intrinsics.h(adsDTOs, "$adsDTOs");
        try {
            SSPTrackingHelper sSPTrackingHelper = f21953a;
            Bundle bundleV = sSPTrackingHelper.v(q3Var, i11);
            String string = bundleV.getString("temp_online_failed_code", "");
            bundleV.remove("temp_online_failed_code");
            if (i12 != 1) {
                bundleV.putInt("s_callback_status", i12);
            }
            if (z10) {
                bundleV.putInt("s_req_bidding", 1);
            }
            sSPTrackingHelper.Y(q3Var != null ? q3Var.n() : null);
            if (i11 == 0) {
                strValueOf = "0";
            } else if (string == null || string.length() == 0) {
                strValueOf = String.valueOf(i11);
            } else {
                strValueOf = i11 + '_' + string;
            }
            String str3 = strValueOf;
            Intrinsics.e(string);
            if (string.length() > 0) {
                bundleV.putString("s_online_failed_reason_v2", string);
            }
            bundleV.remove("s_online_status");
            bundleV.remove("s_default_status");
            bundleV.remove("s_offline_status");
            bundleV.remove("s_ma_d_s");
            bundleV.remove("s_req_timeout");
            bundleV.remove("s_ma_d_fr");
            AdsDTO adsDTO = (AdsDTO) CollectionsKt.k0(adsDTOs);
            if ((adsDTO != null ? adsDTO.getSource() : 0) == 4) {
                AthenaTracker.a.H(adsDTOs, q3Var != null ? q3Var.n() : null, q3Var != null ? q3Var.i() : null, j11, bundleV);
            } else {
                AthenaTracker.a.k(adsDTOs, q3Var != null ? q3Var.n() : null, q3Var != null ? q3Var.o() : 0, str, str3, j11, q3Var != null ? q3Var.i() : null, (q3Var == null || (configCodeSeatDTOF = q3Var.f()) == null) ? false : configCodeSeatDTOF.isOfflineAdEnable(), str2, i13, bundleV);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(q3 fetchInfo, String str, String str2) {
        Intrinsics.h(fetchInfo, "$fetchInfo");
        try {
            AthenaTracker.a.o(fetchInfo, str, str2);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(q3 q3Var, List list, long j11, boolean z10) {
        try {
            f21953a.Y(q3Var != null ? q3Var.n() : null);
            AthenaTracker.a.p(q3Var, list, j11, Boolean.valueOf(z10));
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(q3 q3Var, List list) {
        try {
            AthenaTracker.a.q(q3Var, list);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(ArrayList arrayList, Integer num, AdsDTO adsDTO, Bundle bundle) {
        String strD;
        Intrinsics.h(bundle, "$bundle");
        if (arrayList != null) {
            try {
                if (arrayList.isEmpty()) {
                    arrayList = null;
                }
                if (arrayList != null && (strD = GsonUtil.d(arrayList)) != null) {
                    String str = strD.length() > 0 ? strD : null;
                    if (str != null) {
                        bundle.putString("s_click_chain_list", str);
                    }
                }
            } catch (Throwable unused) {
                return;
            }
        }
        AthenaTracker.a.j(String.valueOf(num), adsDTO, bundle);
    }

    public static /* synthetic */ void O(SSPTrackingHelper sSPTrackingHelper, Integer num, String str, String str2, AdsDTO adsDTO, Bundle bundle, int i11, Object obj) {
        if ((i11 & 16) != 0) {
            bundle = null;
        }
        sSPTrackingHelper.N(num, str, str2, adsDTO, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P(Integer num, String str, String str2, AdsDTO adsDTO, Bundle bundle) {
        try {
            AthenaTracker.a.s(String.valueOf(num), str, str2, adsDTO, bundle);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R(Integer num, AdsDTO adsDTO, Long l11, Boolean bool, Boolean bool2, String str, Long l12, Bundle bundle) {
        Bundle bundle2;
        String string;
        int iIntValue;
        try {
            try {
                bundle2 = new Bundle();
                bundle2.putAll(bundle);
            } catch (Throwable unused) {
                bundle2 = new Bundle();
            }
            if (num == null || (string = num.toString()) == null) {
                string = "";
            }
            bundle2.putString("error_code", string);
            if (adsDTO != null) {
                try {
                    bundle2.putString(TrackingKey.TRIGGER_ID, adsDTO.getTriggerId());
                    bundle2.putString("s_click_tracking_id", adsDTO.getClickid());
                    bundle2.putString("ad_creative_id", adsDTO.getAdCreativeId());
                    Integer codeSeatType = adsDTO.getCodeSeatType();
                    if (codeSeatType == null) {
                        iIntValue = -1;
                    } else {
                        Intrinsics.e(codeSeatType);
                        iIntValue = codeSeatType.intValue();
                    }
                    bundle2.putInt("code_seat_type", iIntValue);
                    bundle2.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getCodeSeatId());
                    bundle2.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
                    Boolean preloadEnable = adsDTO.getPreloadEnable();
                    Intrinsics.g(preloadEnable, "getPreloadEnable(...)");
                    bundle2.putInt("preload_enable", preloadEnable.booleanValue() ? 1 : 0);
                    bundle2.putInt("preload_status", adsDTO.getPreloadStatus());
                } catch (Throwable unused2) {
                }
            }
            bundle2.putLong("s_cct_load_time", l11 != null ? l11.longValue() : 0L);
            bundle2.putBoolean("s_cct_aborted", bool != null ? bool.booleanValue() : false);
            bundle2.putBoolean("s_cct_warmup", bool2 != null ? bool2.booleanValue() : false);
            if (str == null) {
                str = "";
            }
            bundle2.putString("s_cct_version", str);
            bundle2.putLong("s_cct_launch_time", l12 != null ? l12.longValue() : 0L);
            bundle2.putString("s_cct_device", Build.BRAND);
            AthenaTracker.a.A(bundle2);
        } catch (Throwable th2) {
            e4.b().e("SSPTrackingHelper", "realTrackingCCTLandingPage", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T(Integer num, AdsDTO adsDTO, Long l11, Boolean bool, Boolean bool2, String str, Long l12, Long l13, Bundle bundle) {
        Bundle bundle2;
        String string;
        int iIntValue;
        try {
            try {
                bundle2 = new Bundle();
                bundle2.putAll(bundle);
            } catch (Throwable unused) {
                bundle2 = new Bundle();
            }
            if (num == null || (string = num.toString()) == null) {
                string = "";
            }
            bundle2.putString("error_code", string);
            if (adsDTO != null) {
                try {
                    bundle2.putString(TrackingKey.TRIGGER_ID, adsDTO.getTriggerId());
                    bundle2.putString("s_click_tracking_id", adsDTO.getClickid());
                    bundle2.putString("ad_creative_id", adsDTO.getAdCreativeId());
                    Integer codeSeatType = adsDTO.getCodeSeatType();
                    if (codeSeatType == null) {
                        iIntValue = -1;
                    } else {
                        Intrinsics.e(codeSeatType);
                        iIntValue = codeSeatType.intValue();
                    }
                    bundle2.putInt("code_seat_type", iIntValue);
                    bundle2.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getCodeSeatId());
                    bundle2.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
                    Boolean preloadEnable = adsDTO.getPreloadEnable();
                    Intrinsics.g(preloadEnable, "getPreloadEnable(...)");
                    bundle2.putInt("preload_enable", preloadEnable.booleanValue() ? 1 : 0);
                    bundle2.putInt("preload_status", adsDTO.getPreloadStatus());
                } catch (Throwable unused2) {
                }
            }
            bundle2.putLong("s_cct_load_time", l11 != null ? l11.longValue() : 0L);
            bundle2.putBoolean("s_cct_aborted", bool != null ? bool.booleanValue() : false);
            bundle2.putBoolean("s_cct_warmup", bool2 != null ? bool2.booleanValue() : false);
            if (str == null) {
                str = "";
            }
            bundle2.putString("s_cct_version", str);
            bundle2.putLong("s_cct_launch_time", l12 != null ? l12.longValue() : 0L);
            bundle2.putLong("s_landing_stay_time", l13 != null ? l13.longValue() : 0L);
            bundle2.putString("s_cct_device", Build.BRAND);
            AthenaTracker.a.z(bundle2);
        } catch (Throwable th2) {
            e4.b().e("SSPTrackingHelper", "realTrackingCCTLandingPageExit", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(Bundle bundle, q3 q3Var, int i11, TaErrorCode taErrorCode) {
        String string;
        String strN;
        try {
            Bundle bundle2 = new Bundle();
            if (bundle != null) {
                bundle2.putAll(bundle);
            }
            if (q3Var != null && (strN = q3Var.n()) != null) {
                bundle2.putString(TrackingKey.TRIGGER_ID, strN);
            }
            if (q3Var != null) {
                bundle2.putInt("ad_type", q3Var.e());
            }
            bundle2.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundle2.putInt("s_track_event_type", i11);
            if (i11 == 2) {
                if (taErrorCode == null || (string = Integer.valueOf(taErrorCode.getErrorCode()).toString()) == null) {
                    string = "";
                }
                bundle2.putString("error_code", string);
            }
            AthenaTracker.a.n(bundle2);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X(WebPageBean webPageBean, AdsDTO adsDTO, boolean z10, List list, List list2, Boolean bool, Long l11, boolean z11, Bundle bundle, Integer num) {
        Bundle bundle2;
        int iIntValue;
        String string;
        try {
            try {
                bundle2 = new Bundle();
                if (bundle != null) {
                    bundle2.putAll(bundle);
                }
            } catch (Throwable unused) {
                bundle2 = new Bundle();
            }
            if (webPageBean != null) {
                bundle2.putString("webId", webPageBean.getWebId());
                if (!z10) {
                    bundle2.putString("url", webPageBean.getUrl());
                    bundle2.putLong("spendTime", webPageBean.getSpendTime());
                }
                if (num == null || (string = num.toString()) == null) {
                    string = "";
                }
                bundle2.putString("error_code", string);
            }
            if (adsDTO != null) {
                bundle2.putString(TrackingKey.TRIGGER_ID, adsDTO.getTriggerId());
                bundle2.putString("s_click_tracking_id", adsDTO.getClickid());
                try {
                    Integer codeSeatType = adsDTO.getCodeSeatType();
                    if (codeSeatType == null) {
                        iIntValue = -1;
                    } else {
                        Intrinsics.e(codeSeatType);
                        iIntValue = codeSeatType.intValue();
                    }
                    bundle2.putInt("code_seat_type", iIntValue);
                    bundle2.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getCodeSeatId());
                    bundle2.putString("ad_creative_id", adsDTO.getAdCreativeId());
                    bundle2.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
                    Boolean preloadEnable = adsDTO.getPreloadEnable();
                    Intrinsics.g(preloadEnable, "getPreloadEnable(...)");
                    bundle2.putInt("preload_enable", preloadEnable.booleanValue() ? 1 : 0);
                    bundle2.putInt("preload_status", adsDTO.getPreloadStatus());
                } catch (Throwable unused2) {
                }
            }
            if (!z10) {
                if (list != null && (!list.isEmpty())) {
                    bundle2.putString("s_landing_router", GsonUtil.d(list));
                }
                if (list2 != null && (!list2.isEmpty())) {
                    bundle2.putString("s_landing_ges_router", GsonUtil.d(list2));
                }
            }
            bundle2.putInt("s_landing_complete", Intrinsics.c(bool, Boolean.TRUE) ? 1 : 0);
            if (l11 != null) {
                if ((l11.longValue() != 0 ? l11 : null) != null) {
                    bundle2.putLong("s_landing_stay_time", l11.longValue());
                }
            }
            if (z11) {
                bundle2.putInt("s_landing_nav_finish", 1);
            }
            AthenaTracker.a.Y(bundle2);
        } catch (Throwable unused3) {
        }
    }

    private final void Y(String str) {
        if (str != null) {
            try {
                if (str.length() > 0) {
                    f21957e.remove(str);
                }
            } catch (Throwable unused) {
            }
        }
    }

    private final boolean r() {
        return ((Boolean) f21956d.getValue()).booleanValue();
    }

    private final boolean u(String str) {
        if (str != null) {
            try {
                if (str.length() != 0 && t()) {
                    return true;
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    private final Bundle v(q3 q3Var, int i11) {
        String strN;
        if (q3Var != null) {
            try {
                strN = q3Var.n();
            } catch (Throwable unused) {
                return new Bundle();
            }
        } else {
            strN = null;
        }
        Bundle bundleK = g0.k(p(strN));
        if (i11 == 0) {
            w(bundleK);
        } else {
            w(bundleK);
        }
        return bundleK;
    }

    private final void w(Bundle bundle) {
        try {
            int i11 = bundle.getInt("s_online_status");
            if (i11 == 2) {
                String string = bundle.getString("s_online_failed_reason_v2");
                int i12 = bundle.getInt("s_ma_d_s", 0);
                TaErrorCode taErrorCode = TaErrorCode.ERROR_ONLINE_NEW_REQUEST_TIMEOUT;
                if (Intrinsics.c(string, String.valueOf(taErrorCode.getErrorCode()))) {
                    if (i12 == 1) {
                        g0.g(bundle, "temp_online_failed_code", "5032");
                        return;
                    } else {
                        g0.g(bundle, "temp_online_failed_code", String.valueOf(taErrorCode.getErrorCode()));
                        return;
                    }
                }
                if (i12 != 3) {
                    g0.g(bundle, "temp_online_failed_code", string);
                    return;
                }
                g0.g(bundle, "temp_online_failed_code", "5029_" + string);
                return;
            }
            if (i11 != 1) {
                String string2 = bundle.getString("s_req_chs");
                if (string2 == null || !StringsKt.c0(string2, "2", false, 2, null)) {
                    int i13 = bundle.getInt("temp_online_without_req", -1);
                    if (i13 != -1) {
                        g0.g(bundle, "temp_online_failed_code", String.valueOf(i13));
                    }
                    g0.i(bundle, "temp_online_without_req");
                    return;
                }
                boolean z10 = bundle.getBoolean("s_req_timeout", false);
                int i14 = bundle.getInt("s_ma_d_s", 0);
                if (z10) {
                    if (i14 == 1) {
                        g0.g(bundle, "temp_online_failed_code", "5033");
                        return;
                    } else {
                        g0.g(bundle, "temp_online_failed_code", "5025");
                        return;
                    }
                }
                if (i14 == 1) {
                    g0.g(bundle, "temp_online_failed_code", "5030");
                } else {
                    g0.g(bundle, "temp_online_failed_code", "5026");
                }
            }
        } catch (Throwable unused) {
        }
    }

    public final void A(int i11, q3 q3Var, List list, String str, String str2, int i12, long j11, int i13) {
        C(this, i11, q3Var, list, str, str2, i12, j11, i13, false, 256, null);
    }

    public final void B(final int i11, final q3 q3Var, List list, final String str, final String str2, final int i12, final long j11, final int i13, final boolean z10) {
        try {
            final ArrayList arrayList = new ArrayList();
            if (list != null) {
                arrayList.addAll(list);
            }
            i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.q
                @Override // java.lang.Runnable
                public final void run() {
                    SSPTrackingHelper.D(q3Var, i11, i13, z10, arrayList, j11, str, str2, i12);
                }
            });
        } catch (Throwable unused) {
        }
    }

    public final void E(final q3 fetchInfo, final String str, final String str2) {
        Intrinsics.h(fetchInfo, "fetchInfo");
        try {
            i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.i
                @Override // java.lang.Runnable
                public final void run() {
                    SSPTrackingHelper.F(fetchInfo, str, str2);
                }
            });
        } catch (Throwable unused) {
        }
    }

    public final void G(final q3 q3Var, final List list, final long j11, final boolean z10) {
        try {
            i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.p
                @Override // java.lang.Runnable
                public final void run() {
                    SSPTrackingHelper.H(q3Var, list, j11, z10);
                }
            });
        } catch (Throwable unused) {
        }
    }

    public final void I(final q3 q3Var, final List list) {
        try {
            i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.h
                @Override // java.lang.Runnable
                public final void run() {
                    SSPTrackingHelper.J(q3Var, list);
                }
            });
        } catch (Throwable unused) {
        }
    }

    public final void K(final Integer num, final AdsDTO adsDTO, final Bundle bundle, final ArrayList arrayList) {
        Intrinsics.h(bundle, "bundle");
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.j
            @Override // java.lang.Runnable
            public final void run() {
                SSPTrackingHelper.L(arrayList, num, adsDTO, bundle);
            }
        });
    }

    public final void M(Integer num, String str, String str2, AdsDTO adsDTO) {
        O(this, num, str, str2, adsDTO, null, 16, null);
    }

    public final void N(final Integer num, final String str, final String str2, final AdsDTO adsDTO, final Bundle bundle) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.m
            @Override // java.lang.Runnable
            public final void run() {
                SSPTrackingHelper.P(num, str, str2, adsDTO, bundle);
            }
        });
    }

    public final void Q(final Integer num, final AdsDTO adsDTO, final Long l11, final Long l12, final Boolean bool, final String str, final Boolean bool2, final Bundle bundle) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.n
            @Override // java.lang.Runnable
            public final void run() {
                SSPTrackingHelper.R(num, adsDTO, l12, bool2, bool, str, l11, bundle);
            }
        });
    }

    public final void S(final Integer num, final AdsDTO adsDTO, final Long l11, final Long l12, final Long l13, final Boolean bool, final String str, final Boolean bool2, final Bundle bundle) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.k
            @Override // java.lang.Runnable
            public final void run() {
                SSPTrackingHelper.T(num, adsDTO, l12, bool2, bool, str, l11, l13, bundle);
            }
        });
    }

    public final void U(final int i11, final q3 q3Var, final TaErrorCode taErrorCode, final Bundle bundle) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.o
            @Override // java.lang.Runnable
            public final void run() {
                SSPTrackingHelper.V(bundle, q3Var, i11, taErrorCode);
            }
        });
    }

    public final void W(final Integer num, final List list, final List list2, final AdsDTO adsDTO, final WebPageBean webPageBean, final boolean z10, final boolean z11, final Long l11, final Boolean bool, final Bundle bundle) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.l
            @Override // java.lang.Runnable
            public final void run() {
                SSPTrackingHelper.X(webPageBean, adsDTO, z11, list, list2, bool, l11, z10, bundle, num);
            }
        });
    }

    public final void Z(String str, Bundle bundle) {
        if (bundle != null) {
            try {
                bundle.putInt("is_dev_open", u(str) ? 1 : 0);
            } catch (Throwable unused) {
            }
        }
    }

    public final void a0(String str, Bundle bundle) {
        if (bundle != null) {
            try {
                bundle.putInt("is_filling_dev_open", u(str) ? 1 : 0);
            } catch (Throwable unused) {
            }
        }
    }

    public final void b0(String str, Bundle bundle) {
        if (bundle != null) {
            try {
                bundle.putInt("is_show_dev_open", u(str) ? 1 : 0);
            } catch (Throwable unused) {
            }
        }
    }

    public final boolean k(String str) {
        ConfigTotalDTO.ExtInfo extInfoM;
        try {
            k1 k1VarO = k1.o();
            boolean z10 = !((k1VarO == null || (extInfoM = k1VarO.m()) == null) ? true : extInfoM.isEnableClientSampling()) || r() || u(str);
            if (!z10) {
                e4.b().d("SSPTrackingHelper", "eventName -> " + str + " reporting not allowed");
            }
            return z10;
        } catch (Throwable unused) {
            return true;
        }
    }

    public final boolean l(String str, String str2) {
        Object objM454constructorimpl;
        boolean z10;
        ArrayList<String> trackEvent;
        try {
            Result.Companion companion = Result.INSTANCE;
            ABTest aBTestData = CustomConfigManager.getABTestData(str);
            if (aBTestData != null && (trackEvent = aBTestData.getTrackEvent()) != null && !trackEvent.isEmpty()) {
                Iterator<T> it = trackEvent.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z10 = false;
                        break;
                    }
                    if (Intrinsics.c((String) it.next(), str2)) {
                        z10 = true;
                        break;
                    }
                }
            } else {
                z10 = false;
                break;
            }
            objM454constructorimpl = Result.m454constructorimpl(Boolean.valueOf(z10));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Boolean bool = Boolean.FALSE;
        if (Result.m460isFailureimpl(objM454constructorimpl)) {
            objM454constructorimpl = bool;
        }
        return ((Boolean) objM454constructorimpl).booleanValue();
    }

    public final AdsDTO m(G g11) {
        List listS;
        if (g11 == null || (listS = g11.s()) == null) {
            return null;
        }
        return (AdsDTO) CollectionsKt.k0(listS);
    }

    public final long n() {
        Object objM454constructorimpl;
        ConfigTotalDTO.ExtInfo extInfoM;
        try {
            Result.Companion companion = Result.INSTANCE;
            k1 k1VarO = k1.o();
            objM454constructorimpl = Result.m454constructorimpl(Long.valueOf((k1VarO == null || (extInfoM = k1VarO.m()) == null) ? 0L : extInfoM.getAdReqInterval()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = 0L;
        }
        return ((Number) objM454constructorimpl).longValue();
    }

    public final String o(G g11) {
        q3 q3VarP;
        String strI = (g11 == null || (q3VarP = g11.p()) == null) ? null : q3VarP.i();
        return strI == null ? "" : strI;
    }

    public final ConcurrentHashMap p(String str) {
        Object objM454constructorimpl;
        ConcurrentHashMap concurrentHashMap;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (str == null || str.length() == 0) {
                str = null;
            }
            if (str != null) {
                Map fillingTrackingMap = f21957e;
                Intrinsics.g(fillingTrackingMap, "fillingTrackingMap");
                synchronized (fillingTrackingMap) {
                    concurrentHashMap = (ConcurrentHashMap) fillingTrackingMap.get(str);
                    if (concurrentHashMap == null) {
                        concurrentHashMap = new ConcurrentHashMap();
                        Intrinsics.g(fillingTrackingMap, "fillingTrackingMap");
                        fillingTrackingMap.put(str, concurrentHashMap);
                    }
                }
            } else {
                concurrentHashMap = new ConcurrentHashMap();
                e4.b().d("SSPTrackingHelper", Log.getStackTraceString(new Throwable("getFillingTrackingBundle: triggerId is empty")));
            }
            objM454constructorimpl = Result.m454constructorimpl(concurrentHashMap);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = new ConcurrentHashMap();
        }
        return (ConcurrentHashMap) objM454constructorimpl;
    }

    public final String q(G g11) {
        q3 q3VarP;
        String strN = (g11 == null || (q3VarP = g11.p()) == null) ? null : q3VarP.n();
        return strN == null ? "" : strN;
    }

    public final String s(String urlString) {
        Object objM454constructorimpl;
        Intrinsics.h(urlString, "urlString");
        try {
            Result.Companion companion = Result.INSTANCE;
            Uri uri = Uri.parse(urlString);
            Intrinsics.g(uri, "parse(this)");
            objM454constructorimpl = Result.m454constructorimpl(uri.buildUpon().clearQuery().fragment(null).build().toString());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = "";
        }
        return (String) objM454constructorimpl;
    }

    public final boolean t() {
        ConfigTotalDTO.ExtInfo extInfoM;
        try {
            k1 k1VarO = k1.o();
            int clientSamplingRatio = (k1VarO == null || (extInfoM = k1VarO.m()) == null) ? 10 : extInfoM.getClientSamplingRatio();
            if (clientSamplingRatio == 100) {
                return true;
            }
            if (AthenaTracker.f21950b || f21955c != clientSamplingRatio) {
                f21954b = AthenaTracker.n(com.cloud.sdk.commonutil.util.e.a(), clientSamplingRatio);
                f21955c = clientSamplingRatio;
            }
            return f21954b;
        } catch (Throwable unused) {
            return false;
        }
    }

    public final void x(List list, q3 q3Var) {
        int source;
        if (list != null) {
            try {
                if (!list.isEmpty() && list.size() > 1 && (source = ((AdsDTO) CollectionsKt.i0(list)).getSource()) != 2 && source != 1 && !list.isEmpty()) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        AdsDTO adsDTO = (AdsDTO) it.next();
                        if (adsDTO.getSource() == 2 || adsDTO.getSource() == 1) {
                            g0.h(p(q3Var != null ? q3Var.n() : null), "s_online_failed_reason_v2", "5031");
                            return;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    public final void y(int i11, Bundle bundle, int i12) {
        String str;
        if (i11 != 1) {
            str = i11 != 2 ? "" : "s_click_pkg_f_r";
        } else {
            str = "s_click_dp_f_r";
        }
        if (str.length() <= 0 || bundle == null) {
            return;
        }
        bundle.putInt(str, i12);
    }

    public final void z(String str, String str2) {
        try {
            ConcurrentHashMap concurrentHashMapP = p(str);
            String strA = g0.a(concurrentHashMapP, "s_req_chs");
            if (strA != null) {
                if (strA.length() <= 0) {
                    strA = null;
                }
                if (strA != null) {
                    String str3 = strA + ',' + str2;
                    if (str3 != null) {
                        str2 = str3;
                    }
                }
            }
            g0.h(concurrentHashMapP, "s_req_chs", str2);
        } catch (Throwable unused) {
        }
    }
}
