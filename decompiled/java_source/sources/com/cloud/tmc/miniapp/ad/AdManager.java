package com.cloud.tmc.miniapp.ad;

import android.content.Context;
import android.text.TextUtils;
import com.cloud.tmc.ad.Constants;
import com.cloud.tmc.ad.IAdManagerProxy;
import com.cloud.tmc.ad.bean.AdShowBean;
import com.cloud.tmc.ad.bean.AdStyleBean;
import com.cloud.tmc.ad.bean.response.AdsDTO;
import com.cloud.tmc.ad.p000interface.AdEventListener;
import com.cloud.tmc.ad.p000interface.AdFillingEventListener;
import com.cloud.tmc.ad.p000interface.AdShowEventListener;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.utils.AdxPreferencesHelper;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniapp.NewTaskManager;
import com.cloud.tmc.miniapp.ad.interstitial.AdBaseDialog;
import com.cloud.tmc.miniapp.ad.interstitial.AdInterstitialHtmlView$Builder;
import com.cloud.tmc.miniapp.ad.interstitial.AdInterstitialJsonAllStyleView$Builder;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class AdManager implements IAdManagerProxy {
    public static final OooO0O0 Companion = new OooO0O0();
    public static final String TAG = "AdManager";
    public final ConcurrentHashMap<String, OooO00o> OooO00o = new ConcurrentHashMap<>();
    public String OooO0O0;
    public Long OooO0OO;

    public static final class OooO00o {
        public String OooO00o;
        public final ConcurrentHashMap<String, AdBaseDialog> OooO0O0;
        public final ConcurrentHashMap<String, AdBaseDialog> OooO0OO;
        public final ConcurrentHashMap<String, AdEventListener> OooO0Oo;
        public final ConcurrentHashMap<String, AdShowEventListener> OooO0o;
        public final ConcurrentHashMap<String, AdFillingEventListener> OooO0o0;
        public final ConcurrentLinkedQueue<String> OooO0oO;

        public OooO00o() {
            this(null, null, null, null, null, null, null, 127);
        }

        public OooO00o(String str, ConcurrentHashMap<String, AdBaseDialog> htmlContextMap, ConcurrentHashMap<String, AdBaseDialog> allStyleContextMap, ConcurrentHashMap<String, AdEventListener> adEventlistenerMap, ConcurrentHashMap<String, AdFillingEventListener> adFillingEventlistenerMap, ConcurrentHashMap<String, AdShowEventListener> adShowEventListenerMap, ConcurrentLinkedQueue<String> adShowList) {
            Intrinsics.h(htmlContextMap, "htmlContextMap");
            Intrinsics.h(allStyleContextMap, "allStyleContextMap");
            Intrinsics.h(adEventlistenerMap, "adEventlistenerMap");
            Intrinsics.h(adFillingEventlistenerMap, "adFillingEventlistenerMap");
            Intrinsics.h(adShowEventListenerMap, "adShowEventListenerMap");
            Intrinsics.h(adShowList, "adShowList");
            this.OooO00o = str;
            this.OooO0O0 = htmlContextMap;
            this.OooO0OO = allStyleContextMap;
            this.OooO0Oo = adEventlistenerMap;
            this.OooO0o0 = adFillingEventlistenerMap;
            this.OooO0o = adShowEventListenerMap;
            this.OooO0oO = adShowList;
        }

        public /* synthetic */ OooO00o(String str, ConcurrentHashMap concurrentHashMap, ConcurrentHashMap concurrentHashMap2, ConcurrentHashMap concurrentHashMap3, ConcurrentHashMap concurrentHashMap4, ConcurrentHashMap concurrentHashMap5, ConcurrentLinkedQueue concurrentLinkedQueue, int i11) {
            this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? new ConcurrentHashMap() : null, (i11 & 4) != 0 ? new ConcurrentHashMap() : null, (i11 & 8) != 0 ? new ConcurrentHashMap() : null, (i11 & 16) != 0 ? new ConcurrentHashMap() : null, (i11 & 32) != 0 ? new ConcurrentHashMap() : null, (i11 & 64) != 0 ? new ConcurrentLinkedQueue() : null);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OooO00o)) {
                return false;
            }
            OooO00o oooO00o = (OooO00o) obj;
            return Intrinsics.c(this.OooO00o, oooO00o.OooO00o) && Intrinsics.c(this.OooO0O0, oooO00o.OooO0O0) && Intrinsics.c(this.OooO0OO, oooO00o.OooO0OO) && Intrinsics.c(this.OooO0Oo, oooO00o.OooO0Oo) && Intrinsics.c(this.OooO0o0, oooO00o.OooO0o0) && Intrinsics.c(this.OooO0o, oooO00o.OooO0o) && Intrinsics.c(this.OooO0oO, oooO00o.OooO0oO);
        }

        public int hashCode() {
            String str = this.OooO00o;
            return this.OooO0oO.hashCode() + ((this.OooO0o.hashCode() + ((this.OooO0o0.hashCode() + ((this.OooO0Oo.hashCode() + ((this.OooO0OO.hashCode() + ((this.OooO0O0.hashCode() + ((str == null ? 0 : str.hashCode()) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
        }

        public String toString() {
            return "AppAdData(appId=" + this.OooO00o + ", htmlContextMap=" + this.OooO0O0 + ", allStyleContextMap=" + this.OooO0OO + ", adEventlistenerMap=" + this.OooO0Oo + ", adFillingEventlistenerMap=" + this.OooO0o0 + ", adShowEventListenerMap=" + this.OooO0o + ", adShowList=" + this.OooO0oO + ")";
        }
    }

    public static final class OooO0O0 {
    }

    public final void OooO00o(String str, AdsDTO adsDTO, String str2, String str3, App app, AdStyleBean adStyleBean, AdEventListener adEventListener) {
        Context context;
        ConcurrentHashMap<String, AdBaseDialog> concurrentHashMap;
        ConcurrentHashMap<String, AdBaseDialog> concurrentHashMap2;
        AdBaseDialog adBaseDialog;
        AppContext appContext = app.getAppContext();
        if (appContext == null || (context = appContext.getContext()) == null) {
            OooO00o(str, app, "系统异常");
            return;
        }
        if (TextUtils.isEmpty(str2) || !new File(str2).exists() || (str3 != null && !TextUtils.isEmpty(str3) && !new File(str3).exists())) {
            OooO00o(str, app, "广告图片不存在");
            return;
        }
        OooO00o oooO00o = this.OooO00o.get(app.getAppId());
        if (oooO00o == null || (concurrentHashMap2 = oooO00o.OooO0OO) == null || (adBaseDialog = concurrentHashMap2.get(str)) == null || !adBaseDialog.isShowing()) {
            AdInterstitialJsonAllStyleView$Builder adInterstitialJsonAllStyleView$Builder = new AdInterstitialJsonAllStyleView$Builder(context, str, str2, str3, adsDTO.getNativeObject().getTitleTxt(), adsDTO.getNativeObject().getDescriptionTxt(), adsDTO.getNativeObject().getButtonText(), adStyleBean, adEventListener);
            OooO00o oooO00o2 = this.OooO00o.get(app.getAppId());
            if (oooO00o2 == null || (concurrentHashMap = oooO00o2.OooO0OO) == null) {
                return;
            }
            concurrentHashMap.put(str, adInterstitialJsonAllStyleView$Builder);
        }
    }

    public final void OooO00o(String str, App app) {
        ConcurrentHashMap<String, AdEventListener> concurrentHashMap;
        ConcurrentLinkedQueue<String> concurrentLinkedQueue;
        ConcurrentHashMap<String, AdShowEventListener> concurrentHashMap2;
        ConcurrentHashMap<String, AdFillingEventListener> concurrentHashMap3;
        ConcurrentHashMap<String, AdBaseDialog> concurrentHashMap4;
        ConcurrentHashMap<String, AdBaseDialog> concurrentHashMap5;
        OooO00o oooO00o = this.OooO00o.get(app.getAppId());
        if (oooO00o != null && (concurrentHashMap5 = oooO00o.OooO0O0) != null && concurrentHashMap5.containsKey(str)) {
            AdBaseDialog adBaseDialog = oooO00o.OooO0O0.get(str);
            AdInterstitialHtmlView$Builder adInterstitialHtmlView$Builder = adBaseDialog instanceof AdInterstitialHtmlView$Builder ? (AdInterstitialHtmlView$Builder) adBaseDialog : null;
            if (adInterstitialHtmlView$Builder != null) {
                adInterstitialHtmlView$Builder.OooO0Oo();
            }
            oooO00o.OooO0O0.remove(str);
        }
        if (oooO00o != null && (concurrentHashMap4 = oooO00o.OooO0OO) != null && concurrentHashMap4.containsKey(str)) {
            AdBaseDialog adBaseDialog2 = oooO00o.OooO0OO.get(str);
            AdInterstitialJsonAllStyleView$Builder adInterstitialJsonAllStyleView$Builder = adBaseDialog2 instanceof AdInterstitialJsonAllStyleView$Builder ? (AdInterstitialJsonAllStyleView$Builder) adBaseDialog2 : null;
            if (adInterstitialJsonAllStyleView$Builder != null) {
                adInterstitialJsonAllStyleView$Builder.OooO0oo = null;
            }
            oooO00o.OooO0OO.remove(str);
        }
        if (oooO00o != null && (concurrentHashMap3 = oooO00o.OooO0o0) != null && concurrentHashMap3.containsKey(str)) {
            oooO00o.OooO0o0.remove(str);
        }
        if (oooO00o != null && (concurrentHashMap2 = oooO00o.OooO0o) != null && concurrentHashMap2.containsKey(str)) {
            oooO00o.OooO0o.remove(str);
        }
        if (oooO00o != null && (concurrentLinkedQueue = oooO00o.OooO0oO) != null) {
            concurrentLinkedQueue.remove(str);
        }
        if (oooO00o == null || (concurrentHashMap = oooO00o.OooO0Oo) == null || !concurrentHashMap.containsKey(str)) {
            return;
        }
        oooO00o.OooO0Oo.remove(str);
    }

    public final void OooO00o(String str, App app, String str2) {
        ConcurrentHashMap<String, AdFillingEventListener> concurrentHashMap;
        AdFillingEventListener adFillingEventListener;
        TmcLogger.e(TAG, "fillingInterstitialFail -> errMsg: " + str2);
        OooO00o oooO00o = this.OooO00o.get(app.getAppId());
        if (oooO00o != null && (concurrentHashMap = oooO00o.OooO0o0) != null && (adFillingEventListener = concurrentHashMap.get(str)) != null) {
            adFillingEventListener.fillingResult(str, false);
        }
        OooO00o(str, app);
    }

    public final void OooO0O0(String str, App app, String str2) {
        ConcurrentHashMap<String, AdShowEventListener> concurrentHashMap;
        AdShowEventListener adShowEventListener;
        TmcLogger.e(TAG, "showInterstitialFail -> errMsg: " + str2);
        OooO00o oooO00o = this.OooO00o.get(app.getAppId());
        if (oooO00o != null && (concurrentHashMap = oooO00o.OooO0o) != null && (adShowEventListener = concurrentHashMap.get(str)) != null) {
            adShowEventListener.showResult(str, false, new AdShowBean(0, 0, 0L, 0, 0L, null, 0, 0, false, 511, null));
        }
        OooO00o(str, app);
    }

    @Override // com.cloud.tmc.ad.IAdManagerProxy
    public void applicationDestroy() {
        Iterator<Map.Entry<String, OooO00o>> it = this.OooO00o.entrySet().iterator();
        while (it.hasNext()) {
            String str = it.next().getValue().OooO00o;
            if (str != null) {
                onDestroy(str);
            }
        }
    }

    @Override // com.cloud.tmc.ad.IAdManagerProxy
    public void close(String triggerId, App app) {
        ConcurrentLinkedQueue<String> concurrentLinkedQueue;
        Intrinsics.h(triggerId, "triggerId");
        Intrinsics.h(app, "app");
        OooO00o oooO00o = this.OooO00o.get(app.getAppId());
        if (oooO00o == null || (concurrentLinkedQueue = oooO00o.OooO0oO) == null || !concurrentLinkedQueue.contains(triggerId)) {
            TmcLogger.e(TAG, "广告关闭失败 -> 未曝光triggerId: " + triggerId);
            return;
        }
        if (oooO00o.OooO0O0.containsKey(triggerId)) {
            AdBaseDialog adBaseDialog = oooO00o.OooO0O0.get(triggerId);
            if (adBaseDialog != null) {
                adBaseDialog.OooO0o0 = true;
                adBaseDialog.dismiss();
                return;
            } else {
                TmcLogger.e(TAG, "广告关闭失败 -> html形式实例不存在triggerId: " + triggerId);
                return;
            }
        }
        if (oooO00o.OooO0OO.containsKey(triggerId)) {
            AdBaseDialog adBaseDialog2 = oooO00o.OooO0OO.get(triggerId);
            if (adBaseDialog2 != null) {
                adBaseDialog2.OooO0o0 = true;
                adBaseDialog2.dismiss();
            } else {
                TmcLogger.e(TAG, "广告关闭失败 -> json形式实例不存在triggerId: " + triggerId);
            }
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.cloud.tmc.ad.IAdManagerProxy
    public void fillingInterstitial(String triggerId, AdsDTO adsDTO, String str, String str2, App app, AdFillingEventListener listener) {
        OooO00o oooO00o;
        ConcurrentHashMap<String, AdFillingEventListener> concurrentHashMap;
        OooO00o oooO00o2;
        ConcurrentHashMap<String, AdEventListener> concurrentHashMap2;
        Context context;
        ConcurrentHashMap<String, AdBaseDialog> concurrentHashMap3;
        ConcurrentHashMap<String, AdEventListener> concurrentHashMap4;
        ConcurrentHashMap<String, AdEventListener> concurrentHashMap5;
        ConcurrentHashMap<String, AdFillingEventListener> concurrentHashMap6;
        Intrinsics.h(triggerId, "triggerId");
        Intrinsics.h(adsDTO, "adsDTO");
        Intrinsics.h(app, "app");
        Intrinsics.h(listener, "listener");
        OooO00o oooO00o3 = this.OooO00o.get(app.getAppId());
        if ((oooO00o3 == null || (concurrentHashMap6 = oooO00o3.OooO0o0) == null || !concurrentHashMap6.containsKey(triggerId)) && (oooO00o = this.OooO00o.get(app.getAppId())) != null && (concurrentHashMap = oooO00o.OooO0o0) != null) {
            concurrentHashMap.put(triggerId, listener);
        }
        OooO00o oooO00o4 = this.OooO00o.get(app.getAppId());
        if ((oooO00o4 == null || (concurrentHashMap5 = oooO00o4.OooO0Oo) == null || !concurrentHashMap5.containsKey(triggerId)) && (oooO00o2 = this.OooO00o.get(app.getAppId())) != null && (concurrentHashMap2 = oooO00o2.OooO0Oo) != null) {
            concurrentHashMap2.put(triggerId, new com.cloud.tmc.miniapp.ad.OooO00o(this, app));
        }
        OooO00o oooO00o5 = this.OooO00o.get(app.getAppId());
        AdEventListener adEventListener = (oooO00o5 == null || (concurrentHashMap4 = oooO00o5.OooO0Oo) == null) ? null : concurrentHashMap4.get(triggerId);
        if (!this.OooO00o.containsKey(app.getAppId())) {
            OooO00o(triggerId, app, "请先初始化");
            return;
        }
        Integer codeSeatType = adsDTO.getCodeSeatType();
        if (codeSeatType == null || codeSeatType.intValue() != 3) {
            OooO00o(triggerId, app, "非插屏类型");
            return;
        }
        Object obj = !TextUtils.isEmpty(adsDTO.getAdm()) ? "fromTypeHtml" : "fromTypeJson";
        AppContext appContext = app.getAppContext();
        if (appContext == null || appContext.getContext() == null) {
            return;
        }
        if (Intrinsics.c(obj, "fromTypeHtml")) {
            if (TextUtils.isEmpty(adsDTO.getAdm())) {
                OooO00o(triggerId, app, "adm内容不能为空");
                return;
            }
            if (adsDTO.getScales() == null || adsDTO.getScales().size() == 0) {
                OooO00o(triggerId, app, "代码为比例不能为空");
                return;
            }
            AppContext appContext2 = app.getAppContext();
            if (appContext2 == null || (context = appContext2.getContext()) == null) {
                OooO00o(triggerId, app, "系统异常");
                return;
            }
            String adm = adsDTO.getAdm();
            Intrinsics.g(adm, "adsDTO.adm");
            String str3 = adsDTO.getScales().get(0);
            Intrinsics.g(str3, "adsDTO.scales[0]");
            AdInterstitialHtmlView$Builder adInterstitialHtmlView$Builder = new AdInterstitialHtmlView$Builder(context, triggerId, adm, str3, adEventListener);
            OooO00o oooO00o6 = this.OooO00o.get(app.getAppId());
            if (oooO00o6 == null || (concurrentHashMap3 = oooO00o6.OooO0O0) == null) {
                return;
            }
            concurrentHashMap3.put(triggerId, adInterstitialHtmlView$Builder);
            return;
        }
        if (!Intrinsics.c(obj, "fromTypeJson")) {
            TmcLogger.e(TAG, "填充 -> triggerId: " + triggerId + ", 不存在的广告形式");
            return;
        }
        if (str == null) {
            OooO00o(triggerId, app, "广告图片不存在");
            return;
        }
        String materialStyle = adsDTO.getMaterialStyle();
        if (materialStyle != null) {
            switch (materialStyle.hashCode()) {
                case 2149406:
                    if (materialStyle.equals("FA14")) {
                        OooO00o(triggerId, adsDTO, str, str2, app, new AdStyleBean(true, true, true, true), adEventListener);
                        return;
                    }
                    break;
                case 68925418:
                    if (materialStyle.equals("I1101")) {
                        OooO00o(triggerId, adsDTO, str, str2, app, new AdStyleBean(true, true, true, true), adEventListener);
                        return;
                    }
                    break;
                case 68925419:
                    if (materialStyle.equals("I1102")) {
                        OooO00o(triggerId, adsDTO, str, str2, app, new AdStyleBean(true, false, true, true), adEventListener);
                        return;
                    }
                    break;
                case 68925420:
                    if (materialStyle.equals("I1103")) {
                        OooO00o(triggerId, adsDTO, str, str2, app, new AdStyleBean(true, true, false, true), adEventListener);
                        return;
                    }
                    break;
                case 68925423:
                    if (materialStyle.equals("I1106")) {
                        OooO00o(triggerId, adsDTO, str, str2, app, new AdStyleBean(true, true, false, true), adEventListener);
                        return;
                    }
                    break;
                case 68925424:
                    if (materialStyle.equals("I1107")) {
                        OooO00o(triggerId, adsDTO, str, str2, app, new AdStyleBean(false, false, false, false), adEventListener);
                        return;
                    }
                    break;
            }
        }
        OooO00o(triggerId, app, "非adm materialStyle 不符合");
    }

    @Override // com.cloud.tmc.ad.IAdManagerProxy
    public String getAdSdkFrameworkVersion() {
        if (this.OooO0O0 == null) {
            this.OooO0O0 = AdxPreferencesHelper.INSTANCE.getInstance().i(Constants.AD_FRAMEWORK_VERSION);
        }
        String str = this.OooO0O0;
        return str == null ? "" : str;
    }

    @Override // com.cloud.tmc.ad.IAdManagerProxy
    public long getAdSdkFrameworkVersionInt() {
        if (this.OooO0OO == null) {
            this.OooO0OO = Long.valueOf(AdxPreferencesHelper.INSTANCE.getInstance().g(Constants.AD_FRAMEWORK_VERSION_INT));
        }
        Long l11 = this.OooO0OO;
        if (l11 != null) {
            return l11.longValue();
        }
        return 0L;
    }

    @Override // com.cloud.tmc.ad.IAdManagerProxy
    public void onCreate(App app) {
        String str;
        Intrinsics.h(app, "app");
        List<String> existAppIds = NewTaskManager.Companion.getInstance().getExistAppIds();
        for (Map.Entry<String, OooO00o> entry : this.OooO00o.entrySet()) {
            if (!existAppIds.contains(entry.getKey()) && (str = entry.getValue().OooO00o) != null) {
                onDestroy(str);
            }
        }
        if (TextUtils.isEmpty(app.getAppId()) || this.OooO00o.containsKey(app.getAppId())) {
            return;
        }
        ConcurrentHashMap<String, OooO00o> concurrentHashMap = this.OooO00o;
        String appId = app.getAppId();
        Intrinsics.g(appId, "app.appId");
        concurrentHashMap.put(appId, new OooO00o(app.getAppId(), null, null, null, null, null, null, 126));
    }

    @Override // com.cloud.tmc.ad.IAdManagerProxy
    public void onDestroy(String str) {
        OooO00o oooO00o;
        if (str == null || (oooO00o = this.OooO00o.get(str)) == null) {
            return;
        }
        Iterator<Map.Entry<String, AdBaseDialog>> it = oooO00o.OooO0O0.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            AdBaseDialog value = it.next().getValue();
            AdInterstitialHtmlView$Builder adInterstitialHtmlView$Builder = value instanceof AdInterstitialHtmlView$Builder ? (AdInterstitialHtmlView$Builder) value : null;
            if (adInterstitialHtmlView$Builder != null) {
                adInterstitialHtmlView$Builder.OooO0Oo();
            }
            it.remove();
        }
        Iterator<Map.Entry<String, AdBaseDialog>> it2 = oooO00o.OooO0OO.entrySet().iterator();
        while (it2.hasNext()) {
            AdBaseDialog value2 = it2.next().getValue();
            AdInterstitialJsonAllStyleView$Builder adInterstitialJsonAllStyleView$Builder = value2 instanceof AdInterstitialJsonAllStyleView$Builder ? (AdInterstitialJsonAllStyleView$Builder) value2 : null;
            if (adInterstitialJsonAllStyleView$Builder != null) {
                adInterstitialJsonAllStyleView$Builder.OooO0oo = null;
            }
            it2.remove();
        }
        oooO00o.OooO0o0.clear();
        oooO00o.OooO0o.clear();
        oooO00o.OooO0oO.clear();
        oooO00o.OooO0Oo.clear();
    }

    @Override // com.cloud.tmc.ad.IAdManagerProxy
    public void showInterstitial(String triggerId, App app, AdsDTO adsDTO, AdShowEventListener listener) {
        OooO00o oooO00o;
        ConcurrentHashMap<String, AdShowEventListener> concurrentHashMap;
        ConcurrentHashMap<String, AdBaseDialog> concurrentHashMap2;
        ConcurrentHashMap<String, AdBaseDialog> concurrentHashMap3;
        OooO00o oooO00o2;
        ConcurrentHashMap<String, AdBaseDialog> concurrentHashMap4;
        ConcurrentHashMap<String, AdBaseDialog> concurrentHashMap5;
        ConcurrentHashMap<String, AdShowEventListener> concurrentHashMap6;
        Intrinsics.h(triggerId, "triggerId");
        Intrinsics.h(app, "app");
        Intrinsics.h(adsDTO, "adsDTO");
        Intrinsics.h(listener, "listener");
        OooO00o oooO00o3 = this.OooO00o.get(app.getAppId());
        if ((oooO00o3 == null || (concurrentHashMap6 = oooO00o3.OooO0o) == null || !concurrentHashMap6.containsKey(triggerId)) && (oooO00o = this.OooO00o.get(app.getAppId())) != null && (concurrentHashMap = oooO00o.OooO0o) != null) {
            concurrentHashMap.put(triggerId, listener);
        }
        AdBaseDialog adBaseDialog = null;
        if (!TextUtils.isEmpty(adsDTO.getAdm()) && (oooO00o2 = this.OooO00o.get(app.getAppId())) != null && (concurrentHashMap4 = oooO00o2.OooO0O0) != null && concurrentHashMap4.containsKey(triggerId)) {
            OooO00o oooO00o4 = this.OooO00o.get(app.getAppId());
            if (oooO00o4 != null && (concurrentHashMap5 = oooO00o4.OooO0O0) != null) {
                adBaseDialog = concurrentHashMap5.get(triggerId);
            }
            if (adBaseDialog != null) {
                adBaseDialog.show();
                return;
            } else {
                OooO0O0(triggerId, app, "html广告填充实例为null");
                return;
            }
        }
        OooO00o oooO00o5 = this.OooO00o.get(app.getAppId());
        if (oooO00o5 == null || (concurrentHashMap2 = oooO00o5.OooO0OO) == null || !concurrentHashMap2.containsKey(triggerId)) {
            OooO0O0(triggerId, app, "不存在广告形式");
            return;
        }
        OooO00o oooO00o6 = this.OooO00o.get(app.getAppId());
        if (oooO00o6 != null && (concurrentHashMap3 = oooO00o6.OooO0OO) != null) {
            adBaseDialog = concurrentHashMap3.get(triggerId);
        }
        if (adBaseDialog != null) {
            adBaseDialog.show();
        } else {
            OooO0O0(triggerId, app, "json广告填充实例为null");
        }
    }
}
