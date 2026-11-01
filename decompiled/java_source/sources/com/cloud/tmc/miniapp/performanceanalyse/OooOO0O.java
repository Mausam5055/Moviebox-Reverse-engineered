package com.cloud.tmc.miniapp.performanceanalyse;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.bykv.vk.openvk.preload.falconx.statistic.StatisticData;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.integration.model.ForegroundTime;
import com.cloud.tmc.integration.proxy.ReportProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.structure.AppManager;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.integration.utils.DeviceUtil;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ICommunicationTimeProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointConstants;
import com.cloud.tmc.kernel.proxy.performanceanalyse.a;
import com.cloud.tmc.kernel.utils.TraceLog;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniapp.base.BaseActivity;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import com.google.gson.Gson;
import com.transsion.mpush.core.config.MsgShowStatus;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class OooOO0O {
    public long OooO00o;
    public long OooO0O0;
    public boolean OooO0OO;
    public final Map<String, com.cloud.tmc.miniapp.performanceanalyse.OooO0O0> OooO0Oo = new LinkedHashMap();
    public static final OooO00o OooO0o0 = new OooO00o();
    public static final AtomicLong OooO0o = new AtomicLong(1);

    public static final class OooO00o {
    }

    public /* synthetic */ class OooO0O0 {
        public static final /* synthetic */ int[] OooO00o;

        static {
            int[] iArr = new int[PointAnalyseType.values().length];
            try {
                iArr[PointAnalyseType.POINT_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PointAnalyseType.POINT_JS_BRIDGE_READY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PointAnalyseType.POINT_RENDER_READY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PointAnalyseType.POINT_PAGE_OPEN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[PointAnalyseType.POINT_PAGE_CREATE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[PointAnalyseType.POINT_RENDER_T1.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[PointAnalyseType.POINT_RENDER_T2.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[PointAnalyseType.POINT_WORKER_READY.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[PointAnalyseType.POINT_SDK_PV.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[PointAnalyseType.POINT_PAGE_PV.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[PointAnalyseType.POINT_EXIT_CLICK.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[PointAnalyseType.POINT_EXIT_MINIAPP.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[PointAnalyseType.POINT_NAV_HOME_PRESSED.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[PointAnalyseType.POINT_MORE_ENTER.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[PointAnalyseType.POINT_MORE_EXIT.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[PointAnalyseType.POINT_SHORT_CUT.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[PointAnalyseType.POINT_SHARE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[PointAnalyseType.POINT_SHARE_URL.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[PointAnalyseType.POINT_SHARE_SAVE.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[PointAnalyseType.POINT_REFRESH.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[PointAnalyseType.POINT_ENTER_DEVELOP.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[PointAnalyseType.POINT_CLICK_AUTH.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[PointAnalyseType.POINT_CLICK_MESSAGE.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[PointAnalyseType.POINT_CLICK_WIDGET.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[PointAnalyseType.POINT_CLICK_WHATSAPP.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[PointAnalyseType.POINT_CLICK_TELEGRAM.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[PointAnalyseType.POINT_CLICK_ICON_SHARE.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[PointAnalyseType.POINT_CLICK_MC.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr[PointAnalyseType.POINT_LAUNCH_MINIAPP_START.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr[PointAnalyseType.POINT_LAUNCH_MINIAPP_HOT_OPEN.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr[PointAnalyseType.POINT_DOWNLOAD_V8_START.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr[PointAnalyseType.POINT_DOWNLOAD_V8_SUCCESS.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr[PointAnalyseType.POINT_DOWNLOAD_V8_FAIL.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr[PointAnalyseType.POINT_CHECK_WHITESCREEN.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr[PointAnalyseType.POINT_FPS.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr[PointAnalyseType.POINT_CHAIN_START.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                iArr[PointAnalyseType.POINT_CHAIN_END.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr[PointAnalyseType.POINT_CHAIN_INSERT.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                iArr[PointAnalyseType.POINT_CHAIN_CLEAR.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr[PointAnalyseType.POINT_H5_PAGE_ONFINISHED.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                iArr[PointAnalyseType.POINT_LOG_ERROR.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                iArr[PointAnalyseType.POINT_PRIVACY_AGREEMENT.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                iArr[PointAnalyseType.POINT_GET_PACKAGE_FILE.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                iArr[PointAnalyseType.POINT_PACKAGE_UPDATE_START.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                iArr[PointAnalyseType.POINT_PACKAGE_UPDATE_SUCCESS.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                iArr[PointAnalyseType.POINT_PACKAGE_UPDATE_FAIL.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                iArr[PointAnalyseType.POINT_PACKAGE_DOWNLOAD_START.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                iArr[PointAnalyseType.POINT_PACKAGE_DOWNLOAD_SUCCESS.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                iArr[PointAnalyseType.POINT_PACKAGE_DOWNLOAD_FAILED.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                iArr[PointAnalyseType.POINT_PACKAGE_DOWNLOAD_USER_EXIT.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                iArr[PointAnalyseType.POINT_APP_CHAIN_START.ordinal()] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                iArr[PointAnalyseType.POINT_APP_CHAIN_END.ordinal()] = 52;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                iArr[PointAnalyseType.POINT_PAGE_CHAIN_START.ordinal()] = 53;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                iArr[PointAnalyseType.POINT_PAGE_CHAIN_END.ordinal()] = 54;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                iArr[PointAnalyseType.POINT_APP_CHAIN_CLEAR.ordinal()] = 55;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                iArr[PointAnalyseType.POINT_PAGE_CHAIN_CLEAR.ordinal()] = 56;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                iArr[PointAnalyseType.POINT_APP_CHAIN_INSERT.ordinal()] = 57;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                iArr[PointAnalyseType.POINT_APP_CHAIN_FAIL.ordinal()] = 58;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                iArr[PointAnalyseType.POINT_PAGE_CHAIN_FAIL.ordinal()] = 59;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                iArr[PointAnalyseType.POINT_MINIAPP_FOREGROUND_TIME.ordinal()] = 60;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                iArr[PointAnalyseType.POINT_GET_ODID.ordinal()] = 61;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                iArr[PointAnalyseType.POINT_HOT_RELOAD.ordinal()] = 62;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                iArr[PointAnalyseType.POINT_OPEN_PAGE_ACTION.ordinal()] = 63;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                iArr[PointAnalyseType.POINT_PIN_FOR_LATER_EX.ordinal()] = 64;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                iArr[PointAnalyseType.POINT_PIN_FOR_LATER_CLICK.ordinal()] = 65;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                iArr[PointAnalyseType.POINT_PIN_FOR_LATER_BANNER_EX.ordinal()] = 66;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                iArr[PointAnalyseType.POINT_PIN_FOR_LATER_BANNER_CLICK.ordinal()] = 67;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                iArr[PointAnalyseType.POINT_PIN_FOR_LATER_ADD_MC_CLICK.ordinal()] = 68;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                iArr[PointAnalyseType.POINT_PIN_FOR_LATER_ADD_MC_EX.ordinal()] = 69;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                iArr[PointAnalyseType.POINT_PRIVACY_EX.ordinal()] = 70;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                iArr[PointAnalyseType.POINT_PRIVACY_CLICK.ordinal()] = 71;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                iArr[PointAnalyseType.ADD_MINI_APP_TO_DESKTOP.ordinal()] = 72;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                iArr[PointAnalyseType.PRE_REQUEST_HTML.ordinal()] = 73;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                iArr[PointAnalyseType.PRE_REQUEST_HTML_RET.ordinal()] = 74;
            } catch (NoSuchFieldError unused74) {
            }
            try {
                iArr[PointAnalyseType.GET_PRE_HTML.ordinal()] = 75;
            } catch (NoSuchFieldError unused75) {
            }
            try {
                iArr[PointAnalyseType.GET_PRE_HTML_HIT.ordinal()] = 76;
            } catch (NoSuchFieldError unused76) {
            }
            try {
                iArr[PointAnalyseType.POINT_OPEN_BROWSER.ordinal()] = 77;
            } catch (NoSuchFieldError unused77) {
            }
            try {
                iArr[PointAnalyseType.PRE_STRATEGY_FAIL.ordinal()] = 78;
            } catch (NoSuchFieldError unused78) {
            }
            try {
                iArr[PointAnalyseType.POINT_LATER_OFFLINE_EX.ordinal()] = 79;
            } catch (NoSuchFieldError unused79) {
            }
            try {
                iArr[PointAnalyseType.POINT_LATER_OFFLINE_APP_EX.ordinal()] = 80;
            } catch (NoSuchFieldError unused80) {
            }
            try {
                iArr[PointAnalyseType.POINT_LATER_OFFLINE_CLICK.ordinal()] = 81;
            } catch (NoSuchFieldError unused81) {
            }
            try {
                iArr[PointAnalyseType.POINT_GET_ADD_EX.ordinal()] = 82;
            } catch (NoSuchFieldError unused82) {
            }
            try {
                iArr[PointAnalyseType.POINT_GET_TOAST_ADD_EX.ordinal()] = 83;
            } catch (NoSuchFieldError unused83) {
            }
            try {
                iArr[PointAnalyseType.POINT_GET_ADD_CLICK.ordinal()] = 84;
            } catch (NoSuchFieldError unused84) {
            }
            try {
                iArr[PointAnalyseType.POINT_GET_ADD_NOSHOW.ordinal()] = 85;
            } catch (NoSuchFieldError unused85) {
            }
            OooO00o = iArr;
        }
    }

    public final void OooO00o() {
        try {
            com.cloud.tmc.miniapp.utils.athena.OooO0OO.OooO00o.OooO00o();
        } catch (Throwable th2) {
            TmcLogger.e("PointTrack", "tryInitAthena failed!", th2);
        }
    }

    public final void OooO00o(Bundle bundle) {
        Map<String, Long> map;
        Long l11;
        String string = bundle.getString(ChainPoint.CHAIN_ID, "");
        String string2 = bundle.getString(ChainPoint.PAGE_PATH, "");
        if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2) || !this.OooO0Oo.containsKey(string)) {
            return;
        }
        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O0 = this.OooO0Oo.get(string);
        if (oooO0O0 != null) {
            if (Intrinsics.c(oooO0O0.OooO0O0, string2)) {
                bundle.putString("openType", "app");
                long jCurrentTimeMillis = System.currentTimeMillis();
                Long l12 = oooO0O0.OooO0OO.get("18");
                bundle.putLong("openAppTime", jCurrentTimeMillis - (l12 != null ? l12.longValue() : jCurrentTimeMillis));
                Long l13 = oooO0O0.OooO0OO.get("17");
                bundle.putLong("openPageTime", jCurrentTimeMillis - (l13 != null ? l13.longValue() : jCurrentTimeMillis));
            } else {
                bundle.putString("openType", "page");
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                OooOO0 oooOO0 = oooO0O0.OooO0o0.get(string2);
                bundle.putLong("openPageTime", jCurrentTimeMillis2 - ((oooOO0 == null || (map = oooOO0.OooO0OO) == null || (l11 = map.get("17")) == null) ? jCurrentTimeMillis2 : l11.longValue()));
            }
        }
        bundle.remove(ChainPoint.TYPE);
        bundle.remove(ChainPoint.CHAIN_ID);
        bundle.remove(ChainPoint.PAGE_PATH);
    }

    public final void OooO00o(Bundle bundle, String str) {
        AppContext appContext;
        Context context;
        if (str != null) {
            try {
                App appFindApp = ((AppManager) TmcProxy.get(AppManager.class)).findApp(str);
                if (appFindApp == null || (appContext = appFindApp.getAppContext()) == null || (context = appContext.getContext()) == null) {
                    return;
                }
                Intrinsics.g(context, "context");
                bundle.putString("queryShortcutExist", String.valueOf(AppUtils.INSTANCE.queryShortcutExist(context, str)));
            } catch (Throwable th2) {
                TmcLogger.e("PointTrack", "queryShortcutStatus failed!", th2);
            }
        }
    }

    public final void OooO00o(String str) {
        App appFindApp;
        if (str != null) {
            try {
                App appFindApp2 = ((AppManager) TmcProxy.get(AppManager.class)).findApp(str);
                if ((appFindApp2 != null ? (ForegroundTime) appFindApp2.getData(ForegroundTime.class) : null) != null || (appFindApp = ((AppManager) TmcProxy.get(AppManager.class)).findApp(str)) == null) {
                    return;
                }
                ForegroundTime foregroundTime = new ForegroundTime();
                foregroundTime.setStartTime();
                foregroundTime.resetStartCount();
                foregroundTime.addStartCount();
                Unit unit = Unit.f67061a;
                appFindApp.setData(ForegroundTime.class, foregroundTime);
            } catch (Throwable th2) {
                TmcLogger.e("PointTrack", "startRecordForegroundTime failed!", th2);
            }
        }
    }

    public final void OooO00o(String str, Bundle bundle) {
        Map<String, Long> map;
        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O0;
        Map<String, Long> map2;
        Map<String, Long> map3;
        Map<String, Long> map4;
        Map<String, OooOO0> map5;
        OooOO0 oooOO0;
        Map<String, OooOO0> map6;
        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O1;
        Map<String, Long> map7;
        Map<String, Long> map8;
        String string = bundle.getString(ChainPoint.TYPE, "");
        String appId = bundle.getString(ChainPoint.CHAIN_ID, "");
        String pagePath = bundle.getString(ChainPoint.PAGE_PATH, "");
        TmcLogger.d("oldChain", "chainStart -> msg:" + str + ", type:" + string + ", pagePath:" + pagePath);
        if (!this.OooO0Oo.containsKey(appId)) {
            Map<String, com.cloud.tmc.miniapp.performanceanalyse.OooO0O0> map9 = this.OooO0Oo;
            Intrinsics.g(appId, "appId");
            map9.put(appId, new com.cloud.tmc.miniapp.performanceanalyse.OooO0O0(appId, null, new LinkedHashMap(), new LinkedHashMap(), new LinkedHashMap(), 0, 0, 0, 0, false, "", "", "", "", false));
        }
        if (Intrinsics.c("app", string)) {
            com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O2 = this.OooO0Oo.get(appId);
            if ((oooO0O2 != null && (map8 = oooO0O2.OooO0OO) != null && map8.containsKey(str)) || (oooO0O1 = this.OooO0Oo.get(appId)) == null || (map7 = oooO0O1.OooO0OO) == null) {
                return;
            }
            map7.put(str, Long.valueOf(System.currentTimeMillis()));
            return;
        }
        if (!Intrinsics.c("page", string) || pagePath == null || pagePath.length() == 0) {
            return;
        }
        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O3 = this.OooO0Oo.get(appId);
        Map<String, OooOO0> map10 = oooO0O3 != null ? oooO0O3.OooO0o0 : null;
        if ((map10 == null || !map10.containsKey(pagePath)) && map10 != null) {
            Intrinsics.g(pagePath, "pagePath");
            map10.put(pagePath, new OooOO0(pagePath, "", new LinkedHashMap(), new LinkedHashMap(), "", "", ""));
        }
        if (Intrinsics.c(ChainPoint.CreateRender, str)) {
            String renderId = bundle.getString(ChainPoint.RENDER_ID, "");
            com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O4 = this.OooO0Oo.get(appId);
            OooOO0 oooOO1 = (oooO0O4 == null || (map6 = oooO0O4.OooO0o0) == null) ? null : map6.get(pagePath);
            if (oooOO1 != null) {
                Intrinsics.g(renderId, "renderId");
                Intrinsics.h(renderId, "<set-?>");
                oooOO1.OooO0O0 = renderId;
            }
        }
        if (Intrinsics.c(ChainPoint.ROUTE_PAGE, str)) {
            String string2 = bundle.getString("navigationType");
            com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O5 = this.OooO0Oo.get(appId);
            if (oooO0O5 != null && (map5 = oooO0O5.OooO0o0) != null && (oooOO0 = map5.get(pagePath)) != null) {
                if (string2 == null) {
                    string2 = "";
                }
                Intrinsics.h(string2, "<set-?>");
                oooOO0.OooO0oO = string2;
            }
        }
        OooOO0 oooOO2 = map10 != null ? map10.get(pagePath) : null;
        if ((oooOO2 == null || (map4 = oooOO2.OooO0OO) == null || !map4.containsKey(str)) && oooOO2 != null && (map = oooOO2.OooO0OO) != null) {
            map.put(str, Long.valueOf(System.currentTimeMillis()));
        }
        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O6 = this.OooO0Oo.get(appId);
        if ((oooO0O6 != null ? oooO0O6.OooO0O0 : null) == null) {
            com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O7 = this.OooO0Oo.get(appId);
            if (oooO0O7 != null) {
                oooO0O7.OooO0O0 = pagePath;
            }
            com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O8 = this.OooO0Oo.get(appId);
            if (oooO0O8 != null) {
                String string3 = bundle.getString(TmcConstants.KEY_PAGE_RANDOM_ID);
                if (string3 == null) {
                    string3 = "";
                }
                Intrinsics.h(string3, "<set-?>");
                oooO0O8.OooOOO = string3;
            }
            com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O9 = this.OooO0Oo.get(appId);
            if (oooO0O9 != null) {
                String string4 = bundle.getString("navigationType");
                String str2 = string4 != null ? string4 : "";
                Intrinsics.h(str2, "<set-?>");
                oooO0O9.OooOOO0 = str2;
            }
        }
        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O10 = this.OooO0Oo.get(appId);
        if (Intrinsics.c(pagePath, oooO0O10 != null ? oooO0O10.OooO0O0 : null)) {
            com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O11 = this.OooO0Oo.get(appId);
            if ((oooO0O11 != null && (map3 = oooO0O11.OooO0OO) != null && map3.containsKey(str)) || (oooO0O0 = this.OooO0Oo.get(appId)) == null || (map2 = oooO0O0.OooO0OO) == null) {
                return;
            }
            map2.put(str, Long.valueOf(System.currentTimeMillis()));
        }
    }

    /* JADX WARN: Code duplicated, block: B:371:0x0818 A[Catch: all -> 0x0af9, TryCatch #2 {all -> 0x0af9, blocks: (B:281:0x065b, B:285:0x06b0, B:287:0x06b6, B:289:0x06c0, B:291:0x06c6, B:293:0x06cd, B:295:0x06d7, B:297:0x06dd, B:299:0x06eb, B:301:0x06f1, B:303:0x06f9, B:305:0x0700, B:369:0x0810, B:371:0x0818, B:373:0x0822, B:375:0x0829, B:377:0x082f, B:480:0x0ae1, B:378:0x0859, B:380:0x086e, B:382:0x0878, B:384:0x087f, B:386:0x0885, B:388:0x088f, B:390:0x0898, B:393:0x08bc, B:395:0x08fc, B:397:0x0902, B:398:0x090a, B:400:0x0910, B:401:0x093b, B:404:0x0945, B:406:0x094a, B:408:0x0958, B:410:0x095e, B:412:0x0965, B:414:0x0969, B:417:0x0970, B:419:0x097b, B:420:0x0986, B:422:0x0997, B:424:0x09a1, B:426:0x09ae, B:428:0x09b9, B:430:0x09c6, B:432:0x09d1, B:434:0x09de, B:436:0x09e9, B:438:0x09f6, B:439:0x09fa, B:441:0x0a0b, B:446:0x0a18, B:448:0x0a25, B:453:0x0a32, B:455:0x0a56, B:457:0x0a5c, B:459:0x0a64, B:461:0x0a6b, B:463:0x0a93, B:465:0x0a99, B:467:0x0aa1, B:469:0x0aa8, B:471:0x0ab9, B:473:0x0abf, B:475:0x0ac7, B:476:0x0acb, B:479:0x0add, B:307:0x070f, B:309:0x0715, B:311:0x071f, B:313:0x0725, B:315:0x072d, B:317:0x0733, B:319:0x073a, B:321:0x0744, B:323:0x074a, B:325:0x0752, B:327:0x0758, B:329:0x0766, B:331:0x076c, B:333:0x0774, B:335:0x077a, B:337:0x0782, B:339:0x0789, B:340:0x0795, B:342:0x079f, B:344:0x07a6, B:346:0x07ac, B:348:0x07b6, B:350:0x07bc, B:352:0x07c3, B:354:0x07cd, B:356:0x07d3, B:358:0x07e1, B:360:0x07e7, B:362:0x07ef, B:364:0x07f5, B:366:0x07fd, B:368:0x0804), top: B:584:0x065b }] */
    /* JADX WARN: Code duplicated, block: B:373:0x0822 A[Catch: all -> 0x0af9, TryCatch #2 {all -> 0x0af9, blocks: (B:281:0x065b, B:285:0x06b0, B:287:0x06b6, B:289:0x06c0, B:291:0x06c6, B:293:0x06cd, B:295:0x06d7, B:297:0x06dd, B:299:0x06eb, B:301:0x06f1, B:303:0x06f9, B:305:0x0700, B:369:0x0810, B:371:0x0818, B:373:0x0822, B:375:0x0829, B:377:0x082f, B:480:0x0ae1, B:378:0x0859, B:380:0x086e, B:382:0x0878, B:384:0x087f, B:386:0x0885, B:388:0x088f, B:390:0x0898, B:393:0x08bc, B:395:0x08fc, B:397:0x0902, B:398:0x090a, B:400:0x0910, B:401:0x093b, B:404:0x0945, B:406:0x094a, B:408:0x0958, B:410:0x095e, B:412:0x0965, B:414:0x0969, B:417:0x0970, B:419:0x097b, B:420:0x0986, B:422:0x0997, B:424:0x09a1, B:426:0x09ae, B:428:0x09b9, B:430:0x09c6, B:432:0x09d1, B:434:0x09de, B:436:0x09e9, B:438:0x09f6, B:439:0x09fa, B:441:0x0a0b, B:446:0x0a18, B:448:0x0a25, B:453:0x0a32, B:455:0x0a56, B:457:0x0a5c, B:459:0x0a64, B:461:0x0a6b, B:463:0x0a93, B:465:0x0a99, B:467:0x0aa1, B:469:0x0aa8, B:471:0x0ab9, B:473:0x0abf, B:475:0x0ac7, B:476:0x0acb, B:479:0x0add, B:307:0x070f, B:309:0x0715, B:311:0x071f, B:313:0x0725, B:315:0x072d, B:317:0x0733, B:319:0x073a, B:321:0x0744, B:323:0x074a, B:325:0x0752, B:327:0x0758, B:329:0x0766, B:331:0x076c, B:333:0x0774, B:335:0x077a, B:337:0x0782, B:339:0x0789, B:340:0x0795, B:342:0x079f, B:344:0x07a6, B:346:0x07ac, B:348:0x07b6, B:350:0x07bc, B:352:0x07c3, B:354:0x07cd, B:356:0x07d3, B:358:0x07e1, B:360:0x07e7, B:362:0x07ef, B:364:0x07f5, B:366:0x07fd, B:368:0x0804), top: B:584:0x065b }] */
    /* JADX WARN: Code duplicated, block: B:374:0x0827  */
    /* JADX WARN: Code duplicated, block: B:377:0x082f A[Catch: all -> 0x0af9, TryCatch #2 {all -> 0x0af9, blocks: (B:281:0x065b, B:285:0x06b0, B:287:0x06b6, B:289:0x06c0, B:291:0x06c6, B:293:0x06cd, B:295:0x06d7, B:297:0x06dd, B:299:0x06eb, B:301:0x06f1, B:303:0x06f9, B:305:0x0700, B:369:0x0810, B:371:0x0818, B:373:0x0822, B:375:0x0829, B:377:0x082f, B:480:0x0ae1, B:378:0x0859, B:380:0x086e, B:382:0x0878, B:384:0x087f, B:386:0x0885, B:388:0x088f, B:390:0x0898, B:393:0x08bc, B:395:0x08fc, B:397:0x0902, B:398:0x090a, B:400:0x0910, B:401:0x093b, B:404:0x0945, B:406:0x094a, B:408:0x0958, B:410:0x095e, B:412:0x0965, B:414:0x0969, B:417:0x0970, B:419:0x097b, B:420:0x0986, B:422:0x0997, B:424:0x09a1, B:426:0x09ae, B:428:0x09b9, B:430:0x09c6, B:432:0x09d1, B:434:0x09de, B:436:0x09e9, B:438:0x09f6, B:439:0x09fa, B:441:0x0a0b, B:446:0x0a18, B:448:0x0a25, B:453:0x0a32, B:455:0x0a56, B:457:0x0a5c, B:459:0x0a64, B:461:0x0a6b, B:463:0x0a93, B:465:0x0a99, B:467:0x0aa1, B:469:0x0aa8, B:471:0x0ab9, B:473:0x0abf, B:475:0x0ac7, B:476:0x0acb, B:479:0x0add, B:307:0x070f, B:309:0x0715, B:311:0x071f, B:313:0x0725, B:315:0x072d, B:317:0x0733, B:319:0x073a, B:321:0x0744, B:323:0x074a, B:325:0x0752, B:327:0x0758, B:329:0x0766, B:331:0x076c, B:333:0x0774, B:335:0x077a, B:337:0x0782, B:339:0x0789, B:340:0x0795, B:342:0x079f, B:344:0x07a6, B:346:0x07ac, B:348:0x07b6, B:350:0x07bc, B:352:0x07c3, B:354:0x07cd, B:356:0x07d3, B:358:0x07e1, B:360:0x07e7, B:362:0x07ef, B:364:0x07f5, B:366:0x07fd, B:368:0x0804), top: B:584:0x065b }] */
    /* JADX WARN: Code duplicated, block: B:378:0x0859 A[Catch: all -> 0x0af9, TryCatch #2 {all -> 0x0af9, blocks: (B:281:0x065b, B:285:0x06b0, B:287:0x06b6, B:289:0x06c0, B:291:0x06c6, B:293:0x06cd, B:295:0x06d7, B:297:0x06dd, B:299:0x06eb, B:301:0x06f1, B:303:0x06f9, B:305:0x0700, B:369:0x0810, B:371:0x0818, B:373:0x0822, B:375:0x0829, B:377:0x082f, B:480:0x0ae1, B:378:0x0859, B:380:0x086e, B:382:0x0878, B:384:0x087f, B:386:0x0885, B:388:0x088f, B:390:0x0898, B:393:0x08bc, B:395:0x08fc, B:397:0x0902, B:398:0x090a, B:400:0x0910, B:401:0x093b, B:404:0x0945, B:406:0x094a, B:408:0x0958, B:410:0x095e, B:412:0x0965, B:414:0x0969, B:417:0x0970, B:419:0x097b, B:420:0x0986, B:422:0x0997, B:424:0x09a1, B:426:0x09ae, B:428:0x09b9, B:430:0x09c6, B:432:0x09d1, B:434:0x09de, B:436:0x09e9, B:438:0x09f6, B:439:0x09fa, B:441:0x0a0b, B:446:0x0a18, B:448:0x0a25, B:453:0x0a32, B:455:0x0a56, B:457:0x0a5c, B:459:0x0a64, B:461:0x0a6b, B:463:0x0a93, B:465:0x0a99, B:467:0x0aa1, B:469:0x0aa8, B:471:0x0ab9, B:473:0x0abf, B:475:0x0ac7, B:476:0x0acb, B:479:0x0add, B:307:0x070f, B:309:0x0715, B:311:0x071f, B:313:0x0725, B:315:0x072d, B:317:0x0733, B:319:0x073a, B:321:0x0744, B:323:0x074a, B:325:0x0752, B:327:0x0758, B:329:0x0766, B:331:0x076c, B:333:0x0774, B:335:0x077a, B:337:0x0782, B:339:0x0789, B:340:0x0795, B:342:0x079f, B:344:0x07a6, B:346:0x07ac, B:348:0x07b6, B:350:0x07bc, B:352:0x07c3, B:354:0x07cd, B:356:0x07d3, B:358:0x07e1, B:360:0x07e7, B:362:0x07ef, B:364:0x07f5, B:366:0x07fd, B:368:0x0804), top: B:584:0x065b }] */
    /* JADX WARN: Code duplicated, block: B:380:0x086e A[Catch: all -> 0x0af9, TryCatch #2 {all -> 0x0af9, blocks: (B:281:0x065b, B:285:0x06b0, B:287:0x06b6, B:289:0x06c0, B:291:0x06c6, B:293:0x06cd, B:295:0x06d7, B:297:0x06dd, B:299:0x06eb, B:301:0x06f1, B:303:0x06f9, B:305:0x0700, B:369:0x0810, B:371:0x0818, B:373:0x0822, B:375:0x0829, B:377:0x082f, B:480:0x0ae1, B:378:0x0859, B:380:0x086e, B:382:0x0878, B:384:0x087f, B:386:0x0885, B:388:0x088f, B:390:0x0898, B:393:0x08bc, B:395:0x08fc, B:397:0x0902, B:398:0x090a, B:400:0x0910, B:401:0x093b, B:404:0x0945, B:406:0x094a, B:408:0x0958, B:410:0x095e, B:412:0x0965, B:414:0x0969, B:417:0x0970, B:419:0x097b, B:420:0x0986, B:422:0x0997, B:424:0x09a1, B:426:0x09ae, B:428:0x09b9, B:430:0x09c6, B:432:0x09d1, B:434:0x09de, B:436:0x09e9, B:438:0x09f6, B:439:0x09fa, B:441:0x0a0b, B:446:0x0a18, B:448:0x0a25, B:453:0x0a32, B:455:0x0a56, B:457:0x0a5c, B:459:0x0a64, B:461:0x0a6b, B:463:0x0a93, B:465:0x0a99, B:467:0x0aa1, B:469:0x0aa8, B:471:0x0ab9, B:473:0x0abf, B:475:0x0ac7, B:476:0x0acb, B:479:0x0add, B:307:0x070f, B:309:0x0715, B:311:0x071f, B:313:0x0725, B:315:0x072d, B:317:0x0733, B:319:0x073a, B:321:0x0744, B:323:0x074a, B:325:0x0752, B:327:0x0758, B:329:0x0766, B:331:0x076c, B:333:0x0774, B:335:0x077a, B:337:0x0782, B:339:0x0789, B:340:0x0795, B:342:0x079f, B:344:0x07a6, B:346:0x07ac, B:348:0x07b6, B:350:0x07bc, B:352:0x07c3, B:354:0x07cd, B:356:0x07d3, B:358:0x07e1, B:360:0x07e7, B:362:0x07ef, B:364:0x07f5, B:366:0x07fd, B:368:0x0804), top: B:584:0x065b }] */
    /* JADX WARN: Code duplicated, block: B:382:0x0878 A[Catch: all -> 0x0af9, TryCatch #2 {all -> 0x0af9, blocks: (B:281:0x065b, B:285:0x06b0, B:287:0x06b6, B:289:0x06c0, B:291:0x06c6, B:293:0x06cd, B:295:0x06d7, B:297:0x06dd, B:299:0x06eb, B:301:0x06f1, B:303:0x06f9, B:305:0x0700, B:369:0x0810, B:371:0x0818, B:373:0x0822, B:375:0x0829, B:377:0x082f, B:480:0x0ae1, B:378:0x0859, B:380:0x086e, B:382:0x0878, B:384:0x087f, B:386:0x0885, B:388:0x088f, B:390:0x0898, B:393:0x08bc, B:395:0x08fc, B:397:0x0902, B:398:0x090a, B:400:0x0910, B:401:0x093b, B:404:0x0945, B:406:0x094a, B:408:0x0958, B:410:0x095e, B:412:0x0965, B:414:0x0969, B:417:0x0970, B:419:0x097b, B:420:0x0986, B:422:0x0997, B:424:0x09a1, B:426:0x09ae, B:428:0x09b9, B:430:0x09c6, B:432:0x09d1, B:434:0x09de, B:436:0x09e9, B:438:0x09f6, B:439:0x09fa, B:441:0x0a0b, B:446:0x0a18, B:448:0x0a25, B:453:0x0a32, B:455:0x0a56, B:457:0x0a5c, B:459:0x0a64, B:461:0x0a6b, B:463:0x0a93, B:465:0x0a99, B:467:0x0aa1, B:469:0x0aa8, B:471:0x0ab9, B:473:0x0abf, B:475:0x0ac7, B:476:0x0acb, B:479:0x0add, B:307:0x070f, B:309:0x0715, B:311:0x071f, B:313:0x0725, B:315:0x072d, B:317:0x0733, B:319:0x073a, B:321:0x0744, B:323:0x074a, B:325:0x0752, B:327:0x0758, B:329:0x0766, B:331:0x076c, B:333:0x0774, B:335:0x077a, B:337:0x0782, B:339:0x0789, B:340:0x0795, B:342:0x079f, B:344:0x07a6, B:346:0x07ac, B:348:0x07b6, B:350:0x07bc, B:352:0x07c3, B:354:0x07cd, B:356:0x07d3, B:358:0x07e1, B:360:0x07e7, B:362:0x07ef, B:364:0x07f5, B:366:0x07fd, B:368:0x0804), top: B:584:0x065b }] */
    /* JADX WARN: Code duplicated, block: B:383:0x087d  */
    /* JADX WARN: Code duplicated, block: B:386:0x0885 A[Catch: all -> 0x0af9, TryCatch #2 {all -> 0x0af9, blocks: (B:281:0x065b, B:285:0x06b0, B:287:0x06b6, B:289:0x06c0, B:291:0x06c6, B:293:0x06cd, B:295:0x06d7, B:297:0x06dd, B:299:0x06eb, B:301:0x06f1, B:303:0x06f9, B:305:0x0700, B:369:0x0810, B:371:0x0818, B:373:0x0822, B:375:0x0829, B:377:0x082f, B:480:0x0ae1, B:378:0x0859, B:380:0x086e, B:382:0x0878, B:384:0x087f, B:386:0x0885, B:388:0x088f, B:390:0x0898, B:393:0x08bc, B:395:0x08fc, B:397:0x0902, B:398:0x090a, B:400:0x0910, B:401:0x093b, B:404:0x0945, B:406:0x094a, B:408:0x0958, B:410:0x095e, B:412:0x0965, B:414:0x0969, B:417:0x0970, B:419:0x097b, B:420:0x0986, B:422:0x0997, B:424:0x09a1, B:426:0x09ae, B:428:0x09b9, B:430:0x09c6, B:432:0x09d1, B:434:0x09de, B:436:0x09e9, B:438:0x09f6, B:439:0x09fa, B:441:0x0a0b, B:446:0x0a18, B:448:0x0a25, B:453:0x0a32, B:455:0x0a56, B:457:0x0a5c, B:459:0x0a64, B:461:0x0a6b, B:463:0x0a93, B:465:0x0a99, B:467:0x0aa1, B:469:0x0aa8, B:471:0x0ab9, B:473:0x0abf, B:475:0x0ac7, B:476:0x0acb, B:479:0x0add, B:307:0x070f, B:309:0x0715, B:311:0x071f, B:313:0x0725, B:315:0x072d, B:317:0x0733, B:319:0x073a, B:321:0x0744, B:323:0x074a, B:325:0x0752, B:327:0x0758, B:329:0x0766, B:331:0x076c, B:333:0x0774, B:335:0x077a, B:337:0x0782, B:339:0x0789, B:340:0x0795, B:342:0x079f, B:344:0x07a6, B:346:0x07ac, B:348:0x07b6, B:350:0x07bc, B:352:0x07c3, B:354:0x07cd, B:356:0x07d3, B:358:0x07e1, B:360:0x07e7, B:362:0x07ef, B:364:0x07f5, B:366:0x07fd, B:368:0x0804), top: B:584:0x065b }] */
    /* JADX WARN: Code duplicated, block: B:388:0x088f A[Catch: all -> 0x0af9, TryCatch #2 {all -> 0x0af9, blocks: (B:281:0x065b, B:285:0x06b0, B:287:0x06b6, B:289:0x06c0, B:291:0x06c6, B:293:0x06cd, B:295:0x06d7, B:297:0x06dd, B:299:0x06eb, B:301:0x06f1, B:303:0x06f9, B:305:0x0700, B:369:0x0810, B:371:0x0818, B:373:0x0822, B:375:0x0829, B:377:0x082f, B:480:0x0ae1, B:378:0x0859, B:380:0x086e, B:382:0x0878, B:384:0x087f, B:386:0x0885, B:388:0x088f, B:390:0x0898, B:393:0x08bc, B:395:0x08fc, B:397:0x0902, B:398:0x090a, B:400:0x0910, B:401:0x093b, B:404:0x0945, B:406:0x094a, B:408:0x0958, B:410:0x095e, B:412:0x0965, B:414:0x0969, B:417:0x0970, B:419:0x097b, B:420:0x0986, B:422:0x0997, B:424:0x09a1, B:426:0x09ae, B:428:0x09b9, B:430:0x09c6, B:432:0x09d1, B:434:0x09de, B:436:0x09e9, B:438:0x09f6, B:439:0x09fa, B:441:0x0a0b, B:446:0x0a18, B:448:0x0a25, B:453:0x0a32, B:455:0x0a56, B:457:0x0a5c, B:459:0x0a64, B:461:0x0a6b, B:463:0x0a93, B:465:0x0a99, B:467:0x0aa1, B:469:0x0aa8, B:471:0x0ab9, B:473:0x0abf, B:475:0x0ac7, B:476:0x0acb, B:479:0x0add, B:307:0x070f, B:309:0x0715, B:311:0x071f, B:313:0x0725, B:315:0x072d, B:317:0x0733, B:319:0x073a, B:321:0x0744, B:323:0x074a, B:325:0x0752, B:327:0x0758, B:329:0x0766, B:331:0x076c, B:333:0x0774, B:335:0x077a, B:337:0x0782, B:339:0x0789, B:340:0x0795, B:342:0x079f, B:344:0x07a6, B:346:0x07ac, B:348:0x07b6, B:350:0x07bc, B:352:0x07c3, B:354:0x07cd, B:356:0x07d3, B:358:0x07e1, B:360:0x07e7, B:362:0x07ef, B:364:0x07f5, B:366:0x07fd, B:368:0x0804), top: B:584:0x065b }] */
    /* JADX WARN: Code duplicated, block: B:392:0x08b9 A[ADDED_TO_REGION, REMOVE] */
    /* JADX WARN: Code duplicated, block: B:395:0x08fc A[Catch: all -> 0x0af9, TryCatch #2 {all -> 0x0af9, blocks: (B:281:0x065b, B:285:0x06b0, B:287:0x06b6, B:289:0x06c0, B:291:0x06c6, B:293:0x06cd, B:295:0x06d7, B:297:0x06dd, B:299:0x06eb, B:301:0x06f1, B:303:0x06f9, B:305:0x0700, B:369:0x0810, B:371:0x0818, B:373:0x0822, B:375:0x0829, B:377:0x082f, B:480:0x0ae1, B:378:0x0859, B:380:0x086e, B:382:0x0878, B:384:0x087f, B:386:0x0885, B:388:0x088f, B:390:0x0898, B:393:0x08bc, B:395:0x08fc, B:397:0x0902, B:398:0x090a, B:400:0x0910, B:401:0x093b, B:404:0x0945, B:406:0x094a, B:408:0x0958, B:410:0x095e, B:412:0x0965, B:414:0x0969, B:417:0x0970, B:419:0x097b, B:420:0x0986, B:422:0x0997, B:424:0x09a1, B:426:0x09ae, B:428:0x09b9, B:430:0x09c6, B:432:0x09d1, B:434:0x09de, B:436:0x09e9, B:438:0x09f6, B:439:0x09fa, B:441:0x0a0b, B:446:0x0a18, B:448:0x0a25, B:453:0x0a32, B:455:0x0a56, B:457:0x0a5c, B:459:0x0a64, B:461:0x0a6b, B:463:0x0a93, B:465:0x0a99, B:467:0x0aa1, B:469:0x0aa8, B:471:0x0ab9, B:473:0x0abf, B:475:0x0ac7, B:476:0x0acb, B:479:0x0add, B:307:0x070f, B:309:0x0715, B:311:0x071f, B:313:0x0725, B:315:0x072d, B:317:0x0733, B:319:0x073a, B:321:0x0744, B:323:0x074a, B:325:0x0752, B:327:0x0758, B:329:0x0766, B:331:0x076c, B:333:0x0774, B:335:0x077a, B:337:0x0782, B:339:0x0789, B:340:0x0795, B:342:0x079f, B:344:0x07a6, B:346:0x07ac, B:348:0x07b6, B:350:0x07bc, B:352:0x07c3, B:354:0x07cd, B:356:0x07d3, B:358:0x07e1, B:360:0x07e7, B:362:0x07ef, B:364:0x07f5, B:366:0x07fd, B:368:0x0804), top: B:584:0x065b }] */
    /* JADX WARN: Code duplicated, block: B:403:0x0942  */
    /* JADX WARN: Code duplicated, block: B:406:0x094a A[Catch: all -> 0x0af9, TryCatch #2 {all -> 0x0af9, blocks: (B:281:0x065b, B:285:0x06b0, B:287:0x06b6, B:289:0x06c0, B:291:0x06c6, B:293:0x06cd, B:295:0x06d7, B:297:0x06dd, B:299:0x06eb, B:301:0x06f1, B:303:0x06f9, B:305:0x0700, B:369:0x0810, B:371:0x0818, B:373:0x0822, B:375:0x0829, B:377:0x082f, B:480:0x0ae1, B:378:0x0859, B:380:0x086e, B:382:0x0878, B:384:0x087f, B:386:0x0885, B:388:0x088f, B:390:0x0898, B:393:0x08bc, B:395:0x08fc, B:397:0x0902, B:398:0x090a, B:400:0x0910, B:401:0x093b, B:404:0x0945, B:406:0x094a, B:408:0x0958, B:410:0x095e, B:412:0x0965, B:414:0x0969, B:417:0x0970, B:419:0x097b, B:420:0x0986, B:422:0x0997, B:424:0x09a1, B:426:0x09ae, B:428:0x09b9, B:430:0x09c6, B:432:0x09d1, B:434:0x09de, B:436:0x09e9, B:438:0x09f6, B:439:0x09fa, B:441:0x0a0b, B:446:0x0a18, B:448:0x0a25, B:453:0x0a32, B:455:0x0a56, B:457:0x0a5c, B:459:0x0a64, B:461:0x0a6b, B:463:0x0a93, B:465:0x0a99, B:467:0x0aa1, B:469:0x0aa8, B:471:0x0ab9, B:473:0x0abf, B:475:0x0ac7, B:476:0x0acb, B:479:0x0add, B:307:0x070f, B:309:0x0715, B:311:0x071f, B:313:0x0725, B:315:0x072d, B:317:0x0733, B:319:0x073a, B:321:0x0744, B:323:0x074a, B:325:0x0752, B:327:0x0758, B:329:0x0766, B:331:0x076c, B:333:0x0774, B:335:0x077a, B:337:0x0782, B:339:0x0789, B:340:0x0795, B:342:0x079f, B:344:0x07a6, B:346:0x07ac, B:348:0x07b6, B:350:0x07bc, B:352:0x07c3, B:354:0x07cd, B:356:0x07d3, B:358:0x07e1, B:360:0x07e7, B:362:0x07ef, B:364:0x07f5, B:366:0x07fd, B:368:0x0804), top: B:584:0x065b }] */
    /* JADX WARN: Code duplicated, block: B:408:0x0958 A[Catch: all -> 0x0af9, TryCatch #2 {all -> 0x0af9, blocks: (B:281:0x065b, B:285:0x06b0, B:287:0x06b6, B:289:0x06c0, B:291:0x06c6, B:293:0x06cd, B:295:0x06d7, B:297:0x06dd, B:299:0x06eb, B:301:0x06f1, B:303:0x06f9, B:305:0x0700, B:369:0x0810, B:371:0x0818, B:373:0x0822, B:375:0x0829, B:377:0x082f, B:480:0x0ae1, B:378:0x0859, B:380:0x086e, B:382:0x0878, B:384:0x087f, B:386:0x0885, B:388:0x088f, B:390:0x0898, B:393:0x08bc, B:395:0x08fc, B:397:0x0902, B:398:0x090a, B:400:0x0910, B:401:0x093b, B:404:0x0945, B:406:0x094a, B:408:0x0958, B:410:0x095e, B:412:0x0965, B:414:0x0969, B:417:0x0970, B:419:0x097b, B:420:0x0986, B:422:0x0997, B:424:0x09a1, B:426:0x09ae, B:428:0x09b9, B:430:0x09c6, B:432:0x09d1, B:434:0x09de, B:436:0x09e9, B:438:0x09f6, B:439:0x09fa, B:441:0x0a0b, B:446:0x0a18, B:448:0x0a25, B:453:0x0a32, B:455:0x0a56, B:457:0x0a5c, B:459:0x0a64, B:461:0x0a6b, B:463:0x0a93, B:465:0x0a99, B:467:0x0aa1, B:469:0x0aa8, B:471:0x0ab9, B:473:0x0abf, B:475:0x0ac7, B:476:0x0acb, B:479:0x0add, B:307:0x070f, B:309:0x0715, B:311:0x071f, B:313:0x0725, B:315:0x072d, B:317:0x0733, B:319:0x073a, B:321:0x0744, B:323:0x074a, B:325:0x0752, B:327:0x0758, B:329:0x0766, B:331:0x076c, B:333:0x0774, B:335:0x077a, B:337:0x0782, B:339:0x0789, B:340:0x0795, B:342:0x079f, B:344:0x07a6, B:346:0x07ac, B:348:0x07b6, B:350:0x07bc, B:352:0x07c3, B:354:0x07cd, B:356:0x07d3, B:358:0x07e1, B:360:0x07e7, B:362:0x07ef, B:364:0x07f5, B:366:0x07fd, B:368:0x0804), top: B:584:0x065b }] */
    /* JADX WARN: Code duplicated, block: B:411:0x0963  */
    /* JADX WARN: Code duplicated, block: B:414:0x0969 A[Catch: all -> 0x0af9, TryCatch #2 {all -> 0x0af9, blocks: (B:281:0x065b, B:285:0x06b0, B:287:0x06b6, B:289:0x06c0, B:291:0x06c6, B:293:0x06cd, B:295:0x06d7, B:297:0x06dd, B:299:0x06eb, B:301:0x06f1, B:303:0x06f9, B:305:0x0700, B:369:0x0810, B:371:0x0818, B:373:0x0822, B:375:0x0829, B:377:0x082f, B:480:0x0ae1, B:378:0x0859, B:380:0x086e, B:382:0x0878, B:384:0x087f, B:386:0x0885, B:388:0x088f, B:390:0x0898, B:393:0x08bc, B:395:0x08fc, B:397:0x0902, B:398:0x090a, B:400:0x0910, B:401:0x093b, B:404:0x0945, B:406:0x094a, B:408:0x0958, B:410:0x095e, B:412:0x0965, B:414:0x0969, B:417:0x0970, B:419:0x097b, B:420:0x0986, B:422:0x0997, B:424:0x09a1, B:426:0x09ae, B:428:0x09b9, B:430:0x09c6, B:432:0x09d1, B:434:0x09de, B:436:0x09e9, B:438:0x09f6, B:439:0x09fa, B:441:0x0a0b, B:446:0x0a18, B:448:0x0a25, B:453:0x0a32, B:455:0x0a56, B:457:0x0a5c, B:459:0x0a64, B:461:0x0a6b, B:463:0x0a93, B:465:0x0a99, B:467:0x0aa1, B:469:0x0aa8, B:471:0x0ab9, B:473:0x0abf, B:475:0x0ac7, B:476:0x0acb, B:479:0x0add, B:307:0x070f, B:309:0x0715, B:311:0x071f, B:313:0x0725, B:315:0x072d, B:317:0x0733, B:319:0x073a, B:321:0x0744, B:323:0x074a, B:325:0x0752, B:327:0x0758, B:329:0x0766, B:331:0x076c, B:333:0x0774, B:335:0x077a, B:337:0x0782, B:339:0x0789, B:340:0x0795, B:342:0x079f, B:344:0x07a6, B:346:0x07ac, B:348:0x07b6, B:350:0x07bc, B:352:0x07c3, B:354:0x07cd, B:356:0x07d3, B:358:0x07e1, B:360:0x07e7, B:362:0x07ef, B:364:0x07f5, B:366:0x07fd, B:368:0x0804), top: B:584:0x065b }] */
    /* JADX WARN: Code duplicated, block: B:415:0x096c  */
    /* JADX WARN: Code duplicated, block: B:417:0x0970 A[Catch: all -> 0x0af9, TryCatch #2 {all -> 0x0af9, blocks: (B:281:0x065b, B:285:0x06b0, B:287:0x06b6, B:289:0x06c0, B:291:0x06c6, B:293:0x06cd, B:295:0x06d7, B:297:0x06dd, B:299:0x06eb, B:301:0x06f1, B:303:0x06f9, B:305:0x0700, B:369:0x0810, B:371:0x0818, B:373:0x0822, B:375:0x0829, B:377:0x082f, B:480:0x0ae1, B:378:0x0859, B:380:0x086e, B:382:0x0878, B:384:0x087f, B:386:0x0885, B:388:0x088f, B:390:0x0898, B:393:0x08bc, B:395:0x08fc, B:397:0x0902, B:398:0x090a, B:400:0x0910, B:401:0x093b, B:404:0x0945, B:406:0x094a, B:408:0x0958, B:410:0x095e, B:412:0x0965, B:414:0x0969, B:417:0x0970, B:419:0x097b, B:420:0x0986, B:422:0x0997, B:424:0x09a1, B:426:0x09ae, B:428:0x09b9, B:430:0x09c6, B:432:0x09d1, B:434:0x09de, B:436:0x09e9, B:438:0x09f6, B:439:0x09fa, B:441:0x0a0b, B:446:0x0a18, B:448:0x0a25, B:453:0x0a32, B:455:0x0a56, B:457:0x0a5c, B:459:0x0a64, B:461:0x0a6b, B:463:0x0a93, B:465:0x0a99, B:467:0x0aa1, B:469:0x0aa8, B:471:0x0ab9, B:473:0x0abf, B:475:0x0ac7, B:476:0x0acb, B:479:0x0add, B:307:0x070f, B:309:0x0715, B:311:0x071f, B:313:0x0725, B:315:0x072d, B:317:0x0733, B:319:0x073a, B:321:0x0744, B:323:0x074a, B:325:0x0752, B:327:0x0758, B:329:0x0766, B:331:0x076c, B:333:0x0774, B:335:0x077a, B:337:0x0782, B:339:0x0789, B:340:0x0795, B:342:0x079f, B:344:0x07a6, B:346:0x07ac, B:348:0x07b6, B:350:0x07bc, B:352:0x07c3, B:354:0x07cd, B:356:0x07d3, B:358:0x07e1, B:360:0x07e7, B:362:0x07ef, B:364:0x07f5, B:366:0x07fd, B:368:0x0804), top: B:584:0x065b }] */
    /* JADX WARN: Code duplicated, block: B:418:0x0979  */
    /* JADX WARN: Code duplicated, block: B:422:0x0997 A[Catch: all -> 0x0af9, TryCatch #2 {all -> 0x0af9, blocks: (B:281:0x065b, B:285:0x06b0, B:287:0x06b6, B:289:0x06c0, B:291:0x06c6, B:293:0x06cd, B:295:0x06d7, B:297:0x06dd, B:299:0x06eb, B:301:0x06f1, B:303:0x06f9, B:305:0x0700, B:369:0x0810, B:371:0x0818, B:373:0x0822, B:375:0x0829, B:377:0x082f, B:480:0x0ae1, B:378:0x0859, B:380:0x086e, B:382:0x0878, B:384:0x087f, B:386:0x0885, B:388:0x088f, B:390:0x0898, B:393:0x08bc, B:395:0x08fc, B:397:0x0902, B:398:0x090a, B:400:0x0910, B:401:0x093b, B:404:0x0945, B:406:0x094a, B:408:0x0958, B:410:0x095e, B:412:0x0965, B:414:0x0969, B:417:0x0970, B:419:0x097b, B:420:0x0986, B:422:0x0997, B:424:0x09a1, B:426:0x09ae, B:428:0x09b9, B:430:0x09c6, B:432:0x09d1, B:434:0x09de, B:436:0x09e9, B:438:0x09f6, B:439:0x09fa, B:441:0x0a0b, B:446:0x0a18, B:448:0x0a25, B:453:0x0a32, B:455:0x0a56, B:457:0x0a5c, B:459:0x0a64, B:461:0x0a6b, B:463:0x0a93, B:465:0x0a99, B:467:0x0aa1, B:469:0x0aa8, B:471:0x0ab9, B:473:0x0abf, B:475:0x0ac7, B:476:0x0acb, B:479:0x0add, B:307:0x070f, B:309:0x0715, B:311:0x071f, B:313:0x0725, B:315:0x072d, B:317:0x0733, B:319:0x073a, B:321:0x0744, B:323:0x074a, B:325:0x0752, B:327:0x0758, B:329:0x0766, B:331:0x076c, B:333:0x0774, B:335:0x077a, B:337:0x0782, B:339:0x0789, B:340:0x0795, B:342:0x079f, B:344:0x07a6, B:346:0x07ac, B:348:0x07b6, B:350:0x07bc, B:352:0x07c3, B:354:0x07cd, B:356:0x07d3, B:358:0x07e1, B:360:0x07e7, B:362:0x07ef, B:364:0x07f5, B:366:0x07fd, B:368:0x0804), top: B:584:0x065b }] */
    /* JADX WARN: Code duplicated, block: B:423:0x099e  */
    /* JADX WARN: Code duplicated, block: B:426:0x09ae A[Catch: all -> 0x0af9, TryCatch #2 {all -> 0x0af9, blocks: (B:281:0x065b, B:285:0x06b0, B:287:0x06b6, B:289:0x06c0, B:291:0x06c6, B:293:0x06cd, B:295:0x06d7, B:297:0x06dd, B:299:0x06eb, B:301:0x06f1, B:303:0x06f9, B:305:0x0700, B:369:0x0810, B:371:0x0818, B:373:0x0822, B:375:0x0829, B:377:0x082f, B:480:0x0ae1, B:378:0x0859, B:380:0x086e, B:382:0x0878, B:384:0x087f, B:386:0x0885, B:388:0x088f, B:390:0x0898, B:393:0x08bc, B:395:0x08fc, B:397:0x0902, B:398:0x090a, B:400:0x0910, B:401:0x093b, B:404:0x0945, B:406:0x094a, B:408:0x0958, B:410:0x095e, B:412:0x0965, B:414:0x0969, B:417:0x0970, B:419:0x097b, B:420:0x0986, B:422:0x0997, B:424:0x09a1, B:426:0x09ae, B:428:0x09b9, B:430:0x09c6, B:432:0x09d1, B:434:0x09de, B:436:0x09e9, B:438:0x09f6, B:439:0x09fa, B:441:0x0a0b, B:446:0x0a18, B:448:0x0a25, B:453:0x0a32, B:455:0x0a56, B:457:0x0a5c, B:459:0x0a64, B:461:0x0a6b, B:463:0x0a93, B:465:0x0a99, B:467:0x0aa1, B:469:0x0aa8, B:471:0x0ab9, B:473:0x0abf, B:475:0x0ac7, B:476:0x0acb, B:479:0x0add, B:307:0x070f, B:309:0x0715, B:311:0x071f, B:313:0x0725, B:315:0x072d, B:317:0x0733, B:319:0x073a, B:321:0x0744, B:323:0x074a, B:325:0x0752, B:327:0x0758, B:329:0x0766, B:331:0x076c, B:333:0x0774, B:335:0x077a, B:337:0x0782, B:339:0x0789, B:340:0x0795, B:342:0x079f, B:344:0x07a6, B:346:0x07ac, B:348:0x07b6, B:350:0x07bc, B:352:0x07c3, B:354:0x07cd, B:356:0x07d3, B:358:0x07e1, B:360:0x07e7, B:362:0x07ef, B:364:0x07f5, B:366:0x07fd, B:368:0x0804), top: B:584:0x065b }] */
    /* JADX WARN: Code duplicated, block: B:427:0x09b5  */
    /* JADX WARN: Code duplicated, block: B:430:0x09c6 A[Catch: all -> 0x0af9, TryCatch #2 {all -> 0x0af9, blocks: (B:281:0x065b, B:285:0x06b0, B:287:0x06b6, B:289:0x06c0, B:291:0x06c6, B:293:0x06cd, B:295:0x06d7, B:297:0x06dd, B:299:0x06eb, B:301:0x06f1, B:303:0x06f9, B:305:0x0700, B:369:0x0810, B:371:0x0818, B:373:0x0822, B:375:0x0829, B:377:0x082f, B:480:0x0ae1, B:378:0x0859, B:380:0x086e, B:382:0x0878, B:384:0x087f, B:386:0x0885, B:388:0x088f, B:390:0x0898, B:393:0x08bc, B:395:0x08fc, B:397:0x0902, B:398:0x090a, B:400:0x0910, B:401:0x093b, B:404:0x0945, B:406:0x094a, B:408:0x0958, B:410:0x095e, B:412:0x0965, B:414:0x0969, B:417:0x0970, B:419:0x097b, B:420:0x0986, B:422:0x0997, B:424:0x09a1, B:426:0x09ae, B:428:0x09b9, B:430:0x09c6, B:432:0x09d1, B:434:0x09de, B:436:0x09e9, B:438:0x09f6, B:439:0x09fa, B:441:0x0a0b, B:446:0x0a18, B:448:0x0a25, B:453:0x0a32, B:455:0x0a56, B:457:0x0a5c, B:459:0x0a64, B:461:0x0a6b, B:463:0x0a93, B:465:0x0a99, B:467:0x0aa1, B:469:0x0aa8, B:471:0x0ab9, B:473:0x0abf, B:475:0x0ac7, B:476:0x0acb, B:479:0x0add, B:307:0x070f, B:309:0x0715, B:311:0x071f, B:313:0x0725, B:315:0x072d, B:317:0x0733, B:319:0x073a, B:321:0x0744, B:323:0x074a, B:325:0x0752, B:327:0x0758, B:329:0x0766, B:331:0x076c, B:333:0x0774, B:335:0x077a, B:337:0x0782, B:339:0x0789, B:340:0x0795, B:342:0x079f, B:344:0x07a6, B:346:0x07ac, B:348:0x07b6, B:350:0x07bc, B:352:0x07c3, B:354:0x07cd, B:356:0x07d3, B:358:0x07e1, B:360:0x07e7, B:362:0x07ef, B:364:0x07f5, B:366:0x07fd, B:368:0x0804), top: B:584:0x065b }] */
    /* JADX WARN: Code duplicated, block: B:431:0x09cd  */
    /* JADX WARN: Code duplicated, block: B:434:0x09de A[Catch: all -> 0x0af9, TryCatch #2 {all -> 0x0af9, blocks: (B:281:0x065b, B:285:0x06b0, B:287:0x06b6, B:289:0x06c0, B:291:0x06c6, B:293:0x06cd, B:295:0x06d7, B:297:0x06dd, B:299:0x06eb, B:301:0x06f1, B:303:0x06f9, B:305:0x0700, B:369:0x0810, B:371:0x0818, B:373:0x0822, B:375:0x0829, B:377:0x082f, B:480:0x0ae1, B:378:0x0859, B:380:0x086e, B:382:0x0878, B:384:0x087f, B:386:0x0885, B:388:0x088f, B:390:0x0898, B:393:0x08bc, B:395:0x08fc, B:397:0x0902, B:398:0x090a, B:400:0x0910, B:401:0x093b, B:404:0x0945, B:406:0x094a, B:408:0x0958, B:410:0x095e, B:412:0x0965, B:414:0x0969, B:417:0x0970, B:419:0x097b, B:420:0x0986, B:422:0x0997, B:424:0x09a1, B:426:0x09ae, B:428:0x09b9, B:430:0x09c6, B:432:0x09d1, B:434:0x09de, B:436:0x09e9, B:438:0x09f6, B:439:0x09fa, B:441:0x0a0b, B:446:0x0a18, B:448:0x0a25, B:453:0x0a32, B:455:0x0a56, B:457:0x0a5c, B:459:0x0a64, B:461:0x0a6b, B:463:0x0a93, B:465:0x0a99, B:467:0x0aa1, B:469:0x0aa8, B:471:0x0ab9, B:473:0x0abf, B:475:0x0ac7, B:476:0x0acb, B:479:0x0add, B:307:0x070f, B:309:0x0715, B:311:0x071f, B:313:0x0725, B:315:0x072d, B:317:0x0733, B:319:0x073a, B:321:0x0744, B:323:0x074a, B:325:0x0752, B:327:0x0758, B:329:0x0766, B:331:0x076c, B:333:0x0774, B:335:0x077a, B:337:0x0782, B:339:0x0789, B:340:0x0795, B:342:0x079f, B:344:0x07a6, B:346:0x07ac, B:348:0x07b6, B:350:0x07bc, B:352:0x07c3, B:354:0x07cd, B:356:0x07d3, B:358:0x07e1, B:360:0x07e7, B:362:0x07ef, B:364:0x07f5, B:366:0x07fd, B:368:0x0804), top: B:584:0x065b }] */
    /* JADX WARN: Code duplicated, block: B:435:0x09e5  */
    /* JADX WARN: Code duplicated, block: B:438:0x09f6 A[Catch: all -> 0x0af9, TryCatch #2 {all -> 0x0af9, blocks: (B:281:0x065b, B:285:0x06b0, B:287:0x06b6, B:289:0x06c0, B:291:0x06c6, B:293:0x06cd, B:295:0x06d7, B:297:0x06dd, B:299:0x06eb, B:301:0x06f1, B:303:0x06f9, B:305:0x0700, B:369:0x0810, B:371:0x0818, B:373:0x0822, B:375:0x0829, B:377:0x082f, B:480:0x0ae1, B:378:0x0859, B:380:0x086e, B:382:0x0878, B:384:0x087f, B:386:0x0885, B:388:0x088f, B:390:0x0898, B:393:0x08bc, B:395:0x08fc, B:397:0x0902, B:398:0x090a, B:400:0x0910, B:401:0x093b, B:404:0x0945, B:406:0x094a, B:408:0x0958, B:410:0x095e, B:412:0x0965, B:414:0x0969, B:417:0x0970, B:419:0x097b, B:420:0x0986, B:422:0x0997, B:424:0x09a1, B:426:0x09ae, B:428:0x09b9, B:430:0x09c6, B:432:0x09d1, B:434:0x09de, B:436:0x09e9, B:438:0x09f6, B:439:0x09fa, B:441:0x0a0b, B:446:0x0a18, B:448:0x0a25, B:453:0x0a32, B:455:0x0a56, B:457:0x0a5c, B:459:0x0a64, B:461:0x0a6b, B:463:0x0a93, B:465:0x0a99, B:467:0x0aa1, B:469:0x0aa8, B:471:0x0ab9, B:473:0x0abf, B:475:0x0ac7, B:476:0x0acb, B:479:0x0add, B:307:0x070f, B:309:0x0715, B:311:0x071f, B:313:0x0725, B:315:0x072d, B:317:0x0733, B:319:0x073a, B:321:0x0744, B:323:0x074a, B:325:0x0752, B:327:0x0758, B:329:0x0766, B:331:0x076c, B:333:0x0774, B:335:0x077a, B:337:0x0782, B:339:0x0789, B:340:0x0795, B:342:0x079f, B:344:0x07a6, B:346:0x07ac, B:348:0x07b6, B:350:0x07bc, B:352:0x07c3, B:354:0x07cd, B:356:0x07d3, B:358:0x07e1, B:360:0x07e7, B:362:0x07ef, B:364:0x07f5, B:366:0x07fd, B:368:0x0804), top: B:584:0x065b }] */
    /* JADX WARN: Code duplicated, block: B:441:0x0a0b A[Catch: all -> 0x0af9, TryCatch #2 {all -> 0x0af9, blocks: (B:281:0x065b, B:285:0x06b0, B:287:0x06b6, B:289:0x06c0, B:291:0x06c6, B:293:0x06cd, B:295:0x06d7, B:297:0x06dd, B:299:0x06eb, B:301:0x06f1, B:303:0x06f9, B:305:0x0700, B:369:0x0810, B:371:0x0818, B:373:0x0822, B:375:0x0829, B:377:0x082f, B:480:0x0ae1, B:378:0x0859, B:380:0x086e, B:382:0x0878, B:384:0x087f, B:386:0x0885, B:388:0x088f, B:390:0x0898, B:393:0x08bc, B:395:0x08fc, B:397:0x0902, B:398:0x090a, B:400:0x0910, B:401:0x093b, B:404:0x0945, B:406:0x094a, B:408:0x0958, B:410:0x095e, B:412:0x0965, B:414:0x0969, B:417:0x0970, B:419:0x097b, B:420:0x0986, B:422:0x0997, B:424:0x09a1, B:426:0x09ae, B:428:0x09b9, B:430:0x09c6, B:432:0x09d1, B:434:0x09de, B:436:0x09e9, B:438:0x09f6, B:439:0x09fa, B:441:0x0a0b, B:446:0x0a18, B:448:0x0a25, B:453:0x0a32, B:455:0x0a56, B:457:0x0a5c, B:459:0x0a64, B:461:0x0a6b, B:463:0x0a93, B:465:0x0a99, B:467:0x0aa1, B:469:0x0aa8, B:471:0x0ab9, B:473:0x0abf, B:475:0x0ac7, B:476:0x0acb, B:479:0x0add, B:307:0x070f, B:309:0x0715, B:311:0x071f, B:313:0x0725, B:315:0x072d, B:317:0x0733, B:319:0x073a, B:321:0x0744, B:323:0x074a, B:325:0x0752, B:327:0x0758, B:329:0x0766, B:331:0x076c, B:333:0x0774, B:335:0x077a, B:337:0x0782, B:339:0x0789, B:340:0x0795, B:342:0x079f, B:344:0x07a6, B:346:0x07ac, B:348:0x07b6, B:350:0x07bc, B:352:0x07c3, B:354:0x07cd, B:356:0x07d3, B:358:0x07e1, B:360:0x07e7, B:362:0x07ef, B:364:0x07f5, B:366:0x07fd, B:368:0x0804), top: B:584:0x065b }] */
    /* JADX WARN: Code duplicated, block: B:445:0x0a15  */
    /* JADX WARN: Code duplicated, block: B:448:0x0a25 A[Catch: all -> 0x0af9, TryCatch #2 {all -> 0x0af9, blocks: (B:281:0x065b, B:285:0x06b0, B:287:0x06b6, B:289:0x06c0, B:291:0x06c6, B:293:0x06cd, B:295:0x06d7, B:297:0x06dd, B:299:0x06eb, B:301:0x06f1, B:303:0x06f9, B:305:0x0700, B:369:0x0810, B:371:0x0818, B:373:0x0822, B:375:0x0829, B:377:0x082f, B:480:0x0ae1, B:378:0x0859, B:380:0x086e, B:382:0x0878, B:384:0x087f, B:386:0x0885, B:388:0x088f, B:390:0x0898, B:393:0x08bc, B:395:0x08fc, B:397:0x0902, B:398:0x090a, B:400:0x0910, B:401:0x093b, B:404:0x0945, B:406:0x094a, B:408:0x0958, B:410:0x095e, B:412:0x0965, B:414:0x0969, B:417:0x0970, B:419:0x097b, B:420:0x0986, B:422:0x0997, B:424:0x09a1, B:426:0x09ae, B:428:0x09b9, B:430:0x09c6, B:432:0x09d1, B:434:0x09de, B:436:0x09e9, B:438:0x09f6, B:439:0x09fa, B:441:0x0a0b, B:446:0x0a18, B:448:0x0a25, B:453:0x0a32, B:455:0x0a56, B:457:0x0a5c, B:459:0x0a64, B:461:0x0a6b, B:463:0x0a93, B:465:0x0a99, B:467:0x0aa1, B:469:0x0aa8, B:471:0x0ab9, B:473:0x0abf, B:475:0x0ac7, B:476:0x0acb, B:479:0x0add, B:307:0x070f, B:309:0x0715, B:311:0x071f, B:313:0x0725, B:315:0x072d, B:317:0x0733, B:319:0x073a, B:321:0x0744, B:323:0x074a, B:325:0x0752, B:327:0x0758, B:329:0x0766, B:331:0x076c, B:333:0x0774, B:335:0x077a, B:337:0x0782, B:339:0x0789, B:340:0x0795, B:342:0x079f, B:344:0x07a6, B:346:0x07ac, B:348:0x07b6, B:350:0x07bc, B:352:0x07c3, B:354:0x07cd, B:356:0x07d3, B:358:0x07e1, B:360:0x07e7, B:362:0x07ef, B:364:0x07f5, B:366:0x07fd, B:368:0x0804), top: B:584:0x065b }] */
    /* JADX WARN: Code duplicated, block: B:452:0x0a2f  */
    /* JADX WARN: Code duplicated, block: B:455:0x0a56 A[Catch: all -> 0x0af9, TryCatch #2 {all -> 0x0af9, blocks: (B:281:0x065b, B:285:0x06b0, B:287:0x06b6, B:289:0x06c0, B:291:0x06c6, B:293:0x06cd, B:295:0x06d7, B:297:0x06dd, B:299:0x06eb, B:301:0x06f1, B:303:0x06f9, B:305:0x0700, B:369:0x0810, B:371:0x0818, B:373:0x0822, B:375:0x0829, B:377:0x082f, B:480:0x0ae1, B:378:0x0859, B:380:0x086e, B:382:0x0878, B:384:0x087f, B:386:0x0885, B:388:0x088f, B:390:0x0898, B:393:0x08bc, B:395:0x08fc, B:397:0x0902, B:398:0x090a, B:400:0x0910, B:401:0x093b, B:404:0x0945, B:406:0x094a, B:408:0x0958, B:410:0x095e, B:412:0x0965, B:414:0x0969, B:417:0x0970, B:419:0x097b, B:420:0x0986, B:422:0x0997, B:424:0x09a1, B:426:0x09ae, B:428:0x09b9, B:430:0x09c6, B:432:0x09d1, B:434:0x09de, B:436:0x09e9, B:438:0x09f6, B:439:0x09fa, B:441:0x0a0b, B:446:0x0a18, B:448:0x0a25, B:453:0x0a32, B:455:0x0a56, B:457:0x0a5c, B:459:0x0a64, B:461:0x0a6b, B:463:0x0a93, B:465:0x0a99, B:467:0x0aa1, B:469:0x0aa8, B:471:0x0ab9, B:473:0x0abf, B:475:0x0ac7, B:476:0x0acb, B:479:0x0add, B:307:0x070f, B:309:0x0715, B:311:0x071f, B:313:0x0725, B:315:0x072d, B:317:0x0733, B:319:0x073a, B:321:0x0744, B:323:0x074a, B:325:0x0752, B:327:0x0758, B:329:0x0766, B:331:0x076c, B:333:0x0774, B:335:0x077a, B:337:0x0782, B:339:0x0789, B:340:0x0795, B:342:0x079f, B:344:0x07a6, B:346:0x07ac, B:348:0x07b6, B:350:0x07bc, B:352:0x07c3, B:354:0x07cd, B:356:0x07d3, B:358:0x07e1, B:360:0x07e7, B:362:0x07ef, B:364:0x07f5, B:366:0x07fd, B:368:0x0804), top: B:584:0x065b }] */
    /* JADX WARN: Code duplicated, block: B:460:0x0a69  */
    /* JADX WARN: Code duplicated, block: B:463:0x0a93 A[Catch: all -> 0x0af9, TryCatch #2 {all -> 0x0af9, blocks: (B:281:0x065b, B:285:0x06b0, B:287:0x06b6, B:289:0x06c0, B:291:0x06c6, B:293:0x06cd, B:295:0x06d7, B:297:0x06dd, B:299:0x06eb, B:301:0x06f1, B:303:0x06f9, B:305:0x0700, B:369:0x0810, B:371:0x0818, B:373:0x0822, B:375:0x0829, B:377:0x082f, B:480:0x0ae1, B:378:0x0859, B:380:0x086e, B:382:0x0878, B:384:0x087f, B:386:0x0885, B:388:0x088f, B:390:0x0898, B:393:0x08bc, B:395:0x08fc, B:397:0x0902, B:398:0x090a, B:400:0x0910, B:401:0x093b, B:404:0x0945, B:406:0x094a, B:408:0x0958, B:410:0x095e, B:412:0x0965, B:414:0x0969, B:417:0x0970, B:419:0x097b, B:420:0x0986, B:422:0x0997, B:424:0x09a1, B:426:0x09ae, B:428:0x09b9, B:430:0x09c6, B:432:0x09d1, B:434:0x09de, B:436:0x09e9, B:438:0x09f6, B:439:0x09fa, B:441:0x0a0b, B:446:0x0a18, B:448:0x0a25, B:453:0x0a32, B:455:0x0a56, B:457:0x0a5c, B:459:0x0a64, B:461:0x0a6b, B:463:0x0a93, B:465:0x0a99, B:467:0x0aa1, B:469:0x0aa8, B:471:0x0ab9, B:473:0x0abf, B:475:0x0ac7, B:476:0x0acb, B:479:0x0add, B:307:0x070f, B:309:0x0715, B:311:0x071f, B:313:0x0725, B:315:0x072d, B:317:0x0733, B:319:0x073a, B:321:0x0744, B:323:0x074a, B:325:0x0752, B:327:0x0758, B:329:0x0766, B:331:0x076c, B:333:0x0774, B:335:0x077a, B:337:0x0782, B:339:0x0789, B:340:0x0795, B:342:0x079f, B:344:0x07a6, B:346:0x07ac, B:348:0x07b6, B:350:0x07bc, B:352:0x07c3, B:354:0x07cd, B:356:0x07d3, B:358:0x07e1, B:360:0x07e7, B:362:0x07ef, B:364:0x07f5, B:366:0x07fd, B:368:0x0804), top: B:584:0x065b }] */
    /* JADX WARN: Code duplicated, block: B:468:0x0aa6  */
    /* JADX WARN: Code duplicated, block: B:471:0x0ab9 A[Catch: all -> 0x0af9, TryCatch #2 {all -> 0x0af9, blocks: (B:281:0x065b, B:285:0x06b0, B:287:0x06b6, B:289:0x06c0, B:291:0x06c6, B:293:0x06cd, B:295:0x06d7, B:297:0x06dd, B:299:0x06eb, B:301:0x06f1, B:303:0x06f9, B:305:0x0700, B:369:0x0810, B:371:0x0818, B:373:0x0822, B:375:0x0829, B:377:0x082f, B:480:0x0ae1, B:378:0x0859, B:380:0x086e, B:382:0x0878, B:384:0x087f, B:386:0x0885, B:388:0x088f, B:390:0x0898, B:393:0x08bc, B:395:0x08fc, B:397:0x0902, B:398:0x090a, B:400:0x0910, B:401:0x093b, B:404:0x0945, B:406:0x094a, B:408:0x0958, B:410:0x095e, B:412:0x0965, B:414:0x0969, B:417:0x0970, B:419:0x097b, B:420:0x0986, B:422:0x0997, B:424:0x09a1, B:426:0x09ae, B:428:0x09b9, B:430:0x09c6, B:432:0x09d1, B:434:0x09de, B:436:0x09e9, B:438:0x09f6, B:439:0x09fa, B:441:0x0a0b, B:446:0x0a18, B:448:0x0a25, B:453:0x0a32, B:455:0x0a56, B:457:0x0a5c, B:459:0x0a64, B:461:0x0a6b, B:463:0x0a93, B:465:0x0a99, B:467:0x0aa1, B:469:0x0aa8, B:471:0x0ab9, B:473:0x0abf, B:475:0x0ac7, B:476:0x0acb, B:479:0x0add, B:307:0x070f, B:309:0x0715, B:311:0x071f, B:313:0x0725, B:315:0x072d, B:317:0x0733, B:319:0x073a, B:321:0x0744, B:323:0x074a, B:325:0x0752, B:327:0x0758, B:329:0x0766, B:331:0x076c, B:333:0x0774, B:335:0x077a, B:337:0x0782, B:339:0x0789, B:340:0x0795, B:342:0x079f, B:344:0x07a6, B:346:0x07ac, B:348:0x07b6, B:350:0x07bc, B:352:0x07c3, B:354:0x07cd, B:356:0x07d3, B:358:0x07e1, B:360:0x07e7, B:362:0x07ef, B:364:0x07f5, B:366:0x07fd, B:368:0x0804), top: B:584:0x065b }] */
    /* JADX WARN: Code duplicated, block: B:478:0x0adc  */
    /* JADX WARN: Code duplicated, block: B:479:0x0add A[Catch: all -> 0x0af9, TryCatch #2 {all -> 0x0af9, blocks: (B:281:0x065b, B:285:0x06b0, B:287:0x06b6, B:289:0x06c0, B:291:0x06c6, B:293:0x06cd, B:295:0x06d7, B:297:0x06dd, B:299:0x06eb, B:301:0x06f1, B:303:0x06f9, B:305:0x0700, B:369:0x0810, B:371:0x0818, B:373:0x0822, B:375:0x0829, B:377:0x082f, B:480:0x0ae1, B:378:0x0859, B:380:0x086e, B:382:0x0878, B:384:0x087f, B:386:0x0885, B:388:0x088f, B:390:0x0898, B:393:0x08bc, B:395:0x08fc, B:397:0x0902, B:398:0x090a, B:400:0x0910, B:401:0x093b, B:404:0x0945, B:406:0x094a, B:408:0x0958, B:410:0x095e, B:412:0x0965, B:414:0x0969, B:417:0x0970, B:419:0x097b, B:420:0x0986, B:422:0x0997, B:424:0x09a1, B:426:0x09ae, B:428:0x09b9, B:430:0x09c6, B:432:0x09d1, B:434:0x09de, B:436:0x09e9, B:438:0x09f6, B:439:0x09fa, B:441:0x0a0b, B:446:0x0a18, B:448:0x0a25, B:453:0x0a32, B:455:0x0a56, B:457:0x0a5c, B:459:0x0a64, B:461:0x0a6b, B:463:0x0a93, B:465:0x0a99, B:467:0x0aa1, B:469:0x0aa8, B:471:0x0ab9, B:473:0x0abf, B:475:0x0ac7, B:476:0x0acb, B:479:0x0add, B:307:0x070f, B:309:0x0715, B:311:0x071f, B:313:0x0725, B:315:0x072d, B:317:0x0733, B:319:0x073a, B:321:0x0744, B:323:0x074a, B:325:0x0752, B:327:0x0758, B:329:0x0766, B:331:0x076c, B:333:0x0774, B:335:0x077a, B:337:0x0782, B:339:0x0789, B:340:0x0795, B:342:0x079f, B:344:0x07a6, B:346:0x07ac, B:348:0x07b6, B:350:0x07bc, B:352:0x07c3, B:354:0x07cd, B:356:0x07d3, B:358:0x07e1, B:360:0x07e7, B:362:0x07ef, B:364:0x07f5, B:366:0x07fd, B:368:0x0804), top: B:584:0x065b }] */
    /* JADX WARN: Code duplicated, block: B:543:0x0d75  */
    /* JADX WARN: Code duplicated, block: B:546:0x0d8d  */
    /* JADX WARN: Code duplicated, block: B:549:0x0d93  */
    /* JADX WARN: Code duplicated, block: B:551:0x0da9  */
    /* JADX WARN: Code duplicated, block: B:553:0x0daf  */
    /* JADX WARN: Code duplicated, block: B:554:0x0dc0  */
    /* JADX WARN: Code duplicated, block: B:556:0x0dc4  */
    /* JADX WARN: Code duplicated, block: B:558:0x0de5  */
    /* JADX WARN: Code duplicated, block: B:561:0x0e1e  */
    /* JADX WARN: Code duplicated, block: B:564:0x0e31  */
    /* JADX WARN: Code duplicated, block: B:573:0x0e7a  */
    /* JADX WARN: Code duplicated, block: B:590:0x0e54 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:591:0x0e3f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:592:0x0e58 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:594:0x0e2b A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:549:0x0d93, please report this as an issue */
    public void OooO00o(String str, PointAnalyseType target, String str2, Bundle bundle) {
        boolean z10;
        boolean z11;
        long j11;
        long jCurrentTimeMillis;
        long j12;
        long jCurrentTimeMillis2;
        long j13;
        long jCurrentTimeMillis3;
        String str3;
        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O0;
        Map<String, Long> mapOooO0O0;
        boolean z12;
        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O1;
        Map<String, Long> mapOooO00o;
        Map<String, OooOO0> mapOooOO0;
        OooOO0 oooOO0;
        Map<String, Long> mapOooO0O1;
        Long l11;
        Map<String, OooOO0> mapOooOO1;
        OooOO0 oooOO1;
        Map<String, Long> mapOooO0O2;
        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O2;
        Map<String, OooOO0> mapOooOO2;
        OooOO0 oooOO2;
        Map<String, Long> mapOooO00o2;
        Map<String, OooOO0> mapOooOO3;
        OooOO0 oooOO3;
        Map<String, Long> mapOooO0O3;
        Long l12;
        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O3;
        String strOooO0o;
        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O4;
        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O5;
        String str4;
        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O6;
        boolean zOooO;
        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O7;
        int iOooO0Oo;
        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O8;
        int iOooO0OO;
        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O9;
        int iOooOO0o;
        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O10;
        String strOooO0o0;
        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O11;
        String strOooOOO0;
        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O12;
        String strOooO0o1;
        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O13;
        String strOooO0o2;
        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O14;
        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O15;
        Map<String, OooOO0> mapOooOO4;
        OooOO0 oooOO4;
        Map<String, OooOO0> mapOooOO5;
        OooOO0 oooOO5;
        Map<String, OooOO0> mapOooOO6;
        OooOO0 oooOO6;
        App appFindApp;
        Context context;
        BaseActivity baseActivity;
        Boolean boolValueOf;
        AppContext appContext;
        Map<String, Long> mapOooO00o3;
        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O16;
        String strOooO0o3;
        Map<String, Long> mapOooO0O4;
        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O17;
        Map<String, Long> mapOooO00o4;
        Map<String, Long> mapOooO0O5;
        Long l13;
        String str5;
        String str6;
        boolean z13;
        String strOooO0OO;
        String strOooO0o4;
        Map<String, OooOO0> mapOooOO7;
        Map<String, OooOO0> mapOooOO8;
        OooOO0 oooOO7;
        Map<String, OooOO0> mapOooOO9;
        OooOO0 oooOO8;
        Map<String, OooOO0> mapOooOO10;
        OooOO0 oooOO9;
        Map<String, OooOO0> mapOooOO11;
        Map<String, OooOO0> mapOooOO12;
        OooOO0 oooOO10;
        Map<String, OooOO0> mapOooOO13;
        OooOO0 oooOO11;
        Map<String, OooOO0> mapOooOO14;
        OooOO0 oooOO12;
        Map<String, OooOO0> mapOooOO15;
        String strOooO0o5;
        String strOooOOO1;
        Map<String, OooOO0> mapOooOO16;
        OooOO0 oooOO13;
        String str7;
        String str8;
        long j14;
        String str9;
        PointAnalyseType pointAnalyseType;
        String des;
        StringBuilder sb2;
        HashMap<String, Object> data;
        Iterator<T> it;
        Map.Entry entry;
        Object value;
        String str10 = str;
        String str11 = str2;
        String str12 = "chain_id_";
        Intrinsics.h(target, "target");
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            bundle2.putAll(bundle);
            Unit unit = Unit.f67061a;
        }
        String str13 = "miniapp_click";
        String strOooO0Oo = null;
        String str14 = "";
        switch (OooO0O0.OooO00o[target.ordinal()]) {
            case 1:
                str14 = "";
                str10 = str10;
                str11 = str11;
                z10 = false;
                z11 = true;
                bundle2 = bundle2;
                j11 = 0;
                this.OooO00o = System.currentTimeMillis();
                this.OooO0O0 = 0L;
                Unit unit2 = Unit.f67061a;
                j12 = j11;
                str13 = str14;
                str7 = str13;
                j14 = j12;
                if (str11 != null || TextUtils.isEmpty(str2)) {
                    str9 = str14;
                } else {
                    str9 = "-信息:" + str11;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string = sb2.toString();
                ReportProxy reportProxy = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet = data.entrySet();
                    Intrinsics.g(setEntrySet, "it.entries");
                    it = setEntrySet.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str15 = (String) entry.getKey();
                            Object value2 = entry.getValue();
                            Intrinsics.f(value2, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str15, (String) value2);
                        } else if (value instanceof Long) {
                            String str16 = (String) entry.getKey();
                            Object value3 = entry.getValue();
                            Intrinsics.f(value3, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str16, ((Long) value3).longValue());
                        }
                    }
                    Unit unit3 = Unit.f67061a;
                }
                Unit unit4 = Unit.f67061a;
                reportProxy.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string, z10);
                a.a(pointAnalyseType, string);
                break;
            case 2:
                z10 = false;
                z11 = true;
                j11 = 0;
                jCurrentTimeMillis = System.currentTimeMillis() - this.OooO00o;
                Unit unit5 = Unit.f67061a;
                j12 = jCurrentTimeMillis;
                str13 = str14;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string2 = sb2.toString();
                ReportProxy reportProxy2 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string2);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet2 = data.entrySet();
                    Intrinsics.g(setEntrySet2, "it.entries");
                    it = setEntrySet2.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str17 = (String) entry.getKey();
                            Object value4 = entry.getValue();
                            Intrinsics.f(value4, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str17, (String) value4);
                        } else if (value instanceof Long) {
                            String str18 = (String) entry.getKey();
                            Object value5 = entry.getValue();
                            Intrinsics.f(value5, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str18, ((Long) value5).longValue());
                        }
                    }
                    Unit unit6 = Unit.f67061a;
                }
                Unit unit7 = Unit.f67061a;
                reportProxy2.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string2, z10);
                a.a(pointAnalyseType, string2);
                break;
            case 3:
                z10 = false;
                z11 = true;
                j11 = 0;
                jCurrentTimeMillis = System.currentTimeMillis() - this.OooO00o;
                Unit unit8 = Unit.f67061a;
                j12 = jCurrentTimeMillis;
                str13 = str14;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string3 = sb2.toString();
                ReportProxy reportProxy3 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string3);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet3 = data.entrySet();
                    Intrinsics.g(setEntrySet3, "it.entries");
                    it = setEntrySet3.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str19 = (String) entry.getKey();
                            Object value6 = entry.getValue();
                            Intrinsics.f(value6, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str19, (String) value6);
                        } else if (value instanceof Long) {
                            String str110 = (String) entry.getKey();
                            Object value7 = entry.getValue();
                            Intrinsics.f(value7, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str110, ((Long) value7).longValue());
                        }
                    }
                    Unit unit9 = Unit.f67061a;
                }
                Unit unit10 = Unit.f67061a;
                reportProxy3.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string3, z10);
                a.a(pointAnalyseType, string3);
                break;
            case 4:
                str14 = "";
                str10 = str10;
                str11 = str11;
                z10 = false;
                z11 = true;
                bundle2 = bundle2;
                j11 = 0;
                this.OooO0OO = true;
                this.OooO0O0 = System.currentTimeMillis();
                Unit unit11 = Unit.f67061a;
                j12 = j11;
                str13 = str14;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string4 = sb2.toString();
                ReportProxy reportProxy4 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string4);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet4 = data.entrySet();
                    Intrinsics.g(setEntrySet4, "it.entries");
                    it = setEntrySet4.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str111 = (String) entry.getKey();
                            Object value8 = entry.getValue();
                            Intrinsics.f(value8, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str111, (String) value8);
                        } else if (value instanceof Long) {
                            String str112 = (String) entry.getKey();
                            Object value9 = entry.getValue();
                            Intrinsics.f(value9, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str112, ((Long) value9).longValue());
                        }
                    }
                    Unit unit12 = Unit.f67061a;
                }
                Unit unit13 = Unit.f67061a;
                reportProxy4.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string4, z10);
                a.a(pointAnalyseType, string4);
                break;
            case 5:
                str14 = "";
                str10 = str10;
                str11 = str11;
                z10 = false;
                bundle2 = bundle2;
                j11 = 0;
                if (!this.OooO0OO) {
                    this.OooO0O0 = System.currentTimeMillis();
                }
                Unit unit14 = Unit.f67061a;
                z11 = true;
                j12 = j11;
                str13 = str14;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string5 = sb2.toString();
                ReportProxy reportProxy5 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string5);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet5 = data.entrySet();
                    Intrinsics.g(setEntrySet5, "it.entries");
                    it = setEntrySet5.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str113 = (String) entry.getKey();
                            Object value10 = entry.getValue();
                            Intrinsics.f(value10, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str113, (String) value10);
                        } else if (value instanceof Long) {
                            String str114 = (String) entry.getKey();
                            Object value11 = entry.getValue();
                            Intrinsics.f(value11, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str114, ((Long) value11).longValue());
                        }
                    }
                    Unit unit15 = Unit.f67061a;
                }
                Unit unit16 = Unit.f67061a;
                reportProxy5.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string5, z10);
                a.a(pointAnalyseType, string5);
                break;
            case 6:
                str14 = "";
                str10 = str10;
                str11 = str11;
                z10 = false;
                bundle2 = bundle2;
                this.OooO0OO = false;
                j11 = 0;
                if (this.OooO0O0 == 0) {
                    jCurrentTimeMillis2 = System.currentTimeMillis();
                    j13 = this.OooO00o;
                } else {
                    jCurrentTimeMillis2 = System.currentTimeMillis();
                    j13 = this.OooO0O0;
                }
                long j15 = jCurrentTimeMillis2 - j13;
                bundle2.putString("object_id", MsgShowStatus.STATUS_IMG_ERROR);
                bundle2.putString("render_time", String.valueOf(j15));
                Unit unit17 = Unit.f67061a;
                j12 = j15;
                str13 = "miniapp_exposure";
                z11 = true;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string6 = sb2.toString();
                ReportProxy reportProxy6 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string6);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet6 = data.entrySet();
                    Intrinsics.g(setEntrySet6, "it.entries");
                    it = setEntrySet6.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str115 = (String) entry.getKey();
                            Object value12 = entry.getValue();
                            Intrinsics.f(value12, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str115, (String) value12);
                        } else if (value instanceof Long) {
                            String str116 = (String) entry.getKey();
                            Object value13 = entry.getValue();
                            Intrinsics.f(value13, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str116, ((Long) value13).longValue());
                        }
                    }
                    Unit unit18 = Unit.f67061a;
                }
                Unit unit19 = Unit.f67061a;
                reportProxy6.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string6, z10);
                a.a(pointAnalyseType, string6);
                break;
            case 7:
                jCurrentTimeMillis3 = System.currentTimeMillis() - this.OooO00o;
                Unit unit20 = Unit.f67061a;
                j12 = jCurrentTimeMillis3;
                str13 = str14;
                z10 = false;
                z11 = true;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string7 = sb2.toString();
                ReportProxy reportProxy7 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string7);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet7 = data.entrySet();
                    Intrinsics.g(setEntrySet7, "it.entries");
                    it = setEntrySet7.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str117 = (String) entry.getKey();
                            Object value14 = entry.getValue();
                            Intrinsics.f(value14, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str117, (String) value14);
                        } else if (value instanceof Long) {
                            String str118 = (String) entry.getKey();
                            Object value15 = entry.getValue();
                            Intrinsics.f(value15, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str118, ((Long) value15).longValue());
                        }
                    }
                    Unit unit110 = Unit.f67061a;
                }
                Unit unit111 = Unit.f67061a;
                reportProxy7.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string7, z10);
                a.a(pointAnalyseType, string7);
                break;
            case 8:
                jCurrentTimeMillis3 = System.currentTimeMillis() - this.OooO00o;
                Unit unit21 = Unit.f67061a;
                j12 = jCurrentTimeMillis3;
                str13 = str14;
                z10 = false;
                z11 = true;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string8 = sb2.toString();
                ReportProxy reportProxy8 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string8);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet8 = data.entrySet();
                    Intrinsics.g(setEntrySet8, "it.entries");
                    it = setEntrySet8.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str119 = (String) entry.getKey();
                            Object value16 = entry.getValue();
                            Intrinsics.f(value16, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str119, (String) value16);
                        } else if (value instanceof Long) {
                            String str1110 = (String) entry.getKey();
                            Object value17 = entry.getValue();
                            Intrinsics.f(value17, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str1110, ((Long) value17).longValue());
                        }
                    }
                    Unit unit112 = Unit.f67061a;
                }
                Unit unit113 = Unit.f67061a;
                reportProxy8.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string8, z10);
                a.a(pointAnalyseType, string8);
                break;
            case 9:
                str14 = "";
                str10 = str10;
                str11 = str11;
                bundle2 = bundle2;
                Unit unit22 = Unit.f67061a;
                str3 = "miniapp_sdkInit";
                str13 = str3;
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string9 = sb2.toString();
                ReportProxy reportProxy9 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string9);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet9 = data.entrySet();
                    Intrinsics.g(setEntrySet9, "it.entries");
                    it = setEntrySet9.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str1111 = (String) entry.getKey();
                            Object value18 = entry.getValue();
                            Intrinsics.f(value18, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str1111, (String) value18);
                        } else if (value instanceof Long) {
                            String str1112 = (String) entry.getKey();
                            Object value19 = entry.getValue();
                            Intrinsics.f(value19, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str1112, ((Long) value19).longValue());
                        }
                    }
                    Unit unit114 = Unit.f67061a;
                }
                Unit unit115 = Unit.f67061a;
                reportProxy9.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string9, z10);
                a.a(pointAnalyseType, string9);
                break;
            case 10:
                bundle2 = bundle2;
                bundle2.putString("object_id", MsgShowStatus.STATUS_OK);
                Unit unit23 = Unit.f67061a;
                str13 = "miniapp_exposure";
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string10 = sb2.toString();
                ReportProxy reportProxy10 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string10);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet10 = data.entrySet();
                    Intrinsics.g(setEntrySet10, "it.entries");
                    it = setEntrySet10.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str1113 = (String) entry.getKey();
                            Object value110 = entry.getValue();
                            Intrinsics.f(value110, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str1113, (String) value110);
                        } else if (value instanceof Long) {
                            String str1114 = (String) entry.getKey();
                            Object value111 = entry.getValue();
                            Intrinsics.f(value111, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str1114, ((Long) value111).longValue());
                        }
                    }
                    Unit unit116 = Unit.f67061a;
                }
                Unit unit117 = Unit.f67061a;
                reportProxy10.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string10, z10);
                a.a(pointAnalyseType, string10);
                break;
            case 11:
                str14 = "";
                str10 = str10;
                str11 = str11;
                bundle2 = bundle2;
                bundle2.putString("object_id", PrepareException.ERROR_MINI_APP_CLOSE);
                Unit unit24 = Unit.f67061a;
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string11 = sb2.toString();
                ReportProxy reportProxy11 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string11);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet11 = data.entrySet();
                    Intrinsics.g(setEntrySet11, "it.entries");
                    it = setEntrySet11.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str1115 = (String) entry.getKey();
                            Object value112 = entry.getValue();
                            Intrinsics.f(value112, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str1115, (String) value112);
                        } else if (value instanceof Long) {
                            String str1116 = (String) entry.getKey();
                            Object value113 = entry.getValue();
                            Intrinsics.f(value113, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str1116, ((Long) value113).longValue());
                        }
                    }
                    Unit unit118 = Unit.f67061a;
                }
                Unit unit119 = Unit.f67061a;
                reportProxy11.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string11, z10);
                a.a(pointAnalyseType, string11);
                break;
            case 12:
                str14 = "";
                str10 = str10;
                str11 = str11;
                bundle2 = bundle2;
                bundle2.putString("object_id", "10");
                Unit unit25 = Unit.f67061a;
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string12 = sb2.toString();
                ReportProxy reportProxy12 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string12);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet12 = data.entrySet();
                    Intrinsics.g(setEntrySet12, "it.entries");
                    it = setEntrySet12.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str1117 = (String) entry.getKey();
                            Object value114 = entry.getValue();
                            Intrinsics.f(value114, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str1117, (String) value114);
                        } else if (value instanceof Long) {
                            String str1118 = (String) entry.getKey();
                            Object value115 = entry.getValue();
                            Intrinsics.f(value115, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str1118, ((Long) value115).longValue());
                        }
                    }
                    Unit unit1110 = Unit.f67061a;
                }
                Unit unit1111 = Unit.f67061a;
                reportProxy12.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string12, z10);
                a.a(pointAnalyseType, string12);
                break;
            case 13:
                str14 = "";
                str10 = str10;
                str11 = str11;
                bundle2 = bundle2;
                bundle2.putString("object_id", PrepareException.ERROR_DOWNLOAD_PACKAGE_URL_EMPTY);
                Unit unit26 = Unit.f67061a;
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string13 = sb2.toString();
                ReportProxy reportProxy13 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string13);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet13 = data.entrySet();
                    Intrinsics.g(setEntrySet13, "it.entries");
                    it = setEntrySet13.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str1119 = (String) entry.getKey();
                            Object value116 = entry.getValue();
                            Intrinsics.f(value116, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str1119, (String) value116);
                        } else if (value instanceof Long) {
                            String str11110 = (String) entry.getKey();
                            Object value117 = entry.getValue();
                            Intrinsics.f(value117, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11110, ((Long) value117).longValue());
                        }
                    }
                    Unit unit1112 = Unit.f67061a;
                }
                Unit unit1113 = Unit.f67061a;
                reportProxy13.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string13, z10);
                a.a(pointAnalyseType, string13);
                break;
            case 14:
                str14 = "";
                str10 = str10;
                str11 = str11;
                bundle2 = bundle2;
                bundle2.putString("object_id", "12");
                Unit unit27 = Unit.f67061a;
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string14 = sb2.toString();
                ReportProxy reportProxy14 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string14);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet14 = data.entrySet();
                    Intrinsics.g(setEntrySet14, "it.entries");
                    it = setEntrySet14.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11111 = (String) entry.getKey();
                            Object value118 = entry.getValue();
                            Intrinsics.f(value118, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11111, (String) value118);
                        } else if (value instanceof Long) {
                            String str11112 = (String) entry.getKey();
                            Object value119 = entry.getValue();
                            Intrinsics.f(value119, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11112, ((Long) value119).longValue());
                        }
                    }
                    Unit unit1114 = Unit.f67061a;
                }
                Unit unit1115 = Unit.f67061a;
                reportProxy14.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string14, z10);
                a.a(pointAnalyseType, string14);
                break;
            case 15:
                str14 = "";
                str10 = str10;
                str11 = str11;
                bundle2 = bundle2;
                bundle2.putString("object_id", PrepareException.ERROR_WARMUP_DOWNLOAD_EXCEPTION);
                Unit unit28 = Unit.f67061a;
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string15 = sb2.toString();
                ReportProxy reportProxy15 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string15);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet15 = data.entrySet();
                    Intrinsics.g(setEntrySet15, "it.entries");
                    it = setEntrySet15.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11113 = (String) entry.getKey();
                            Object value1110 = entry.getValue();
                            Intrinsics.f(value1110, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11113, (String) value1110);
                        } else if (value instanceof Long) {
                            String str11114 = (String) entry.getKey();
                            Object value1111 = entry.getValue();
                            Intrinsics.f(value1111, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11114, ((Long) value1111).longValue());
                        }
                    }
                    Unit unit1116 = Unit.f67061a;
                }
                Unit unit1117 = Unit.f67061a;
                reportProxy15.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string15, z10);
                a.a(pointAnalyseType, string15);
                break;
            case 16:
                str14 = "";
                str10 = str10;
                str11 = str11;
                bundle2 = bundle2;
                bundle2.putString("object_id", "14");
                Unit unit29 = Unit.f67061a;
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string16 = sb2.toString();
                ReportProxy reportProxy16 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string16);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet16 = data.entrySet();
                    Intrinsics.g(setEntrySet16, "it.entries");
                    it = setEntrySet16.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11115 = (String) entry.getKey();
                            Object value1112 = entry.getValue();
                            Intrinsics.f(value1112, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11115, (String) value1112);
                        } else if (value instanceof Long) {
                            String str11116 = (String) entry.getKey();
                            Object value1113 = entry.getValue();
                            Intrinsics.f(value1113, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11116, ((Long) value1113).longValue());
                        }
                    }
                    Unit unit1118 = Unit.f67061a;
                }
                Unit unit1119 = Unit.f67061a;
                reportProxy16.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string16, z10);
                a.a(pointAnalyseType, string16);
                break;
            case 17:
                str14 = "";
                str10 = str10;
                str11 = str11;
                bundle2 = bundle2;
                bundle2.putString("object_id", PrepareException.ERROR_FILE2VURL_MINIAPP_FILE_EXCEPTION);
                Unit unit30 = Unit.f67061a;
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string17 = sb2.toString();
                ReportProxy reportProxy17 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string17);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet17 = data.entrySet();
                    Intrinsics.g(setEntrySet17, "it.entries");
                    it = setEntrySet17.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11117 = (String) entry.getKey();
                            Object value1114 = entry.getValue();
                            Intrinsics.f(value1114, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11117, (String) value1114);
                        } else if (value instanceof Long) {
                            String str11118 = (String) entry.getKey();
                            Object value1115 = entry.getValue();
                            Intrinsics.f(value1115, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11118, ((Long) value1115).longValue());
                        }
                    }
                    Unit unit11110 = Unit.f67061a;
                }
                Unit unit11111 = Unit.f67061a;
                reportProxy17.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string17, z10);
                a.a(pointAnalyseType, string17);
                break;
            case 18:
                str14 = "";
                str10 = str10;
                str11 = str11;
                bundle2 = bundle2;
                bundle2.putString("object_id", "16");
                Unit unit31 = Unit.f67061a;
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string18 = sb2.toString();
                ReportProxy reportProxy18 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string18);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet18 = data.entrySet();
                    Intrinsics.g(setEntrySet18, "it.entries");
                    it = setEntrySet18.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11119 = (String) entry.getKey();
                            Object value1116 = entry.getValue();
                            Intrinsics.f(value1116, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11119, (String) value1116);
                        } else if (value instanceof Long) {
                            String str111110 = (String) entry.getKey();
                            Object value1117 = entry.getValue();
                            Intrinsics.f(value1117, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str111110, ((Long) value1117).longValue());
                        }
                    }
                    Unit unit11112 = Unit.f67061a;
                }
                Unit unit11113 = Unit.f67061a;
                reportProxy18.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string18, z10);
                a.a(pointAnalyseType, string18);
                break;
            case 19:
                str14 = "";
                str10 = str10;
                str11 = str11;
                bundle2 = bundle2;
                bundle2.putString("object_id", "17");
                Unit unit32 = Unit.f67061a;
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string19 = sb2.toString();
                ReportProxy reportProxy19 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string19);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet19 = data.entrySet();
                    Intrinsics.g(setEntrySet19, "it.entries");
                    it = setEntrySet19.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str111111 = (String) entry.getKey();
                            Object value1118 = entry.getValue();
                            Intrinsics.f(value1118, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str111111, (String) value1118);
                        } else if (value instanceof Long) {
                            String str111112 = (String) entry.getKey();
                            Object value1119 = entry.getValue();
                            Intrinsics.f(value1119, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str111112, ((Long) value1119).longValue());
                        }
                    }
                    Unit unit11114 = Unit.f67061a;
                }
                Unit unit11115 = Unit.f67061a;
                reportProxy19.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string19, z10);
                a.a(pointAnalyseType, string19);
                break;
            case 20:
                str14 = "";
                str10 = str10;
                str11 = str11;
                bundle2 = bundle2;
                bundle2.putString("object_id", "18");
                Unit unit33 = Unit.f67061a;
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string110 = sb2.toString();
                ReportProxy reportProxy110 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string110);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet110 = data.entrySet();
                    Intrinsics.g(setEntrySet110, "it.entries");
                    it = setEntrySet110.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str111113 = (String) entry.getKey();
                            Object value11110 = entry.getValue();
                            Intrinsics.f(value11110, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str111113, (String) value11110);
                        } else if (value instanceof Long) {
                            String str111114 = (String) entry.getKey();
                            Object value11111 = entry.getValue();
                            Intrinsics.f(value11111, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str111114, ((Long) value11111).longValue());
                        }
                    }
                    Unit unit11116 = Unit.f67061a;
                }
                Unit unit11117 = Unit.f67061a;
                reportProxy110.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string110, z10);
                a.a(pointAnalyseType, string110);
                break;
            case 21:
                str14 = "";
                str10 = str10;
                str11 = str11;
                bundle2 = bundle2;
                bundle2.putString("object_id", "19");
                Unit unit34 = Unit.f67061a;
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string111 = sb2.toString();
                ReportProxy reportProxy111 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string111);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet111 = data.entrySet();
                    Intrinsics.g(setEntrySet111, "it.entries");
                    it = setEntrySet111.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str111115 = (String) entry.getKey();
                            Object value11112 = entry.getValue();
                            Intrinsics.f(value11112, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str111115, (String) value11112);
                        } else if (value instanceof Long) {
                            String str111116 = (String) entry.getKey();
                            Object value11113 = entry.getValue();
                            Intrinsics.f(value11113, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str111116, ((Long) value11113).longValue());
                        }
                    }
                    Unit unit11118 = Unit.f67061a;
                }
                Unit unit11119 = Unit.f67061a;
                reportProxy111.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string111, z10);
                a.a(pointAnalyseType, string111);
                break;
            case 22:
                str14 = "";
                str10 = str10;
                str11 = str11;
                bundle2 = bundle2;
                bundle2.putString("object_id", "20");
                Unit unit35 = Unit.f67061a;
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string112 = sb2.toString();
                ReportProxy reportProxy112 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string112);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet112 = data.entrySet();
                    Intrinsics.g(setEntrySet112, "it.entries");
                    it = setEntrySet112.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str111117 = (String) entry.getKey();
                            Object value11114 = entry.getValue();
                            Intrinsics.f(value11114, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str111117, (String) value11114);
                        } else if (value instanceof Long) {
                            String str111118 = (String) entry.getKey();
                            Object value11115 = entry.getValue();
                            Intrinsics.f(value11115, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str111118, ((Long) value11115).longValue());
                        }
                    }
                    Unit unit111110 = Unit.f67061a;
                }
                Unit unit111111 = Unit.f67061a;
                reportProxy112.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string112, z10);
                a.a(pointAnalyseType, string112);
                break;
            case 23:
                str14 = "";
                str10 = str10;
                str11 = str11;
                bundle2 = bundle2;
                bundle2.putString("object_id", ChainPoint.ROUTE_PAGE);
                Unit unit36 = Unit.f67061a;
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string113 = sb2.toString();
                ReportProxy reportProxy113 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string113);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet113 = data.entrySet();
                    Intrinsics.g(setEntrySet113, "it.entries");
                    it = setEntrySet113.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str111119 = (String) entry.getKey();
                            Object value11116 = entry.getValue();
                            Intrinsics.f(value11116, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str111119, (String) value11116);
                        } else if (value instanceof Long) {
                            String str1111110 = (String) entry.getKey();
                            Object value11117 = entry.getValue();
                            Intrinsics.f(value11117, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str1111110, ((Long) value11117).longValue());
                        }
                    }
                    Unit unit111112 = Unit.f67061a;
                }
                Unit unit111113 = Unit.f67061a;
                reportProxy113.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string113, z10);
                a.a(pointAnalyseType, string113);
                break;
            case 24:
                str14 = "";
                str10 = str10;
                str11 = str11;
                bundle2 = bundle2;
                bundle2.putString("object_id", "22");
                Unit unit37 = Unit.f67061a;
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string114 = sb2.toString();
                ReportProxy reportProxy114 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string114);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet114 = data.entrySet();
                    Intrinsics.g(setEntrySet114, "it.entries");
                    it = setEntrySet114.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str1111111 = (String) entry.getKey();
                            Object value11118 = entry.getValue();
                            Intrinsics.f(value11118, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str1111111, (String) value11118);
                        } else if (value instanceof Long) {
                            String str1111112 = (String) entry.getKey();
                            Object value11119 = entry.getValue();
                            Intrinsics.f(value11119, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str1111112, ((Long) value11119).longValue());
                        }
                    }
                    Unit unit111114 = Unit.f67061a;
                }
                Unit unit111115 = Unit.f67061a;
                reportProxy114.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string114, z10);
                a.a(pointAnalyseType, string114);
                break;
            case 25:
                str14 = "";
                str10 = str10;
                str11 = str11;
                bundle2 = bundle2;
                bundle2.putString("object_id", "23");
                Unit unit38 = Unit.f67061a;
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string115 = sb2.toString();
                ReportProxy reportProxy115 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string115);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet115 = data.entrySet();
                    Intrinsics.g(setEntrySet115, "it.entries");
                    it = setEntrySet115.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str1111113 = (String) entry.getKey();
                            Object value111110 = entry.getValue();
                            Intrinsics.f(value111110, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str1111113, (String) value111110);
                        } else if (value instanceof Long) {
                            String str1111114 = (String) entry.getKey();
                            Object value111111 = entry.getValue();
                            Intrinsics.f(value111111, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str1111114, ((Long) value111111).longValue());
                        }
                    }
                    Unit unit111116 = Unit.f67061a;
                }
                Unit unit111117 = Unit.f67061a;
                reportProxy115.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string115, z10);
                a.a(pointAnalyseType, string115);
                break;
            case 26:
                str14 = "";
                str10 = str10;
                str11 = str11;
                bundle2 = bundle2;
                bundle2.putString("object_id", "24");
                Unit unit39 = Unit.f67061a;
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string116 = sb2.toString();
                ReportProxy reportProxy116 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string116);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet116 = data.entrySet();
                    Intrinsics.g(setEntrySet116, "it.entries");
                    it = setEntrySet116.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str1111115 = (String) entry.getKey();
                            Object value111112 = entry.getValue();
                            Intrinsics.f(value111112, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str1111115, (String) value111112);
                        } else if (value instanceof Long) {
                            String str1111116 = (String) entry.getKey();
                            Object value111113 = entry.getValue();
                            Intrinsics.f(value111113, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str1111116, ((Long) value111113).longValue());
                        }
                    }
                    Unit unit111118 = Unit.f67061a;
                }
                Unit unit111119 = Unit.f67061a;
                reportProxy116.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string116, z10);
                a.a(pointAnalyseType, string116);
                break;
            case 27:
                str14 = "";
                str10 = str10;
                str11 = str11;
                bundle2 = bundle2;
                bundle2.putString("object_id", "25");
                Unit unit40 = Unit.f67061a;
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string117 = sb2.toString();
                ReportProxy reportProxy117 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string117);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet117 = data.entrySet();
                    Intrinsics.g(setEntrySet117, "it.entries");
                    it = setEntrySet117.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str1111117 = (String) entry.getKey();
                            Object value111114 = entry.getValue();
                            Intrinsics.f(value111114, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str1111117, (String) value111114);
                        } else if (value instanceof Long) {
                            String str1111118 = (String) entry.getKey();
                            Object value111115 = entry.getValue();
                            Intrinsics.f(value111115, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str1111118, ((Long) value111115).longValue());
                        }
                    }
                    Unit unit1111110 = Unit.f67061a;
                }
                Unit unit1111111 = Unit.f67061a;
                reportProxy117.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string117, z10);
                a.a(pointAnalyseType, string117);
                break;
            case 28:
                str14 = "";
                str10 = str10;
                str11 = str11;
                bundle2 = bundle2;
                bundle2.putString("object_id", "26");
                Unit unit41 = Unit.f67061a;
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string118 = sb2.toString();
                ReportProxy reportProxy118 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string118);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet118 = data.entrySet();
                    Intrinsics.g(setEntrySet118, "it.entries");
                    it = setEntrySet118.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str1111119 = (String) entry.getKey();
                            Object value111116 = entry.getValue();
                            Intrinsics.f(value111116, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str1111119, (String) value111116);
                        } else if (value instanceof Long) {
                            String str11111110 = (String) entry.getKey();
                            Object value111117 = entry.getValue();
                            Intrinsics.f(value111117, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11111110, ((Long) value111117).longValue());
                        }
                    }
                    Unit unit1111112 = Unit.f67061a;
                }
                Unit unit1111113 = Unit.f67061a;
                reportProxy118.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string118, z10);
                a.a(pointAnalyseType, string118);
                break;
            case NOTIFICATION_REDIRECT_VALUE:
                bundle2 = bundle2;
                bundle2.putString("object_id", "2");
                bundle2.putString(NotificationCompat.CATEGORY_STATUS, "0");
                Unit unit42 = Unit.f67061a;
                str13 = "miniapp_start";
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string119 = sb2.toString();
                ReportProxy reportProxy119 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string119);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet119 = data.entrySet();
                    Intrinsics.g(setEntrySet119, "it.entries");
                    it = setEntrySet119.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11111111 = (String) entry.getKey();
                            Object value111118 = entry.getValue();
                            Intrinsics.f(value111118, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11111111, (String) value111118);
                        } else if (value instanceof Long) {
                            String str11111112 = (String) entry.getKey();
                            Object value111119 = entry.getValue();
                            Intrinsics.f(value111119, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11111112, ((Long) value111119).longValue());
                        }
                    }
                    Unit unit1111114 = Unit.f67061a;
                }
                Unit unit1111115 = Unit.f67061a;
                reportProxy119.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string119, z10);
                a.a(pointAnalyseType, string119);
                break;
            case 30:
                bundle2 = bundle2;
                bundle2.putString("object_id", "2");
                bundle2.putString(NotificationCompat.CATEGORY_STATUS, "3");
                Unit unit43 = Unit.f67061a;
                str13 = "miniapp_start";
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string1110 = sb2.toString();
                ReportProxy reportProxy1110 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string1110);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet1110 = data.entrySet();
                    Intrinsics.g(setEntrySet1110, "it.entries");
                    it = setEntrySet1110.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11111113 = (String) entry.getKey();
                            Object value1111110 = entry.getValue();
                            Intrinsics.f(value1111110, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11111113, (String) value1111110);
                        } else if (value instanceof Long) {
                            String str11111114 = (String) entry.getKey();
                            Object value1111111 = entry.getValue();
                            Intrinsics.f(value1111111, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11111114, ((Long) value1111111).longValue());
                        }
                    }
                    Unit unit1111116 = Unit.f67061a;
                }
                Unit unit1111117 = Unit.f67061a;
                reportProxy1110.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string1110, z10);
                a.a(pointAnalyseType, string1110);
                break;
            case TEMPLATE_HTML_SIZE_VALUE:
                bundle2 = bundle2;
                bundle2.putString("object_id", StatisticData.ERROR_CODE_NOT_FOUND);
                bundle2.putString(NotificationCompat.CATEGORY_STATUS, "0");
                Unit unit44 = Unit.f67061a;
                str13 = "miniapp_download";
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string1111 = sb2.toString();
                ReportProxy reportProxy1111 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string1111);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet1111 = data.entrySet();
                    Intrinsics.g(setEntrySet1111, "it.entries");
                    it = setEntrySet1111.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11111115 = (String) entry.getKey();
                            Object value1111112 = entry.getValue();
                            Intrinsics.f(value1111112, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11111115, (String) value1111112);
                        } else if (value instanceof Long) {
                            String str11111116 = (String) entry.getKey();
                            Object value1111113 = entry.getValue();
                            Intrinsics.f(value1111113, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11111116, ((Long) value1111113).longValue());
                        }
                    }
                    Unit unit1111118 = Unit.f67061a;
                }
                Unit unit1111119 = Unit.f67061a;
                reportProxy1111.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string1111, z10);
                a.a(pointAnalyseType, string1111);
                break;
            case 32:
                bundle2 = bundle2;
                bundle2.putString("object_id", StatisticData.ERROR_CODE_NOT_FOUND);
                bundle2.putString(NotificationCompat.CATEGORY_STATUS, "2");
                Unit unit45 = Unit.f67061a;
                str13 = "miniapp_download";
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string1112 = sb2.toString();
                ReportProxy reportProxy1112 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string1112);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet1112 = data.entrySet();
                    Intrinsics.g(setEntrySet1112, "it.entries");
                    it = setEntrySet1112.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11111117 = (String) entry.getKey();
                            Object value1111114 = entry.getValue();
                            Intrinsics.f(value1111114, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11111117, (String) value1111114);
                        } else if (value instanceof Long) {
                            String str11111118 = (String) entry.getKey();
                            Object value1111115 = entry.getValue();
                            Intrinsics.f(value1111115, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11111118, ((Long) value1111115).longValue());
                        }
                    }
                    Unit unit11111110 = Unit.f67061a;
                }
                Unit unit11111111 = Unit.f67061a;
                reportProxy1112.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string1112, z10);
                a.a(pointAnalyseType, string1112);
                break;
            case 33:
                bundle2 = bundle2;
                bundle2.putString("object_id", StatisticData.ERROR_CODE_NOT_FOUND);
                bundle2.putString(NotificationCompat.CATEGORY_STATUS, "1");
                Unit unit46 = Unit.f67061a;
                str13 = "miniapp_download";
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string1113 = sb2.toString();
                ReportProxy reportProxy1113 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string1113);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet1113 = data.entrySet();
                    Intrinsics.g(setEntrySet1113, "it.entries");
                    it = setEntrySet1113.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11111119 = (String) entry.getKey();
                            Object value1111116 = entry.getValue();
                            Intrinsics.f(value1111116, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11111119, (String) value1111116);
                        } else if (value instanceof Long) {
                            String str111111110 = (String) entry.getKey();
                            Object value1111117 = entry.getValue();
                            Intrinsics.f(value1111117, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str111111110, ((Long) value1111117).longValue());
                        }
                    }
                    Unit unit11111112 = Unit.f67061a;
                }
                Unit unit11111113 = Unit.f67061a;
                reportProxy1113.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string1113, z10);
                a.a(pointAnalyseType, string1113);
                break;
            case 34:
                bundle2 = bundle2;
                bundle2.putString("object_id", "202");
                Unit unit47 = Unit.f67061a;
                str13 = "miniapp_exposure";
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string1114 = sb2.toString();
                ReportProxy reportProxy1114 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string1114);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet1114 = data.entrySet();
                    Intrinsics.g(setEntrySet1114, "it.entries");
                    it = setEntrySet1114.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str111111111 = (String) entry.getKey();
                            Object value1111118 = entry.getValue();
                            Intrinsics.f(value1111118, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str111111111, (String) value1111118);
                        } else if (value instanceof Long) {
                            String str111111112 = (String) entry.getKey();
                            Object value1111119 = entry.getValue();
                            Intrinsics.f(value1111119, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str111111112, ((Long) value1111119).longValue());
                        }
                    }
                    Unit unit11111114 = Unit.f67061a;
                }
                Unit unit11111115 = Unit.f67061a;
                reportProxy1114.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string1114, z10);
                a.a(pointAnalyseType, string1114);
                break;
            case 35:
                str14 = "";
                str10 = str10;
                str11 = str11;
                bundle2 = bundle2;
                bundle2.putString("object_id", "600");
                Unit unit48 = Unit.f67061a;
                str3 = "miniapp_fps";
                str13 = str3;
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string1115 = sb2.toString();
                ReportProxy reportProxy1115 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string1115);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet1115 = data.entrySet();
                    Intrinsics.g(setEntrySet1115, "it.entries");
                    it = setEntrySet1115.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str111111113 = (String) entry.getKey();
                            Object value11111110 = entry.getValue();
                            Intrinsics.f(value11111110, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str111111113, (String) value11111110);
                        } else if (value instanceof Long) {
                            String str111111114 = (String) entry.getKey();
                            Object value11111111 = entry.getValue();
                            Intrinsics.f(value11111111, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str111111114, ((Long) value11111111).longValue());
                        }
                    }
                    Unit unit11111116 = Unit.f67061a;
                }
                Unit unit11111117 = Unit.f67061a;
                reportProxy1115.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string1115, z10);
                a.a(pointAnalyseType, string1115);
                break;
            case 36:
                if (str11 != null) {
                    OooO00o(str11, bundle2);
                    Unit unit49 = Unit.f67061a;
                }
                break;
            case 37:
                if (str11 == null) {
                    str10 = str;
                    str11 = str11;
                    str14 = "";
                    str7 = str14;
                    z10 = false;
                    z11 = true;
                    j11 = 0;
                    j14 = 0;
                    if (str11 != null) {
                        str9 = str14;
                    } else {
                        str9 = str14;
                    }
                    if (j14 > j11) {
                        str9 = "-耗时:" + j14 + ((Object) str9);
                    }
                    if (j14 > j11) {
                        pointAnalyseType = target;
                        if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                            TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                        }
                    } else {
                        pointAnalyseType = target;
                    }
                    if (str10 != null) {
                        des = target.getDes();
                        sb2 = new StringBuilder();
                        sb2.append("[");
                        sb2.append(str10);
                        sb2.append("]:");
                    } else {
                        des = target.getDes();
                        sb2 = new StringBuilder();
                    }
                    sb2.append(des);
                    sb2.append((Object) str9);
                    String string1116 = sb2.toString();
                    ReportProxy reportProxy1116 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                    bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string1116);
                    data = target.getData();
                    if (data != null) {
                        Set<Map.Entry<String, Object>> setEntrySet1116 = data.entrySet();
                        Intrinsics.g(setEntrySet1116, "it.entries");
                        it = setEntrySet1116.iterator();
                        while (it.hasNext()) {
                            entry = (Map.Entry) it.next();
                            value = entry.getValue();
                            if (value instanceof String) {
                                String str111111115 = (String) entry.getKey();
                                Object value11111112 = entry.getValue();
                                Intrinsics.f(value11111112, "null cannot be cast to non-null type kotlin.String");
                                bundle2.putString(str111111115, (String) value11111112);
                            } else if (value instanceof Long) {
                                String str111111116 = (String) entry.getKey();
                                Object value11111113 = entry.getValue();
                                Intrinsics.f(value11111113, "null cannot be cast to non-null type kotlin.Long");
                                bundle2.putLong(str111111116, ((Long) value11111113).longValue());
                            }
                        }
                        Unit unit11111118 = Unit.f67061a;
                    }
                    Unit unit11111119 = Unit.f67061a;
                    reportProxy1116.report(str10, str7, bundle2);
                    if (j14 != j11) {
                        z10 = z11;
                    }
                    TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string1116, z10);
                    a.a(pointAnalyseType, string1116);
                } else {
                    try {
                        String string20 = bundle2.getString(ChainPoint.TYPE, "");
                        String appId = bundle2.getString(ChainPoint.CHAIN_ID, "");
                        String pagePath = bundle2.getString(ChainPoint.PAGE_PATH, "");
                        String string21 = bundle2.getString(ChainPoint.REPORT_PAGE_PATH, "");
                        TmcLogger.d("oldChain", "chainEnd -> msg:" + str11 + ", type:" + string20 + ", pagePath:" + pagePath + ", reportPagePath:" + string21);
                        String reportPagePath = TextUtils.isEmpty(string21) ? pagePath : string21;
                        if (!Intrinsics.c("app", string20)) {
                            if (Intrinsics.c("page", string20)) {
                                com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O18 = this.OooO0Oo.get(appId);
                                if (oooO0O18 != null && (mapOooOO1 = oooO0O18.OooOO0()) != null && (oooOO1 = mapOooOO1.get(pagePath)) != null && (mapOooO0O2 = oooOO1.OooO0O0()) != null && mapOooO0O2.containsKey(str11) && (oooO0O2 = this.OooO0Oo.get(appId)) != null && (mapOooOO2 = oooO0O2.OooOO0()) != null && (oooOO2 = mapOooOO2.get(pagePath)) != null && (mapOooO00o2 = oooOO2.OooO00o()) != null) {
                                    long jCurrentTimeMillis4 = System.currentTimeMillis();
                                    com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O19 = this.OooO0Oo.get(appId);
                                    mapOooO00o2.put(str11, Long.valueOf(jCurrentTimeMillis4 - ((oooO0O19 == null || (mapOooOO3 = oooO0O19.OooOO0()) == null || (oooOO3 = mapOooOO3.get(pagePath)) == null || (mapOooO0O3 = oooOO3.OooO0O0()) == null || (l12 = mapOooO0O3.get(str11)) == null) ? 0L : l12.longValue())));
                                }
                                com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O20 = this.OooO0Oo.get(appId);
                                if (Intrinsics.c(pagePath, oooO0O20 != null ? oooO0O20.OooO0o() : null) && (oooO0O0 = this.OooO0Oo.get(appId)) != null && (mapOooO0O0 = oooO0O0.OooO0O0()) != null) {
                                    boolean zContainsKey = mapOooO0O0.containsKey(str11);
                                    z12 = true;
                                    if (zContainsKey && (oooO0O1 = this.OooO0Oo.get(appId)) != null && (mapOooO00o = oooO0O1.OooO00o()) != null) {
                                        long jCurrentTimeMillis5 = System.currentTimeMillis();
                                        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O21 = this.OooO0Oo.get(appId);
                                        mapOooO00o.put(str11, Long.valueOf(jCurrentTimeMillis5 - ((oooO0O21 == null || (mapOooOO0 = oooO0O21.OooOO0()) == null || (oooOO0 = mapOooOO0.get(pagePath)) == null || (mapOooO0O1 = oooOO0.OooO0O0()) == null || (l11 = mapOooO0O1.get(str11)) == null) ? 0L : l11.longValue())));
                                    }
                                }
                            }
                            if (Intrinsics.c(str11, ChainPoint.page)) {
                                oooO0O16 = this.OooO0Oo.get(appId);
                                if (oooO0O16 != null) {
                                    strOooO0o3 = oooO0O16.OooO0o();
                                } else {
                                    strOooO0o3 = null;
                                }
                                if (Intrinsics.c(pagePath, strOooO0o3)) {
                                    str14 = "";
                                    str11 = str11;
                                    if (Intrinsics.c(str11, ChainPoint.app)) {
                                        oooO0O3 = this.OooO0Oo.get(appId);
                                        if (oooO0O3 != null) {
                                            strOooO0o = oooO0O3.OooO0o();
                                        } else {
                                            strOooO0o = null;
                                        }
                                        if (Intrinsics.c(pagePath, strOooO0o)) {
                                            oooO0O4 = this.OooO0Oo.get(appId);
                                            if (oooO0O4 == null) {
                                                bundle2 = bundle2;
                                            } else {
                                                bundle2 = bundle2;
                                            }
                                            TmcLogger.d("oldChain", "reportApp -> msg:" + str11 + ", type:" + string20 + ", pagePath:" + pagePath + ", reportPagePath:" + reportPagePath);
                                            OooO00o(str);
                                            str10 = str;
                                            OooO00o(bundle2, str10);
                                            OooO00o();
                                            bundle2.putString("object_id", "300");
                                            oooO0O5 = this.OooO0Oo.get(appId);
                                            if (oooO0O5 != null) {
                                                str4 = str12;
                                            } else {
                                                str4 = str12;
                                            }
                                            bundle2.putString(PointConstants.POINT_PAGE_PATH, reportPagePath);
                                            if (str10 != null) {
                                                appFindApp = ((AppManager) TmcProxy.get(AppManager.class)).findApp(str10);
                                                if (appFindApp != null) {
                                                    context = null;
                                                } else {
                                                    context = null;
                                                }
                                                if (context instanceof BaseActivity) {
                                                    baseActivity = (BaseActivity) context;
                                                } else {
                                                    baseActivity = null;
                                                }
                                                if (baseActivity != null) {
                                                    boolValueOf = Boolean.valueOf(baseActivity.getMStarted());
                                                } else {
                                                    boolValueOf = null;
                                                }
                                                bundle2.putString(IntegrationConstants.IS_FOREGROUND, String.valueOf(boolValueOf));
                                                Unit unit50 = Unit.f67061a;
                                            }
                                            bundle2.putString("app_launcher_status", "true");
                                            oooO0O6 = this.OooO0Oo.get(appId);
                                            if (oooO0O6 != null) {
                                                zOooO = oooO0O6.OooO();
                                            } else {
                                                zOooO = false;
                                            }
                                            bundle2.putBoolean(LauncherMiniAppConfigHelper.KEY_OFF_SCREEN_RENDER, zOooO);
                                            oooO0O7 = this.OooO0Oo.get(appId);
                                            if (oooO0O7 != null) {
                                                iOooO0Oo = oooO0O7.OooO0Oo();
                                            } else {
                                                iOooO0Oo = -1;
                                            }
                                            bundle2.putInt("downloadFrameworkMode", iOooO0Oo);
                                            oooO0O8 = this.OooO0Oo.get(appId);
                                            if (oooO0O8 != null) {
                                                iOooO0OO = oooO0O8.OooO0OO();
                                            } else {
                                                iOooO0OO = -1;
                                            }
                                            bundle2.putInt("downloadAppMode", iOooO0OO);
                                            oooO0O9 = this.OooO0Oo.get(appId);
                                            if (oooO0O9 != null) {
                                                iOooOO0o = oooO0O9.OooOO0o();
                                            } else {
                                                iOooOO0o = -1;
                                            }
                                            bundle2.putInt("zipFrameworkMode", iOooOO0o);
                                            com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O22 = this.OooO0Oo.get(appId);
                                            bundle2.putInt("zipAppMode", oooO0O22 != null ? oooO0O22.OooOO0O() : -1);
                                            oooO0O10 = this.OooO0Oo.get(appId);
                                            if (oooO0O10 != null) {
                                                strOooO0o0 = str14;
                                            } else {
                                                strOooO0o0 = str14;
                                            }
                                            bundle2.putString("appH5ProgressStatus", strOooO0o0);
                                            oooO0O11 = this.OooO0Oo.get(appId);
                                            if (oooO0O11 != null) {
                                                strOooOOO0 = str14;
                                            } else {
                                                strOooOOO0 = str14;
                                            }
                                            bundle2.putString("appDomContentLoadedStatus", strOooOOO0);
                                            String str20 = str4 + ChainPoint.TotalCommunicationTime;
                                            ICommunicationTimeProxy iCommunicationTimeProxy = (ICommunicationTimeProxy) TmcProxy.get(ICommunicationTimeProxy.class);
                                            oooO0O12 = this.OooO0Oo.get(appId);
                                            if (oooO0O12 != null) {
                                                strOooO0o1 = null;
                                            } else {
                                                strOooO0o1 = null;
                                            }
                                            bundle2.putLong(str20, iCommunicationTimeProxy.getTotalTime(strOooO0o1));
                                            String str21 = str4 + ChainPoint.TotalCommunicationNum;
                                            ICommunicationTimeProxy iCommunicationTimeProxy2 = (ICommunicationTimeProxy) TmcProxy.get(ICommunicationTimeProxy.class);
                                            oooO0O13 = this.OooO0Oo.get(appId);
                                            if (oooO0O13 != null) {
                                                strOooO0o2 = null;
                                            } else {
                                                strOooO0o2 = null;
                                            }
                                            bundle2.putInt(str21, iCommunicationTimeProxy2.getTotalNum(strOooO0o2));
                                            oooO0O14 = this.OooO0Oo.get(appId);
                                            if (oooO0O14 != null) {
                                                strOooO0Oo = oooOO4.OooO0Oo();
                                            }
                                            bundle2.putString("navigationType", strOooO0Oo);
                                            oooO0O15 = this.OooO0Oo.get(appId);
                                            if (oooO0O15 == null) {
                                                oooO0O15.OooO00o(true);
                                            }
                                        }
                                    }
                                } else {
                                    Intrinsics.g(appId, "appId");
                                    Intrinsics.g(pagePath, "pagePath");
                                    Intrinsics.g(reportPagePath, "reportPagePath");
                                    str14 = "";
                                    OooO00o(appId, pagePath, bundle2, str, reportPagePath);
                                    str10 = str;
                                    str11 = str2;
                                    bundle2 = bundle2;
                                }
                            } else {
                                str14 = "";
                                str11 = str11;
                                if (Intrinsics.c(str11, ChainPoint.app)) {
                                    oooO0O3 = this.OooO0Oo.get(appId);
                                    if (oooO0O3 != null) {
                                        strOooO0o = oooO0O3.OooO0o();
                                    } else {
                                        strOooO0o = null;
                                    }
                                    if (Intrinsics.c(pagePath, strOooO0o)) {
                                        oooO0O4 = this.OooO0Oo.get(appId);
                                        if (oooO0O4 == null && oooO0O4.OooOOO()) {
                                            Intrinsics.g(appId, "appId");
                                            Intrinsics.g(pagePath, "pagePath");
                                            Intrinsics.g(reportPagePath, "reportPagePath");
                                            bundle2 = bundle2;
                                            str11 = str11;
                                            OooO00o(appId, pagePath, bundle2, str, reportPagePath);
                                            str10 = str;
                                        } else {
                                            bundle2 = bundle2;
                                            TmcLogger.d("oldChain", "reportApp -> msg:" + str11 + ", type:" + string20 + ", pagePath:" + pagePath + ", reportPagePath:" + reportPagePath);
                                            OooO00o(str);
                                            str10 = str;
                                            OooO00o(bundle2, str10);
                                            OooO00o();
                                            bundle2.putString("object_id", "300");
                                            oooO0O5 = this.OooO0Oo.get(appId);
                                            if (oooO0O5 != null || (mapOooO00o3 = oooO0O5.OooO00o()) == null) {
                                                str4 = str12;
                                            } else {
                                                for (Map.Entry<String, Long> entry2 : mapOooO00o3.entrySet()) {
                                                    String key = entry2.getKey();
                                                    StringBuilder sb3 = new StringBuilder();
                                                    String str22 = str12;
                                                    sb3.append(str22);
                                                    sb3.append((Object) key);
                                                    bundle2.putLong(sb3.toString(), entry2.getValue().longValue());
                                                    str12 = str22;
                                                }
                                                str4 = str12;
                                                Unit unit51 = Unit.f67061a;
                                            }
                                            bundle2.putString(PointConstants.POINT_PAGE_PATH, reportPagePath);
                                            if (str10 != null) {
                                                appFindApp = ((AppManager) TmcProxy.get(AppManager.class)).findApp(str10);
                                                if (appFindApp != null || (appContext = appFindApp.getAppContext()) == null) {
                                                    context = null;
                                                } else {
                                                    context = appContext.getContext();
                                                }
                                                if (context instanceof BaseActivity) {
                                                    baseActivity = (BaseActivity) context;
                                                } else {
                                                    baseActivity = null;
                                                }
                                                if (baseActivity != null) {
                                                    boolValueOf = Boolean.valueOf(baseActivity.getMStarted());
                                                } else {
                                                    boolValueOf = null;
                                                }
                                                bundle2.putString(IntegrationConstants.IS_FOREGROUND, String.valueOf(boolValueOf));
                                                Unit unit52 = Unit.f67061a;
                                            }
                                            bundle2.putString("app_launcher_status", "true");
                                            oooO0O6 = this.OooO0Oo.get(appId);
                                            if (oooO0O6 != null) {
                                                zOooO = oooO0O6.OooO();
                                            } else {
                                                zOooO = false;
                                            }
                                            bundle2.putBoolean(LauncherMiniAppConfigHelper.KEY_OFF_SCREEN_RENDER, zOooO);
                                            oooO0O7 = this.OooO0Oo.get(appId);
                                            if (oooO0O7 != null) {
                                                iOooO0Oo = oooO0O7.OooO0Oo();
                                            } else {
                                                iOooO0Oo = -1;
                                            }
                                            bundle2.putInt("downloadFrameworkMode", iOooO0Oo);
                                            oooO0O8 = this.OooO0Oo.get(appId);
                                            if (oooO0O8 != null) {
                                                iOooO0OO = oooO0O8.OooO0OO();
                                            } else {
                                                iOooO0OO = -1;
                                            }
                                            bundle2.putInt("downloadAppMode", iOooO0OO);
                                            oooO0O9 = this.OooO0Oo.get(appId);
                                            if (oooO0O9 != null) {
                                                iOooOO0o = oooO0O9.OooOO0o();
                                            } else {
                                                iOooOO0o = -1;
                                            }
                                            bundle2.putInt("zipFrameworkMode", iOooOO0o);
                                            com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O23 = this.OooO0Oo.get(appId);
                                            bundle2.putInt("zipAppMode", oooO0O23 != null ? oooO0O23.OooOO0O() : -1);
                                            oooO0O10 = this.OooO0Oo.get(appId);
                                            if (oooO0O10 != null || (strOooO0o0 = oooO0O10.OooO0o0()) == null) {
                                                strOooO0o0 = str14;
                                            }
                                            bundle2.putString("appH5ProgressStatus", strOooO0o0);
                                            oooO0O11 = this.OooO0Oo.get(appId);
                                            if (oooO0O11 != null || (strOooOOO0 = oooO0O11.OooOOO0()) == null) {
                                                strOooOOO0 = str14;
                                            }
                                            bundle2.putString("appDomContentLoadedStatus", strOooOOO0);
                                            String str23 = str4 + ChainPoint.TotalCommunicationTime;
                                            ICommunicationTimeProxy iCommunicationTimeProxy3 = (ICommunicationTimeProxy) TmcProxy.get(ICommunicationTimeProxy.class);
                                            oooO0O12 = this.OooO0Oo.get(appId);
                                            if (oooO0O12 != null || (mapOooOO6 = oooO0O12.OooOO0()) == null || (oooOO6 = mapOooOO6.get(pagePath)) == null) {
                                                strOooO0o1 = null;
                                            } else {
                                                strOooO0o1 = oooOO6.OooO0o0();
                                            }
                                            bundle2.putLong(str23, iCommunicationTimeProxy3.getTotalTime(strOooO0o1));
                                            String str24 = str4 + ChainPoint.TotalCommunicationNum;
                                            ICommunicationTimeProxy iCommunicationTimeProxy4 = (ICommunicationTimeProxy) TmcProxy.get(ICommunicationTimeProxy.class);
                                            oooO0O13 = this.OooO0Oo.get(appId);
                                            if (oooO0O13 != null || (mapOooOO5 = oooO0O13.OooOO0()) == null || (oooOO5 = mapOooOO5.get(pagePath)) == null) {
                                                strOooO0o2 = null;
                                            } else {
                                                strOooO0o2 = oooOO5.OooO0o0();
                                            }
                                            bundle2.putInt(str24, iCommunicationTimeProxy4.getTotalNum(strOooO0o2));
                                            oooO0O14 = this.OooO0Oo.get(appId);
                                            if (oooO0O14 != null && (mapOooOO4 = oooO0O14.OooOO0()) != null && (oooOO4 = mapOooOO4.get(pagePath)) != null) {
                                                strOooO0Oo = oooOO4.OooO0Oo();
                                            }
                                            bundle2.putString("navigationType", strOooO0Oo);
                                            oooO0O15 = this.OooO0Oo.get(appId);
                                            if (oooO0O15 == null) {
                                                oooO0O15.OooO00o(true);
                                            }
                                        }
                                    }
                                }
                            }
                            bundle2.remove(ChainPoint.TYPE);
                            bundle2.remove(ChainPoint.CHAIN_ID);
                            bundle2.remove(ChainPoint.PAGE_PATH);
                            Unit unit53 = Unit.f67061a;
                            str3 = "miniapp_time";
                            str13 = str3;
                            z10 = false;
                            z11 = true;
                            j11 = 0;
                            j12 = 0;
                            str7 = str13;
                            j14 = j12;
                            if (str11 != null) {
                                str9 = str14;
                            } else {
                                str9 = str14;
                            }
                            if (j14 > j11) {
                                str9 = "-耗时:" + j14 + ((Object) str9);
                            }
                            if (j14 > j11) {
                                pointAnalyseType = target;
                                if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                                    TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                                }
                            } else {
                                pointAnalyseType = target;
                            }
                            if (str10 != null) {
                                des = target.getDes();
                                sb2 = new StringBuilder();
                                sb2.append("[");
                                sb2.append(str10);
                                sb2.append("]:");
                            } else {
                                des = target.getDes();
                                sb2 = new StringBuilder();
                            }
                            sb2.append(des);
                            sb2.append((Object) str9);
                            String string1117 = sb2.toString();
                            ReportProxy reportProxy1117 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                            bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string1117);
                            data = target.getData();
                            if (data != null) {
                                Set<Map.Entry<String, Object>> setEntrySet1117 = data.entrySet();
                                Intrinsics.g(setEntrySet1117, "it.entries");
                                it = setEntrySet1117.iterator();
                                while (it.hasNext()) {
                                    entry = (Map.Entry) it.next();
                                    value = entry.getValue();
                                    if (value instanceof String) {
                                        String str111111117 = (String) entry.getKey();
                                        Object value11111114 = entry.getValue();
                                        Intrinsics.f(value11111114, "null cannot be cast to non-null type kotlin.String");
                                        bundle2.putString(str111111117, (String) value11111114);
                                    } else if (value instanceof Long) {
                                        String str111111118 = (String) entry.getKey();
                                        Object value11111115 = entry.getValue();
                                        Intrinsics.f(value11111115, "null cannot be cast to non-null type kotlin.Long");
                                        bundle2.putLong(str111111118, ((Long) value11111115).longValue());
                                    }
                                }
                                Unit unit111111110 = Unit.f67061a;
                            }
                            Unit unit111111111 = Unit.f67061a;
                            reportProxy1117.report(str10, str7, bundle2);
                            if (j14 != j11) {
                                z10 = z11;
                            }
                            TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string1117, z10);
                            a.a(pointAnalyseType, string1117);
                        } else {
                            com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O24 = this.OooO0Oo.get(appId);
                            if (oooO0O24 != null && (mapOooO0O4 = oooO0O24.OooO0O0()) != null && mapOooO0O4.containsKey(str11) && (oooO0O17 = this.OooO0Oo.get(appId)) != null && (mapOooO00o4 = oooO0O17.OooO00o()) != null) {
                                long jCurrentTimeMillis6 = System.currentTimeMillis();
                                com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O25 = this.OooO0Oo.get(appId);
                                mapOooO00o4.put(str11, Long.valueOf(jCurrentTimeMillis6 - ((oooO0O25 == null || (mapOooO0O5 = oooO0O25.OooO0O0()) == null || (l13 = mapOooO0O5.get(str11)) == null) ? 0L : l13.longValue())));
                            }
                        }
                        z12 = true;
                        if (Intrinsics.c(str11, ChainPoint.page)) {
                            str14 = "";
                            str11 = str11;
                            if (Intrinsics.c(str11, ChainPoint.app)) {
                                oooO0O3 = this.OooO0Oo.get(appId);
                                if (oooO0O3 != null) {
                                    strOooO0o = oooO0O3.OooO0o();
                                } else {
                                    strOooO0o = null;
                                }
                                if (Intrinsics.c(pagePath, strOooO0o)) {
                                    oooO0O4 = this.OooO0Oo.get(appId);
                                    if (oooO0O4 == null) {
                                        bundle2 = bundle2;
                                    } else {
                                        bundle2 = bundle2;
                                    }
                                    TmcLogger.d("oldChain", "reportApp -> msg:" + str11 + ", type:" + string20 + ", pagePath:" + pagePath + ", reportPagePath:" + reportPagePath);
                                    OooO00o(str);
                                    str10 = str;
                                    OooO00o(bundle2, str10);
                                    OooO00o();
                                    bundle2.putString("object_id", "300");
                                    oooO0O5 = this.OooO0Oo.get(appId);
                                    if (oooO0O5 != null) {
                                        str4 = str12;
                                    } else {
                                        str4 = str12;
                                    }
                                    bundle2.putString(PointConstants.POINT_PAGE_PATH, reportPagePath);
                                    if (str10 != null) {
                                        appFindApp = ((AppManager) TmcProxy.get(AppManager.class)).findApp(str10);
                                        if (appFindApp != null) {
                                            context = null;
                                        } else {
                                            context = null;
                                        }
                                        if (context instanceof BaseActivity) {
                                            baseActivity = (BaseActivity) context;
                                        } else {
                                            baseActivity = null;
                                        }
                                        if (baseActivity != null) {
                                            boolValueOf = Boolean.valueOf(baseActivity.getMStarted());
                                        } else {
                                            boolValueOf = null;
                                        }
                                        bundle2.putString(IntegrationConstants.IS_FOREGROUND, String.valueOf(boolValueOf));
                                        Unit unit54 = Unit.f67061a;
                                    }
                                    bundle2.putString("app_launcher_status", "true");
                                    oooO0O6 = this.OooO0Oo.get(appId);
                                    if (oooO0O6 != null) {
                                        zOooO = oooO0O6.OooO();
                                    } else {
                                        zOooO = false;
                                    }
                                    bundle2.putBoolean(LauncherMiniAppConfigHelper.KEY_OFF_SCREEN_RENDER, zOooO);
                                    oooO0O7 = this.OooO0Oo.get(appId);
                                    if (oooO0O7 != null) {
                                        iOooO0Oo = oooO0O7.OooO0Oo();
                                    } else {
                                        iOooO0Oo = -1;
                                    }
                                    bundle2.putInt("downloadFrameworkMode", iOooO0Oo);
                                    oooO0O8 = this.OooO0Oo.get(appId);
                                    if (oooO0O8 != null) {
                                        iOooO0OO = oooO0O8.OooO0OO();
                                    } else {
                                        iOooO0OO = -1;
                                    }
                                    bundle2.putInt("downloadAppMode", iOooO0OO);
                                    oooO0O9 = this.OooO0Oo.get(appId);
                                    if (oooO0O9 != null) {
                                        iOooOO0o = oooO0O9.OooOO0o();
                                    } else {
                                        iOooOO0o = -1;
                                    }
                                    bundle2.putInt("zipFrameworkMode", iOooOO0o);
                                    com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O26 = this.OooO0Oo.get(appId);
                                    bundle2.putInt("zipAppMode", oooO0O26 != null ? oooO0O26.OooOO0O() : -1);
                                    oooO0O10 = this.OooO0Oo.get(appId);
                                    if (oooO0O10 != null) {
                                        strOooO0o0 = str14;
                                    } else {
                                        strOooO0o0 = str14;
                                    }
                                    bundle2.putString("appH5ProgressStatus", strOooO0o0);
                                    oooO0O11 = this.OooO0Oo.get(appId);
                                    if (oooO0O11 != null) {
                                        strOooOOO0 = str14;
                                    } else {
                                        strOooOOO0 = str14;
                                    }
                                    bundle2.putString("appDomContentLoadedStatus", strOooOOO0);
                                    String str25 = str4 + ChainPoint.TotalCommunicationTime;
                                    ICommunicationTimeProxy iCommunicationTimeProxy5 = (ICommunicationTimeProxy) TmcProxy.get(ICommunicationTimeProxy.class);
                                    oooO0O12 = this.OooO0Oo.get(appId);
                                    if (oooO0O12 != null) {
                                        strOooO0o1 = null;
                                    } else {
                                        strOooO0o1 = null;
                                    }
                                    bundle2.putLong(str25, iCommunicationTimeProxy5.getTotalTime(strOooO0o1));
                                    String str26 = str4 + ChainPoint.TotalCommunicationNum;
                                    ICommunicationTimeProxy iCommunicationTimeProxy6 = (ICommunicationTimeProxy) TmcProxy.get(ICommunicationTimeProxy.class);
                                    oooO0O13 = this.OooO0Oo.get(appId);
                                    if (oooO0O13 != null) {
                                        strOooO0o2 = null;
                                    } else {
                                        strOooO0o2 = null;
                                    }
                                    bundle2.putInt(str26, iCommunicationTimeProxy6.getTotalNum(strOooO0o2));
                                    oooO0O14 = this.OooO0Oo.get(appId);
                                    if (oooO0O14 != null) {
                                        strOooO0Oo = oooOO4.OooO0Oo();
                                    }
                                    bundle2.putString("navigationType", strOooO0Oo);
                                    oooO0O15 = this.OooO0Oo.get(appId);
                                    if (oooO0O15 == null) {
                                        oooO0O15.OooO00o(true);
                                    }
                                }
                            }
                        } else {
                            oooO0O16 = this.OooO0Oo.get(appId);
                            if (oooO0O16 != null) {
                                strOooO0o3 = oooO0O16.OooO0o();
                            } else {
                                strOooO0o3 = null;
                            }
                            if (Intrinsics.c(pagePath, strOooO0o3)) {
                                Intrinsics.g(appId, "appId");
                                Intrinsics.g(pagePath, "pagePath");
                                Intrinsics.g(reportPagePath, "reportPagePath");
                                str14 = "";
                                OooO00o(appId, pagePath, bundle2, str, reportPagePath);
                                str10 = str;
                                str11 = str2;
                                bundle2 = bundle2;
                            } else {
                                str14 = "";
                                str11 = str11;
                                if (Intrinsics.c(str11, ChainPoint.app)) {
                                    oooO0O3 = this.OooO0Oo.get(appId);
                                    if (oooO0O3 != null) {
                                        strOooO0o = oooO0O3.OooO0o();
                                    } else {
                                        strOooO0o = null;
                                    }
                                    if (Intrinsics.c(pagePath, strOooO0o)) {
                                        oooO0O4 = this.OooO0Oo.get(appId);
                                        if (oooO0O4 == null) {
                                            bundle2 = bundle2;
                                        } else {
                                            bundle2 = bundle2;
                                        }
                                        TmcLogger.d("oldChain", "reportApp -> msg:" + str11 + ", type:" + string20 + ", pagePath:" + pagePath + ", reportPagePath:" + reportPagePath);
                                        OooO00o(str);
                                        str10 = str;
                                        OooO00o(bundle2, str10);
                                        OooO00o();
                                        bundle2.putString("object_id", "300");
                                        oooO0O5 = this.OooO0Oo.get(appId);
                                        if (oooO0O5 != null) {
                                            str4 = str12;
                                        } else {
                                            str4 = str12;
                                        }
                                        bundle2.putString(PointConstants.POINT_PAGE_PATH, reportPagePath);
                                        if (str10 != null) {
                                            appFindApp = ((AppManager) TmcProxy.get(AppManager.class)).findApp(str10);
                                            if (appFindApp != null) {
                                                context = null;
                                            } else {
                                                context = null;
                                            }
                                            if (context instanceof BaseActivity) {
                                                baseActivity = (BaseActivity) context;
                                            } else {
                                                baseActivity = null;
                                            }
                                            if (baseActivity != null) {
                                                boolValueOf = Boolean.valueOf(baseActivity.getMStarted());
                                            } else {
                                                boolValueOf = null;
                                            }
                                            bundle2.putString(IntegrationConstants.IS_FOREGROUND, String.valueOf(boolValueOf));
                                            Unit unit55 = Unit.f67061a;
                                        }
                                        bundle2.putString("app_launcher_status", "true");
                                        oooO0O6 = this.OooO0Oo.get(appId);
                                        if (oooO0O6 != null) {
                                            zOooO = oooO0O6.OooO();
                                        } else {
                                            zOooO = false;
                                        }
                                        bundle2.putBoolean(LauncherMiniAppConfigHelper.KEY_OFF_SCREEN_RENDER, zOooO);
                                        oooO0O7 = this.OooO0Oo.get(appId);
                                        if (oooO0O7 != null) {
                                            iOooO0Oo = oooO0O7.OooO0Oo();
                                        } else {
                                            iOooO0Oo = -1;
                                        }
                                        bundle2.putInt("downloadFrameworkMode", iOooO0Oo);
                                        oooO0O8 = this.OooO0Oo.get(appId);
                                        if (oooO0O8 != null) {
                                            iOooO0OO = oooO0O8.OooO0OO();
                                        } else {
                                            iOooO0OO = -1;
                                        }
                                        bundle2.putInt("downloadAppMode", iOooO0OO);
                                        oooO0O9 = this.OooO0Oo.get(appId);
                                        if (oooO0O9 != null) {
                                            iOooOO0o = oooO0O9.OooOO0o();
                                        } else {
                                            iOooOO0o = -1;
                                        }
                                        bundle2.putInt("zipFrameworkMode", iOooOO0o);
                                        com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O27 = this.OooO0Oo.get(appId);
                                        bundle2.putInt("zipAppMode", oooO0O27 != null ? oooO0O27.OooOO0O() : -1);
                                        oooO0O10 = this.OooO0Oo.get(appId);
                                        if (oooO0O10 != null) {
                                            strOooO0o0 = str14;
                                        } else {
                                            strOooO0o0 = str14;
                                        }
                                        bundle2.putString("appH5ProgressStatus", strOooO0o0);
                                        oooO0O11 = this.OooO0Oo.get(appId);
                                        if (oooO0O11 != null) {
                                            strOooOOO0 = str14;
                                        } else {
                                            strOooOOO0 = str14;
                                        }
                                        bundle2.putString("appDomContentLoadedStatus", strOooOOO0);
                                        String str27 = str4 + ChainPoint.TotalCommunicationTime;
                                        ICommunicationTimeProxy iCommunicationTimeProxy7 = (ICommunicationTimeProxy) TmcProxy.get(ICommunicationTimeProxy.class);
                                        oooO0O12 = this.OooO0Oo.get(appId);
                                        if (oooO0O12 != null) {
                                            strOooO0o1 = null;
                                        } else {
                                            strOooO0o1 = null;
                                        }
                                        bundle2.putLong(str27, iCommunicationTimeProxy7.getTotalTime(strOooO0o1));
                                        String str28 = str4 + ChainPoint.TotalCommunicationNum;
                                        ICommunicationTimeProxy iCommunicationTimeProxy8 = (ICommunicationTimeProxy) TmcProxy.get(ICommunicationTimeProxy.class);
                                        oooO0O13 = this.OooO0Oo.get(appId);
                                        if (oooO0O13 != null) {
                                            strOooO0o2 = null;
                                        } else {
                                            strOooO0o2 = null;
                                        }
                                        bundle2.putInt(str28, iCommunicationTimeProxy8.getTotalNum(strOooO0o2));
                                        oooO0O14 = this.OooO0Oo.get(appId);
                                        if (oooO0O14 != null) {
                                            strOooO0Oo = oooOO4.OooO0Oo();
                                        }
                                        bundle2.putString("navigationType", strOooO0Oo);
                                        oooO0O15 = this.OooO0Oo.get(appId);
                                        if (oooO0O15 == null) {
                                            oooO0O15.OooO00o(true);
                                        }
                                    }
                                }
                            }
                        }
                        bundle2.remove(ChainPoint.TYPE);
                        bundle2.remove(ChainPoint.CHAIN_ID);
                        bundle2.remove(ChainPoint.PAGE_PATH);
                        Unit unit56 = Unit.f67061a;
                        str3 = "miniapp_time";
                        str13 = str3;
                        z10 = false;
                        z11 = true;
                        j11 = 0;
                        j12 = 0;
                        str7 = str13;
                        j14 = j12;
                        if (str11 != null) {
                            str9 = str14;
                        } else {
                            str9 = str14;
                        }
                        if (j14 > j11) {
                            str9 = "-耗时:" + j14 + ((Object) str9);
                        }
                        if (j14 > j11) {
                            pointAnalyseType = target;
                            if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                                TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                            }
                        } else {
                            pointAnalyseType = target;
                        }
                        if (str10 != null) {
                            des = target.getDes();
                            sb2 = new StringBuilder();
                            sb2.append("[");
                            sb2.append(str10);
                            sb2.append("]:");
                        } else {
                            des = target.getDes();
                            sb2 = new StringBuilder();
                        }
                        sb2.append(des);
                        sb2.append((Object) str9);
                        String string1118 = sb2.toString();
                        ReportProxy reportProxy1118 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                        bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string1118);
                        data = target.getData();
                        if (data != null) {
                            Set<Map.Entry<String, Object>> setEntrySet1118 = data.entrySet();
                            Intrinsics.g(setEntrySet1118, "it.entries");
                            it = setEntrySet1118.iterator();
                            while (it.hasNext()) {
                                entry = (Map.Entry) it.next();
                                value = entry.getValue();
                                if (value instanceof String) {
                                    String str111111119 = (String) entry.getKey();
                                    Object value11111116 = entry.getValue();
                                    Intrinsics.f(value11111116, "null cannot be cast to non-null type kotlin.String");
                                    bundle2.putString(str111111119, (String) value11111116);
                                } else if (value instanceof Long) {
                                    String str1111111110 = (String) entry.getKey();
                                    Object value11111117 = entry.getValue();
                                    Intrinsics.f(value11111117, "null cannot be cast to non-null type kotlin.Long");
                                    bundle2.putLong(str1111111110, ((Long) value11111117).longValue());
                                }
                            }
                            Unit unit111111112 = Unit.f67061a;
                        }
                        Unit unit111111113 = Unit.f67061a;
                        reportProxy1118.report(str10, str7, bundle2);
                        if (j14 != j11) {
                            z10 = z11;
                        }
                        TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string1118, z10);
                        a.a(pointAnalyseType, string1118);
                    } catch (Throwable unused) {
                        return;
                    }
                }
                break;
            case 38:
                OooO0O0(bundle2);
                Unit unit57 = Unit.f67061a;
                str10 = str;
                str11 = str2;
                z10 = false;
                str14 = "";
                z11 = true;
                j11 = 0;
                j12 = j11;
                str13 = str14;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string1119 = sb2.toString();
                ReportProxy reportProxy1119 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string1119);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet1119 = data.entrySet();
                    Intrinsics.g(setEntrySet1119, "it.entries");
                    it = setEntrySet1119.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str1111111111 = (String) entry.getKey();
                            Object value11111118 = entry.getValue();
                            Intrinsics.f(value11111118, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str1111111111, (String) value11111118);
                        } else if (value instanceof Long) {
                            String str1111111112 = (String) entry.getKey();
                            Object value11111119 = entry.getValue();
                            Intrinsics.f(value11111119, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str1111111112, ((Long) value11111119).longValue());
                        }
                    }
                    Unit unit111111114 = Unit.f67061a;
                }
                Unit unit111111115 = Unit.f67061a;
                reportProxy1119.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string1119, z10);
                a.a(pointAnalyseType, string1119);
                break;
            case 39:
                if (str11 == null) {
                    str10 = str;
                    str11 = str2;
                    str14 = "";
                    bundle2 = bundle2;
                    str7 = "miniapp_exposure";
                    z10 = false;
                    z11 = true;
                    j11 = 0;
                    j14 = 0;
                    if (str11 != null) {
                        str9 = str14;
                    } else {
                        str9 = str14;
                    }
                    if (j14 > j11) {
                        str9 = "-耗时:" + j14 + ((Object) str9);
                    }
                    if (j14 > j11) {
                        pointAnalyseType = target;
                        if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                            TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                        }
                    } else {
                        pointAnalyseType = target;
                    }
                    if (str10 != null) {
                        des = target.getDes();
                        sb2 = new StringBuilder();
                        sb2.append("[");
                        sb2.append(str10);
                        sb2.append("]:");
                    } else {
                        des = target.getDes();
                        sb2 = new StringBuilder();
                    }
                    sb2.append(des);
                    sb2.append((Object) str9);
                    String string11110 = sb2.toString();
                    ReportProxy reportProxy11110 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                    bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string11110);
                    data = target.getData();
                    if (data != null) {
                        Set<Map.Entry<String, Object>> setEntrySet11110 = data.entrySet();
                        Intrinsics.g(setEntrySet11110, "it.entries");
                        it = setEntrySet11110.iterator();
                        while (it.hasNext()) {
                            entry = (Map.Entry) it.next();
                            value = entry.getValue();
                            if (value instanceof String) {
                                String str1111111113 = (String) entry.getKey();
                                Object value111111110 = entry.getValue();
                                Intrinsics.f(value111111110, "null cannot be cast to non-null type kotlin.String");
                                bundle2.putString(str1111111113, (String) value111111110);
                            } else if (value instanceof Long) {
                                String str1111111114 = (String) entry.getKey();
                                Object value111111111 = entry.getValue();
                                Intrinsics.f(value111111111, "null cannot be cast to non-null type kotlin.Long");
                                bundle2.putLong(str1111111114, ((Long) value111111111).longValue());
                            }
                        }
                        Unit unit111111116 = Unit.f67061a;
                    }
                    Unit unit111111117 = Unit.f67061a;
                    reportProxy11110.report(str10, str7, bundle2);
                    if (j14 != j11) {
                        z10 = z11;
                    }
                    TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string11110, z10);
                    a.a(pointAnalyseType, string11110);
                } else {
                    try {
                        String string22 = bundle2.getString(ChainPoint.TYPE, "");
                        String string23 = bundle2.getString(ChainPoint.CHAIN_ID, "");
                        String string24 = bundle2.getString(ChainPoint.PAGE_PATH, "");
                        String string25 = bundle2.getString(ChainPoint.REPORT_PAGE_PATH, "");
                        TmcLogger.d("oldChain", "chainClear -> msg:" + str11 + ", type:" + string22 + ", pagePath:" + string24 + ", reportPagePath:" + string25);
                        if (TextUtils.isEmpty(string25)) {
                            string25 = string24;
                        }
                        if (!Intrinsics.c(string22, "app")) {
                            if (Intrinsics.c(string22, "page")) {
                                com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O28 = this.OooO0Oo.get(string23);
                                if (Intrinsics.c(string24, oooO0O28 != null ? oooO0O28.OooO0o() : null)) {
                                    com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O29 = this.OooO0Oo.get(string23);
                                    if (oooO0O29 != null && (mapOooOO15 = oooO0O29.OooOO0()) != null) {
                                        mapOooOO15.remove(string24);
                                        break;
                                    }
                                } else {
                                    com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O30 = this.OooO0Oo.get(string23);
                                    Map<String, Long> mapOooO0O6 = (oooO0O30 == null || (mapOooOO14 = oooO0O30.OooOO0()) == null || (oooOO12 = mapOooOO14.get(string24)) == null) ? null : oooOO12.OooO0O0();
                                    com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O31 = this.OooO0Oo.get(string23);
                                    Map<String, Long> mapOooO00o5 = (oooO0O31 == null || (mapOooOO13 = oooO0O31.OooOO0()) == null || (oooOO11 = mapOooOO13.get(string24)) == null) ? null : oooOO11.OooO00o();
                                    if (mapOooO0O6 != null) {
                                        str6 = "zipAppMode";
                                        str5 = "zipFrameworkMode";
                                        if (mapOooO0O6.containsKey(ChainPoint.page) && mapOooO00o5 != null && mapOooO00o5.containsKey(ChainPoint.page)) {
                                            ICommunicationTimeProxy iCommunicationTimeProxy9 = (ICommunicationTimeProxy) TmcProxy.get(ICommunicationTimeProxy.class);
                                            com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O32 = this.OooO0Oo.get(string23);
                                            if (oooO0O32 != null && (mapOooOO12 = oooO0O32.OooOO0()) != null && (oooOO10 = mapOooOO12.get(string24)) != null) {
                                                strOooO0Oo = oooOO10.OooO0o0();
                                            }
                                            iCommunicationTimeProxy9.clear(strOooO0Oo);
                                            com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O33 = this.OooO0Oo.get(string23);
                                            if (oooO0O33 != null && (mapOooOO11 = oooO0O33.OooOO0()) != null) {
                                                mapOooOO11.remove(string24);
                                                break;
                                            }
                                        }
                                    } else {
                                        str5 = "zipFrameworkMode";
                                        str6 = "zipAppMode";
                                    }
                                    bundle2.putString("object_id", "204");
                                    bundle2.putString(PointConstants.POINT_PAGE_PATH, string25);
                                    bundle2.putString("open_page_status", "false");
                                    try {
                                        Gson gson = new Gson();
                                        Pair pairA = TuplesKt.a("chainStartData", mapOooO0O6);
                                        Pair pairA2 = TuplesKt.a("chainEndData", mapOooO00o5);
                                        Pair[] pairArr = new Pair[2];
                                        z13 = false;
                                        try {
                                            pairArr[0] = pairA;
                                            pairArr[1] = pairA2;
                                            bundle2.putString("open_page_fail_reason", gson.toJson(MapsKt.j(pairArr)).toString());
                                            break;
                                        } catch (Throwable unused2) {
                                        }
                                    } catch (Throwable unused3) {
                                        z13 = false;
                                    }
                                    com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O34 = this.OooO0Oo.get(string23);
                                    bundle2.putInt("downloadFrameworkMode", oooO0O34 != null ? oooO0O34.OooO0Oo() : -1);
                                    com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O35 = this.OooO0Oo.get(string23);
                                    if (oooO0O35 == null || (mapOooOO10 = oooO0O35.OooOO0()) == null || (oooOO9 = mapOooOO10.get(string24)) == null || (strOooO0OO = oooOO9.OooO0OO()) == null) {
                                        strOooO0OO = "";
                                    }
                                    bundle2.putString("pageH5ProgressStatus", strOooO0OO);
                                    com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O36 = this.OooO0Oo.get(string23);
                                    if (oooO0O36 == null || (mapOooOO9 = oooO0O36.OooOO0()) == null || (oooOO8 = mapOooOO9.get(string24)) == null || (strOooO0o4 = oooOO8.OooO0o()) == null) {
                                        strOooO0o4 = "";
                                    }
                                    bundle2.putString("pageDomContentLoadedStatus", strOooO0o4);
                                    com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O37 = this.OooO0Oo.get(string23);
                                    bundle2.putInt("downloadAppMode", oooO0O37 != null ? oooO0O37.OooO0OO() : -1);
                                    com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O38 = this.OooO0Oo.get(string23);
                                    bundle2.putInt(str5, oooO0O38 != null ? oooO0O38.OooOO0o() : -1);
                                    com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O39 = this.OooO0Oo.get(string23);
                                    bundle2.putInt(str6, oooO0O39 != null ? oooO0O39.OooOO0O() : -1);
                                    com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O40 = this.OooO0Oo.get(string23);
                                    if (oooO0O40 != null && (mapOooOO8 = oooO0O40.OooOO0()) != null && (oooOO7 = mapOooOO8.get(string24)) != null) {
                                        strOooO0Oo = oooOO7.OooO0Oo();
                                    }
                                    bundle2.putString("navigationType", strOooO0Oo);
                                    com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O41 = this.OooO0Oo.get(string23);
                                    if (oooO0O41 != null && (mapOooOO7 = oooO0O41.OooOO0()) != null) {
                                        mapOooOO7.remove(string24);
                                    }
                                }
                            }
                            bundle2.remove(ChainPoint.TYPE);
                            bundle2.remove(ChainPoint.CHAIN_ID);
                            bundle2.remove(ChainPoint.PAGE_PATH);
                            Unit unit58 = Unit.f67061a;
                            str10 = str;
                            str11 = str2;
                            bundle2 = bundle2;
                            z10 = z13;
                            str13 = "miniapp_exposure";
                            str14 = "";
                            z11 = true;
                            j11 = 0;
                            j12 = 0;
                            str7 = str13;
                            j14 = j12;
                            if (str11 != null) {
                                str9 = str14;
                            } else {
                                str9 = str14;
                            }
                            if (j14 > j11) {
                                str9 = "-耗时:" + j14 + ((Object) str9);
                            }
                            if (j14 > j11) {
                                pointAnalyseType = target;
                                if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                                    TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                                }
                            } else {
                                pointAnalyseType = target;
                            }
                            if (str10 != null) {
                                des = target.getDes();
                                sb2 = new StringBuilder();
                                sb2.append("[");
                                sb2.append(str10);
                                sb2.append("]:");
                            } else {
                                des = target.getDes();
                                sb2 = new StringBuilder();
                            }
                            sb2.append(des);
                            sb2.append((Object) str9);
                            String string11111 = sb2.toString();
                            ReportProxy reportProxy11111 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                            bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string11111);
                            data = target.getData();
                            if (data != null) {
                                Set<Map.Entry<String, Object>> setEntrySet11111 = data.entrySet();
                                Intrinsics.g(setEntrySet11111, "it.entries");
                                it = setEntrySet11111.iterator();
                                while (it.hasNext()) {
                                    entry = (Map.Entry) it.next();
                                    value = entry.getValue();
                                    if (value instanceof String) {
                                        String str1111111115 = (String) entry.getKey();
                                        Object value111111112 = entry.getValue();
                                        Intrinsics.f(value111111112, "null cannot be cast to non-null type kotlin.String");
                                        bundle2.putString(str1111111115, (String) value111111112);
                                    } else if (value instanceof Long) {
                                        String str1111111116 = (String) entry.getKey();
                                        Object value111111113 = entry.getValue();
                                        Intrinsics.f(value111111113, "null cannot be cast to non-null type kotlin.Long");
                                        bundle2.putLong(str1111111116, ((Long) value111111113).longValue());
                                    }
                                }
                                Unit unit111111118 = Unit.f67061a;
                            }
                            Unit unit111111119 = Unit.f67061a;
                            reportProxy11111.report(str10, str7, bundle2);
                            if (j14 != j11) {
                                z10 = z11;
                            }
                            TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string11111, z10);
                            a.a(pointAnalyseType, string11111);
                        } else {
                            com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O42 = this.OooO0Oo.get(string23);
                            Map<String, Long> mapOooO0O7 = oooO0O42 != null ? oooO0O42.OooO0O0() : null;
                            com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O43 = this.OooO0Oo.get(string23);
                            Map<String, Long> mapOooO00o6 = oooO0O43 != null ? oooO0O43.OooO00o() : null;
                            com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O44 = this.OooO0Oo.get(string23);
                            String strOooO0o6 = oooO0O44 != null ? oooO0O44.OooO0o() : null;
                            if (mapOooO0O7 != null && mapOooO0O7.containsKey(ChainPoint.app) && mapOooO00o6 != null && mapOooO00o6.containsKey(ChainPoint.app)) {
                                ICommunicationTimeProxy iCommunicationTimeProxy10 = (ICommunicationTimeProxy) TmcProxy.get(ICommunicationTimeProxy.class);
                                com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O45 = this.OooO0Oo.get(string23);
                                if (oooO0O45 != null && (mapOooOO16 = oooO0O45.OooOO0()) != null && (oooOO13 = mapOooOO16.get(strOooO0o6)) != null) {
                                    strOooO0Oo = oooOO13.OooO0o0();
                                }
                                iCommunicationTimeProxy10.clear(strOooO0Oo);
                                this.OooO0Oo.remove(string23);
                            } else {
                                bundle2.putString("object_id", "203");
                                bundle2.putString(PointConstants.POINT_PAGE_PATH, string25);
                                bundle2.putString("app_launcher_status", "false");
                                try {
                                    bundle2.putString("app_launcher_fail_reason", new Gson().toJson(MapsKt.j(TuplesKt.a("chainStartData", mapOooO0O7), TuplesKt.a("chainEndData", mapOooO00o6))).toString());
                                    break;
                                } catch (Throwable unused4) {
                                }
                                com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O46 = this.OooO0Oo.get(string23);
                                bundle2.putInt("downloadFrameworkMode", oooO0O46 != null ? oooO0O46.OooO0Oo() : -1);
                                com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O47 = this.OooO0Oo.get(string23);
                                bundle2.putInt("downloadAppMode", oooO0O47 != null ? oooO0O47.OooO0OO() : -1);
                                com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O48 = this.OooO0Oo.get(string23);
                                bundle2.putInt("zipFrameworkMode", oooO0O48 != null ? oooO0O48.OooOO0o() : -1);
                                com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O49 = this.OooO0Oo.get(string23);
                                bundle2.putInt("zipAppMode", oooO0O49 != null ? oooO0O49.OooOO0O() : -1);
                                com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O50 = this.OooO0Oo.get(string23);
                                if (oooO0O50 == null || (strOooO0o5 = oooO0O50.OooO0o0()) == null) {
                                    strOooO0o5 = "";
                                }
                                bundle2.putString("appH5ProgressStatus", strOooO0o5);
                                com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O51 = this.OooO0Oo.get(string23);
                                if (oooO0O51 == null || (strOooOOO1 = oooO0O51.OooOOO0()) == null) {
                                    strOooOOO1 = "";
                                }
                                bundle2.putString("appDomContentLoadedStatus", strOooOOO1);
                                com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O52 = this.OooO0Oo.get(string23);
                                bundle2.putBoolean(LauncherMiniAppConfigHelper.KEY_OFF_SCREEN_RENDER, oooO0O52 != null ? oooO0O52.OooO() : false);
                                if (!bundle2.containsKey(TmcConstants.KEY_PAGE_RANDOM_ID)) {
                                    com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O53 = this.OooO0Oo.get(string23);
                                    bundle2.putString(TmcConstants.KEY_PAGE_RANDOM_ID, oooO0O53 != null ? oooO0O53.OooO0oO() : null);
                                }
                                com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O54 = this.OooO0Oo.get(string23);
                                bundle2.putString("navigationType", oooO0O54 != null ? oooO0O54.OooO0oo() : null);
                                this.OooO0Oo.remove(string23);
                            }
                        }
                        z13 = false;
                        bundle2.remove(ChainPoint.TYPE);
                        bundle2.remove(ChainPoint.CHAIN_ID);
                        bundle2.remove(ChainPoint.PAGE_PATH);
                        Unit unit59 = Unit.f67061a;
                        str10 = str;
                        str11 = str2;
                        bundle2 = bundle2;
                        z10 = z13;
                        str13 = "miniapp_exposure";
                        str14 = "";
                        z11 = true;
                        j11 = 0;
                        j12 = 0;
                        str7 = str13;
                        j14 = j12;
                        if (str11 != null) {
                            str9 = str14;
                        } else {
                            str9 = str14;
                        }
                        if (j14 > j11) {
                            str9 = "-耗时:" + j14 + ((Object) str9);
                        }
                        if (j14 > j11) {
                            pointAnalyseType = target;
                            if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                                TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                            }
                        } else {
                            pointAnalyseType = target;
                        }
                        if (str10 != null) {
                            des = target.getDes();
                            sb2 = new StringBuilder();
                            sb2.append("[");
                            sb2.append(str10);
                            sb2.append("]:");
                        } else {
                            des = target.getDes();
                            sb2 = new StringBuilder();
                        }
                        sb2.append(des);
                        sb2.append((Object) str9);
                        String string11112 = sb2.toString();
                        ReportProxy reportProxy11112 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                        bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string11112);
                        data = target.getData();
                        if (data != null) {
                            Set<Map.Entry<String, Object>> setEntrySet11112 = data.entrySet();
                            Intrinsics.g(setEntrySet11112, "it.entries");
                            it = setEntrySet11112.iterator();
                            while (it.hasNext()) {
                                entry = (Map.Entry) it.next();
                                value = entry.getValue();
                                if (value instanceof String) {
                                    String str1111111117 = (String) entry.getKey();
                                    Object value111111114 = entry.getValue();
                                    Intrinsics.f(value111111114, "null cannot be cast to non-null type kotlin.String");
                                    bundle2.putString(str1111111117, (String) value111111114);
                                } else if (value instanceof Long) {
                                    String str1111111118 = (String) entry.getKey();
                                    Object value111111115 = entry.getValue();
                                    Intrinsics.f(value111111115, "null cannot be cast to non-null type kotlin.Long");
                                    bundle2.putLong(str1111111118, ((Long) value111111115).longValue());
                                }
                            }
                            Unit unit1111111110 = Unit.f67061a;
                        }
                        Unit unit1111111111 = Unit.f67061a;
                        reportProxy11112.report(str10, str7, bundle2);
                        if (j14 != j11) {
                            z10 = z11;
                        }
                        TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string11112, z10);
                        a.a(pointAnalyseType, string11112);
                    } catch (Throwable unused5) {
                        return;
                    }
                }
                break;
            case 40:
                OooO00o(bundle2);
                Unit unit60 = Unit.f67061a;
                str8 = "mini_h5_onPageFinished";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string11113 = sb2.toString();
                ReportProxy reportProxy11113 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string11113);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet11113 = data.entrySet();
                    Intrinsics.g(setEntrySet11113, "it.entries");
                    it = setEntrySet11113.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str1111111119 = (String) entry.getKey();
                            Object value111111116 = entry.getValue();
                            Intrinsics.f(value111111116, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str1111111119, (String) value111111116);
                        } else if (value instanceof Long) {
                            String str11111111110 = (String) entry.getKey();
                            Object value111111117 = entry.getValue();
                            Intrinsics.f(value111111117, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11111111110, ((Long) value111111117).longValue());
                        }
                    }
                    Unit unit1111111112 = Unit.f67061a;
                }
                Unit unit1111111113 = Unit.f67061a;
                reportProxy11113.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string11113, z10);
                a.a(pointAnalyseType, string11113);
                break;
            case 41:
                Unit unit61 = Unit.f67061a;
                str8 = "miniapp_log_e";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string11114 = sb2.toString();
                ReportProxy reportProxy11114 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string11114);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet11114 = data.entrySet();
                    Intrinsics.g(setEntrySet11114, "it.entries");
                    it = setEntrySet11114.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11111111111 = (String) entry.getKey();
                            Object value111111118 = entry.getValue();
                            Intrinsics.f(value111111118, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11111111111, (String) value111111118);
                        } else if (value instanceof Long) {
                            String str11111111112 = (String) entry.getKey();
                            Object value111111119 = entry.getValue();
                            Intrinsics.f(value111111119, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11111111112, ((Long) value111111119).longValue());
                        }
                    }
                    Unit unit1111111114 = Unit.f67061a;
                }
                Unit unit1111111115 = Unit.f67061a;
                reportProxy11114.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string11114, z10);
                a.a(pointAnalyseType, string11114);
                break;
            case 42:
                bundle2.putString("gaId", DeviceUtil.getGAId());
                Unit unit62 = Unit.f67061a;
                str8 = "privacy_policy_click";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string11115 = sb2.toString();
                ReportProxy reportProxy11115 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string11115);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet11115 = data.entrySet();
                    Intrinsics.g(setEntrySet11115, "it.entries");
                    it = setEntrySet11115.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11111111113 = (String) entry.getKey();
                            Object value1111111110 = entry.getValue();
                            Intrinsics.f(value1111111110, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11111111113, (String) value1111111110);
                        } else if (value instanceof Long) {
                            String str11111111114 = (String) entry.getKey();
                            Object value1111111111 = entry.getValue();
                            Intrinsics.f(value1111111111, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11111111114, ((Long) value1111111111).longValue());
                        }
                    }
                    Unit unit1111111116 = Unit.f67061a;
                }
                Unit unit1111111117 = Unit.f67061a;
                reportProxy11115.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string11115, z10);
                a.a(pointAnalyseType, string11115);
                break;
            case 43:
                Unit unit63 = Unit.f67061a;
                str8 = "miniapp_get_package_file";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string11116 = sb2.toString();
                ReportProxy reportProxy11116 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string11116);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet11116 = data.entrySet();
                    Intrinsics.g(setEntrySet11116, "it.entries");
                    it = setEntrySet11116.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11111111115 = (String) entry.getKey();
                            Object value1111111112 = entry.getValue();
                            Intrinsics.f(value1111111112, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11111111115, (String) value1111111112);
                        } else if (value instanceof Long) {
                            String str11111111116 = (String) entry.getKey();
                            Object value1111111113 = entry.getValue();
                            Intrinsics.f(value1111111113, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11111111116, ((Long) value1111111113).longValue());
                        }
                    }
                    Unit unit1111111118 = Unit.f67061a;
                }
                Unit unit1111111119 = Unit.f67061a;
                reportProxy11116.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string11116, z10);
                a.a(pointAnalyseType, string11116);
                break;
            case 44:
                bundle2.putString("object_id", "901");
                Unit unit64 = Unit.f67061a;
                str13 = "miniapp_package_update";
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string11117 = sb2.toString();
                ReportProxy reportProxy11117 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string11117);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet11117 = data.entrySet();
                    Intrinsics.g(setEntrySet11117, "it.entries");
                    it = setEntrySet11117.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11111111117 = (String) entry.getKey();
                            Object value1111111114 = entry.getValue();
                            Intrinsics.f(value1111111114, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11111111117, (String) value1111111114);
                        } else if (value instanceof Long) {
                            String str11111111118 = (String) entry.getKey();
                            Object value1111111115 = entry.getValue();
                            Intrinsics.f(value1111111115, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11111111118, ((Long) value1111111115).longValue());
                        }
                    }
                    Unit unit11111111110 = Unit.f67061a;
                }
                Unit unit11111111111 = Unit.f67061a;
                reportProxy11117.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string11117, z10);
                a.a(pointAnalyseType, string11117);
                break;
            case 45:
                bundle2.putString("object_id", "902");
                Unit unit65 = Unit.f67061a;
                str13 = "miniapp_package_update";
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string11118 = sb2.toString();
                ReportProxy reportProxy11118 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string11118);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet11118 = data.entrySet();
                    Intrinsics.g(setEntrySet11118, "it.entries");
                    it = setEntrySet11118.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11111111119 = (String) entry.getKey();
                            Object value1111111116 = entry.getValue();
                            Intrinsics.f(value1111111116, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11111111119, (String) value1111111116);
                        } else if (value instanceof Long) {
                            String str111111111110 = (String) entry.getKey();
                            Object value1111111117 = entry.getValue();
                            Intrinsics.f(value1111111117, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str111111111110, ((Long) value1111111117).longValue());
                        }
                    }
                    Unit unit11111111112 = Unit.f67061a;
                }
                Unit unit11111111113 = Unit.f67061a;
                reportProxy11118.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string11118, z10);
                a.a(pointAnalyseType, string11118);
                break;
            case 46:
                bundle2.putString("object_id", "903");
                Unit unit66 = Unit.f67061a;
                str13 = "miniapp_package_update";
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string11119 = sb2.toString();
                ReportProxy reportProxy11119 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string11119);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet11119 = data.entrySet();
                    Intrinsics.g(setEntrySet11119, "it.entries");
                    it = setEntrySet11119.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str111111111111 = (String) entry.getKey();
                            Object value1111111118 = entry.getValue();
                            Intrinsics.f(value1111111118, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str111111111111, (String) value1111111118);
                        } else if (value instanceof Long) {
                            String str111111111112 = (String) entry.getKey();
                            Object value1111111119 = entry.getValue();
                            Intrinsics.f(value1111111119, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str111111111112, ((Long) value1111111119).longValue());
                        }
                    }
                    Unit unit11111111114 = Unit.f67061a;
                }
                Unit unit11111111115 = Unit.f67061a;
                reportProxy11119.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string11119, z10);
                a.a(pointAnalyseType, string11119);
                break;
            case 47:
                bundle2.putString("object_id", "904");
                Unit unit67 = Unit.f67061a;
                str13 = "miniapp_package_update";
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string111110 = sb2.toString();
                ReportProxy reportProxy111110 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string111110);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet111110 = data.entrySet();
                    Intrinsics.g(setEntrySet111110, "it.entries");
                    it = setEntrySet111110.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str111111111113 = (String) entry.getKey();
                            Object value11111111110 = entry.getValue();
                            Intrinsics.f(value11111111110, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str111111111113, (String) value11111111110);
                        } else if (value instanceof Long) {
                            String str111111111114 = (String) entry.getKey();
                            Object value11111111111 = entry.getValue();
                            Intrinsics.f(value11111111111, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str111111111114, ((Long) value11111111111).longValue());
                        }
                    }
                    Unit unit11111111116 = Unit.f67061a;
                }
                Unit unit11111111117 = Unit.f67061a;
                reportProxy111110.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string111110, z10);
                a.a(pointAnalyseType, string111110);
                break;
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                bundle2.putString("object_id", "905");
                Unit unit68 = Unit.f67061a;
                str13 = "miniapp_package_update";
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string111111 = sb2.toString();
                ReportProxy reportProxy111111 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string111111);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet111111 = data.entrySet();
                    Intrinsics.g(setEntrySet111111, "it.entries");
                    it = setEntrySet111111.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str111111111115 = (String) entry.getKey();
                            Object value11111111112 = entry.getValue();
                            Intrinsics.f(value11111111112, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str111111111115, (String) value11111111112);
                        } else if (value instanceof Long) {
                            String str111111111116 = (String) entry.getKey();
                            Object value11111111113 = entry.getValue();
                            Intrinsics.f(value11111111113, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str111111111116, ((Long) value11111111113).longValue());
                        }
                    }
                    Unit unit11111111118 = Unit.f67061a;
                }
                Unit unit11111111119 = Unit.f67061a;
                reportProxy111111.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string111111, z10);
                a.a(pointAnalyseType, string111111);
                break;
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                bundle2.putString("object_id", "906");
                Unit unit69 = Unit.f67061a;
                str13 = "miniapp_package_update";
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string111112 = sb2.toString();
                ReportProxy reportProxy111112 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string111112);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet111112 = data.entrySet();
                    Intrinsics.g(setEntrySet111112, "it.entries");
                    it = setEntrySet111112.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str111111111117 = (String) entry.getKey();
                            Object value11111111114 = entry.getValue();
                            Intrinsics.f(value11111111114, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str111111111117, (String) value11111111114);
                        } else if (value instanceof Long) {
                            String str111111111118 = (String) entry.getKey();
                            Object value11111111115 = entry.getValue();
                            Intrinsics.f(value11111111115, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str111111111118, ((Long) value11111111115).longValue());
                        }
                    }
                    Unit unit111111111110 = Unit.f67061a;
                }
                Unit unit111111111111 = Unit.f67061a;
                reportProxy111112.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string111112, z10);
                a.a(pointAnalyseType, string111112);
                break;
            case 50:
                bundle2.putString("object_id", "907");
                Unit unit70 = Unit.f67061a;
                str13 = "miniapp_package_update";
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string111113 = sb2.toString();
                ReportProxy reportProxy111113 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string111113);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet111113 = data.entrySet();
                    Intrinsics.g(setEntrySet111113, "it.entries");
                    it = setEntrySet111113.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str111111111119 = (String) entry.getKey();
                            Object value11111111116 = entry.getValue();
                            Intrinsics.f(value11111111116, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str111111111119, (String) value11111111116);
                        } else if (value instanceof Long) {
                            String str1111111111110 = (String) entry.getKey();
                            Object value11111111117 = entry.getValue();
                            Intrinsics.f(value11111111117, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str1111111111110, ((Long) value11111111117).longValue());
                        }
                    }
                    Unit unit111111111112 = Unit.f67061a;
                }
                Unit unit111111111113 = Unit.f67061a;
                reportProxy111113.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string111113, z10);
                a.a(pointAnalyseType, string111113);
                break;
            case AD_REWARD_USER_VALUE:
                if (str11 != null) {
                    if (!com.cloud.tmc.miniapp.performanceanalyse.app.OooO0O0.OooO00o.OooO0O0(str11, str10, bundle2)) {
                        Unit unit71 = Unit.f67061a;
                        str14 = "";
                        str10 = str10;
                        str11 = str11;
                        z10 = false;
                        z11 = true;
                        j11 = 0;
                        j12 = j11;
                        str13 = str14;
                        str7 = str13;
                        j14 = j12;
                        if (str11 != null) {
                            str9 = str14;
                        } else {
                            str9 = str14;
                        }
                        if (j14 > j11) {
                            str9 = "-耗时:" + j14 + ((Object) str9);
                        }
                        if (j14 > j11) {
                            pointAnalyseType = target;
                            if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                                TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                            }
                        } else {
                            pointAnalyseType = target;
                        }
                        if (str10 != null) {
                            des = target.getDes();
                            sb2 = new StringBuilder();
                            sb2.append("[");
                            sb2.append(str10);
                            sb2.append("]:");
                        } else {
                            des = target.getDes();
                            sb2 = new StringBuilder();
                        }
                        sb2.append(des);
                        sb2.append((Object) str9);
                        String string111114 = sb2.toString();
                        ReportProxy reportProxy111114 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                        bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string111114);
                        data = target.getData();
                        if (data != null) {
                            Set<Map.Entry<String, Object>> setEntrySet111114 = data.entrySet();
                            Intrinsics.g(setEntrySet111114, "it.entries");
                            it = setEntrySet111114.iterator();
                            while (it.hasNext()) {
                                entry = (Map.Entry) it.next();
                                value = entry.getValue();
                                if (value instanceof String) {
                                    String str1111111111111 = (String) entry.getKey();
                                    Object value11111111118 = entry.getValue();
                                    Intrinsics.f(value11111111118, "null cannot be cast to non-null type kotlin.String");
                                    bundle2.putString(str1111111111111, (String) value11111111118);
                                } else if (value instanceof Long) {
                                    String str1111111111112 = (String) entry.getKey();
                                    Object value11111111119 = entry.getValue();
                                    Intrinsics.f(value11111111119, "null cannot be cast to non-null type kotlin.Long");
                                    bundle2.putLong(str1111111111112, ((Long) value11111111119).longValue());
                                }
                            }
                            Unit unit111111111114 = Unit.f67061a;
                        }
                        Unit unit111111111115 = Unit.f67061a;
                        reportProxy111114.report(str10, str7, bundle2);
                        if (j14 != j11) {
                            z10 = z11;
                        }
                        TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string111114, z10);
                        a.a(pointAnalyseType, string111114);
                        break;
                    }
                }
                str14 = "";
                str10 = str10;
                str11 = str11;
                str7 = str14;
                z10 = false;
                z11 = true;
                j11 = 0;
                j14 = 0;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string111115 = sb2.toString();
                ReportProxy reportProxy111115 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string111115);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet111115 = data.entrySet();
                    Intrinsics.g(setEntrySet111115, "it.entries");
                    it = setEntrySet111115.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str1111111111113 = (String) entry.getKey();
                            Object value111111111110 = entry.getValue();
                            Intrinsics.f(value111111111110, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str1111111111113, (String) value111111111110);
                        } else if (value instanceof Long) {
                            String str1111111111114 = (String) entry.getKey();
                            Object value111111111111 = entry.getValue();
                            Intrinsics.f(value111111111111, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str1111111111114, ((Long) value111111111111).longValue());
                        }
                    }
                    Unit unit111111111116 = Unit.f67061a;
                }
                Unit unit111111111117 = Unit.f67061a;
                reportProxy111115.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string111115, z10);
                a.a(pointAnalyseType, string111115);
                break;
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                if (str11 != null) {
                    if (!com.cloud.tmc.miniapp.performanceanalyse.app.OooO0O0.OooO00o.OooO00o(str11, str10, bundle2)) {
                        Unit unit72 = Unit.f67061a;
                        str14 = "";
                        str10 = str10;
                        str11 = str11;
                        z10 = false;
                        z11 = true;
                        j11 = 0;
                        j12 = j11;
                        str13 = str14;
                        str7 = str13;
                        j14 = j12;
                        if (str11 != null) {
                            str9 = str14;
                        } else {
                            str9 = str14;
                        }
                        if (j14 > j11) {
                            str9 = "-耗时:" + j14 + ((Object) str9);
                        }
                        if (j14 > j11) {
                            pointAnalyseType = target;
                            if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                                TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                            }
                        } else {
                            pointAnalyseType = target;
                        }
                        if (str10 != null) {
                            des = target.getDes();
                            sb2 = new StringBuilder();
                            sb2.append("[");
                            sb2.append(str10);
                            sb2.append("]:");
                        } else {
                            des = target.getDes();
                            sb2 = new StringBuilder();
                        }
                        sb2.append(des);
                        sb2.append((Object) str9);
                        String string111116 = sb2.toString();
                        ReportProxy reportProxy111116 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                        bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string111116);
                        data = target.getData();
                        if (data != null) {
                            Set<Map.Entry<String, Object>> setEntrySet111116 = data.entrySet();
                            Intrinsics.g(setEntrySet111116, "it.entries");
                            it = setEntrySet111116.iterator();
                            while (it.hasNext()) {
                                entry = (Map.Entry) it.next();
                                value = entry.getValue();
                                if (value instanceof String) {
                                    String str1111111111115 = (String) entry.getKey();
                                    Object value111111111112 = entry.getValue();
                                    Intrinsics.f(value111111111112, "null cannot be cast to non-null type kotlin.String");
                                    bundle2.putString(str1111111111115, (String) value111111111112);
                                } else if (value instanceof Long) {
                                    String str1111111111116 = (String) entry.getKey();
                                    Object value111111111113 = entry.getValue();
                                    Intrinsics.f(value111111111113, "null cannot be cast to non-null type kotlin.Long");
                                    bundle2.putLong(str1111111111116, ((Long) value111111111113).longValue());
                                }
                            }
                            Unit unit111111111118 = Unit.f67061a;
                        }
                        Unit unit111111111119 = Unit.f67061a;
                        reportProxy111116.report(str10, str7, bundle2);
                        if (j14 != j11) {
                            z10 = z11;
                        }
                        TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string111116, z10);
                        a.a(pointAnalyseType, string111116);
                        break;
                    }
                }
                str14 = "";
                str10 = str10;
                str11 = str11;
                str7 = str14;
                z10 = false;
                z11 = true;
                j11 = 0;
                j14 = 0;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string111117 = sb2.toString();
                ReportProxy reportProxy111117 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string111117);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet111117 = data.entrySet();
                    Intrinsics.g(setEntrySet111117, "it.entries");
                    it = setEntrySet111117.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str1111111111117 = (String) entry.getKey();
                            Object value111111111114 = entry.getValue();
                            Intrinsics.f(value111111111114, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str1111111111117, (String) value111111111114);
                        } else if (value instanceof Long) {
                            String str1111111111118 = (String) entry.getKey();
                            Object value111111111115 = entry.getValue();
                            Intrinsics.f(value111111111115, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str1111111111118, ((Long) value111111111115).longValue());
                        }
                    }
                    Unit unit1111111111110 = Unit.f67061a;
                }
                Unit unit1111111111111 = Unit.f67061a;
                reportProxy111117.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string111117, z10);
                a.a(pointAnalyseType, string111117);
                break;
            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                if (str11 != null) {
                    if (!com.cloud.tmc.miniapp.performanceanalyse.page.OooO0O0.OooO00o.OooO0O0(str11, str10, bundle2)) {
                        Unit unit73 = Unit.f67061a;
                        str14 = "";
                        str10 = str10;
                        str11 = str11;
                        z10 = false;
                        z11 = true;
                        j11 = 0;
                        j12 = j11;
                        str13 = str14;
                        str7 = str13;
                        j14 = j12;
                        if (str11 != null) {
                            str9 = str14;
                        } else {
                            str9 = str14;
                        }
                        if (j14 > j11) {
                            str9 = "-耗时:" + j14 + ((Object) str9);
                        }
                        if (j14 > j11) {
                            pointAnalyseType = target;
                            if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                                TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                            }
                        } else {
                            pointAnalyseType = target;
                        }
                        if (str10 != null) {
                            des = target.getDes();
                            sb2 = new StringBuilder();
                            sb2.append("[");
                            sb2.append(str10);
                            sb2.append("]:");
                        } else {
                            des = target.getDes();
                            sb2 = new StringBuilder();
                        }
                        sb2.append(des);
                        sb2.append((Object) str9);
                        String string111118 = sb2.toString();
                        ReportProxy reportProxy111118 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                        bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string111118);
                        data = target.getData();
                        if (data != null) {
                            Set<Map.Entry<String, Object>> setEntrySet111118 = data.entrySet();
                            Intrinsics.g(setEntrySet111118, "it.entries");
                            it = setEntrySet111118.iterator();
                            while (it.hasNext()) {
                                entry = (Map.Entry) it.next();
                                value = entry.getValue();
                                if (value instanceof String) {
                                    String str1111111111119 = (String) entry.getKey();
                                    Object value111111111116 = entry.getValue();
                                    Intrinsics.f(value111111111116, "null cannot be cast to non-null type kotlin.String");
                                    bundle2.putString(str1111111111119, (String) value111111111116);
                                } else if (value instanceof Long) {
                                    String str11111111111110 = (String) entry.getKey();
                                    Object value111111111117 = entry.getValue();
                                    Intrinsics.f(value111111111117, "null cannot be cast to non-null type kotlin.Long");
                                    bundle2.putLong(str11111111111110, ((Long) value111111111117).longValue());
                                }
                            }
                            Unit unit1111111111112 = Unit.f67061a;
                        }
                        Unit unit1111111111113 = Unit.f67061a;
                        reportProxy111118.report(str10, str7, bundle2);
                        if (j14 != j11) {
                            z10 = z11;
                        }
                        TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string111118, z10);
                        a.a(pointAnalyseType, string111118);
                        break;
                    }
                }
                str14 = "";
                str10 = str10;
                str11 = str11;
                str7 = str14;
                z10 = false;
                z11 = true;
                j11 = 0;
                j14 = 0;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string111119 = sb2.toString();
                ReportProxy reportProxy111119 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string111119);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet111119 = data.entrySet();
                    Intrinsics.g(setEntrySet111119, "it.entries");
                    it = setEntrySet111119.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11111111111111 = (String) entry.getKey();
                            Object value111111111118 = entry.getValue();
                            Intrinsics.f(value111111111118, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11111111111111, (String) value111111111118);
                        } else if (value instanceof Long) {
                            String str11111111111112 = (String) entry.getKey();
                            Object value111111111119 = entry.getValue();
                            Intrinsics.f(value111111111119, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11111111111112, ((Long) value111111111119).longValue());
                        }
                    }
                    Unit unit1111111111114 = Unit.f67061a;
                }
                Unit unit1111111111115 = Unit.f67061a;
                reportProxy111119.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string111119, z10);
                a.a(pointAnalyseType, string111119);
                break;
            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                if (str11 != null) {
                    if (!com.cloud.tmc.miniapp.performanceanalyse.page.OooO0O0.OooO00o.OooO00o(str11, str10, bundle2)) {
                        Unit unit74 = Unit.f67061a;
                        str14 = "";
                        str10 = str10;
                        str11 = str11;
                        z10 = false;
                        z11 = true;
                        j11 = 0;
                        j12 = j11;
                        str13 = str14;
                        str7 = str13;
                        j14 = j12;
                        if (str11 != null) {
                            str9 = str14;
                        } else {
                            str9 = str14;
                        }
                        if (j14 > j11) {
                            str9 = "-耗时:" + j14 + ((Object) str9);
                        }
                        if (j14 > j11) {
                            pointAnalyseType = target;
                            if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                                TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                            }
                        } else {
                            pointAnalyseType = target;
                        }
                        if (str10 != null) {
                            des = target.getDes();
                            sb2 = new StringBuilder();
                            sb2.append("[");
                            sb2.append(str10);
                            sb2.append("]:");
                        } else {
                            des = target.getDes();
                            sb2 = new StringBuilder();
                        }
                        sb2.append(des);
                        sb2.append((Object) str9);
                        String string1111110 = sb2.toString();
                        ReportProxy reportProxy1111110 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                        bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string1111110);
                        data = target.getData();
                        if (data != null) {
                            Set<Map.Entry<String, Object>> setEntrySet1111110 = data.entrySet();
                            Intrinsics.g(setEntrySet1111110, "it.entries");
                            it = setEntrySet1111110.iterator();
                            while (it.hasNext()) {
                                entry = (Map.Entry) it.next();
                                value = entry.getValue();
                                if (value instanceof String) {
                                    String str11111111111113 = (String) entry.getKey();
                                    Object value1111111111110 = entry.getValue();
                                    Intrinsics.f(value1111111111110, "null cannot be cast to non-null type kotlin.String");
                                    bundle2.putString(str11111111111113, (String) value1111111111110);
                                } else if (value instanceof Long) {
                                    String str11111111111114 = (String) entry.getKey();
                                    Object value1111111111111 = entry.getValue();
                                    Intrinsics.f(value1111111111111, "null cannot be cast to non-null type kotlin.Long");
                                    bundle2.putLong(str11111111111114, ((Long) value1111111111111).longValue());
                                }
                            }
                            Unit unit1111111111116 = Unit.f67061a;
                        }
                        Unit unit1111111111117 = Unit.f67061a;
                        reportProxy1111110.report(str10, str7, bundle2);
                        if (j14 != j11) {
                            z10 = z11;
                        }
                        TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string1111110, z10);
                        a.a(pointAnalyseType, string1111110);
                        break;
                    }
                }
                str14 = "";
                str10 = str10;
                str11 = str11;
                str7 = str14;
                z10 = false;
                z11 = true;
                j11 = 0;
                j14 = 0;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string1111111 = sb2.toString();
                ReportProxy reportProxy1111111 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string1111111);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet1111111 = data.entrySet();
                    Intrinsics.g(setEntrySet1111111, "it.entries");
                    it = setEntrySet1111111.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11111111111115 = (String) entry.getKey();
                            Object value1111111111112 = entry.getValue();
                            Intrinsics.f(value1111111111112, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11111111111115, (String) value1111111111112);
                        } else if (value instanceof Long) {
                            String str11111111111116 = (String) entry.getKey();
                            Object value1111111111113 = entry.getValue();
                            Intrinsics.f(value1111111111113, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11111111111116, ((Long) value1111111111113).longValue());
                        }
                    }
                    Unit unit1111111111118 = Unit.f67061a;
                }
                Unit unit1111111111119 = Unit.f67061a;
                reportProxy1111111.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string1111111, z10);
                a.a(pointAnalyseType, string1111111);
                break;
            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                if (!com.cloud.tmc.miniapp.performanceanalyse.app.OooO0O0.OooO00o.OooO0O0(str10, bundle2)) {
                    Unit unit75 = Unit.f67061a;
                    str14 = "";
                    str10 = str10;
                    str11 = str11;
                    z10 = false;
                    z11 = true;
                    j11 = 0;
                    j12 = j11;
                    str13 = str14;
                    str7 = str13;
                    j14 = j12;
                    if (str11 != null) {
                        str9 = str14;
                    } else {
                        str9 = str14;
                    }
                    if (j14 > j11) {
                        str9 = "-耗时:" + j14 + ((Object) str9);
                    }
                    if (j14 > j11) {
                        pointAnalyseType = target;
                        if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                            TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                        }
                    } else {
                        pointAnalyseType = target;
                    }
                    if (str10 != null) {
                        des = target.getDes();
                        sb2 = new StringBuilder();
                        sb2.append("[");
                        sb2.append(str10);
                        sb2.append("]:");
                    } else {
                        des = target.getDes();
                        sb2 = new StringBuilder();
                    }
                    sb2.append(des);
                    sb2.append((Object) str9);
                    String string1111112 = sb2.toString();
                    ReportProxy reportProxy1111112 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                    bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string1111112);
                    data = target.getData();
                    if (data != null) {
                        Set<Map.Entry<String, Object>> setEntrySet1111112 = data.entrySet();
                        Intrinsics.g(setEntrySet1111112, "it.entries");
                        it = setEntrySet1111112.iterator();
                        while (it.hasNext()) {
                            entry = (Map.Entry) it.next();
                            value = entry.getValue();
                            if (value instanceof String) {
                                String str11111111111117 = (String) entry.getKey();
                                Object value1111111111114 = entry.getValue();
                                Intrinsics.f(value1111111111114, "null cannot be cast to non-null type kotlin.String");
                                bundle2.putString(str11111111111117, (String) value1111111111114);
                            } else if (value instanceof Long) {
                                String str11111111111118 = (String) entry.getKey();
                                Object value1111111111115 = entry.getValue();
                                Intrinsics.f(value1111111111115, "null cannot be cast to non-null type kotlin.Long");
                                bundle2.putLong(str11111111111118, ((Long) value1111111111115).longValue());
                            }
                        }
                        Unit unit11111111111110 = Unit.f67061a;
                    }
                    Unit unit11111111111111 = Unit.f67061a;
                    reportProxy1111112.report(str10, str7, bundle2);
                    if (j14 != j11) {
                        z10 = z11;
                    }
                    TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string1111112, z10);
                    a.a(pointAnalyseType, string1111112);
                    break;
                }
                break;
            case AD_VISIBILITY_VALUE:
                if (!com.cloud.tmc.miniapp.performanceanalyse.page.OooO0O0.OooO00o.OooO0O0(str10, bundle2)) {
                    Unit unit76 = Unit.f67061a;
                    str14 = "";
                    str10 = str10;
                    str11 = str11;
                    z10 = false;
                    z11 = true;
                    j11 = 0;
                    j12 = j11;
                    str13 = str14;
                    str7 = str13;
                    j14 = j12;
                    if (str11 != null) {
                        str9 = str14;
                    } else {
                        str9 = str14;
                    }
                    if (j14 > j11) {
                        str9 = "-耗时:" + j14 + ((Object) str9);
                    }
                    if (j14 > j11) {
                        pointAnalyseType = target;
                        if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                            TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                        }
                    } else {
                        pointAnalyseType = target;
                    }
                    if (str10 != null) {
                        des = target.getDes();
                        sb2 = new StringBuilder();
                        sb2.append("[");
                        sb2.append(str10);
                        sb2.append("]:");
                    } else {
                        des = target.getDes();
                        sb2 = new StringBuilder();
                    }
                    sb2.append(des);
                    sb2.append((Object) str9);
                    String string1111113 = sb2.toString();
                    ReportProxy reportProxy1111113 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                    bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string1111113);
                    data = target.getData();
                    if (data != null) {
                        Set<Map.Entry<String, Object>> setEntrySet1111113 = data.entrySet();
                        Intrinsics.g(setEntrySet1111113, "it.entries");
                        it = setEntrySet1111113.iterator();
                        while (it.hasNext()) {
                            entry = (Map.Entry) it.next();
                            value = entry.getValue();
                            if (value instanceof String) {
                                String str11111111111119 = (String) entry.getKey();
                                Object value1111111111116 = entry.getValue();
                                Intrinsics.f(value1111111111116, "null cannot be cast to non-null type kotlin.String");
                                bundle2.putString(str11111111111119, (String) value1111111111116);
                            } else if (value instanceof Long) {
                                String str111111111111110 = (String) entry.getKey();
                                Object value1111111111117 = entry.getValue();
                                Intrinsics.f(value1111111111117, "null cannot be cast to non-null type kotlin.Long");
                                bundle2.putLong(str111111111111110, ((Long) value1111111111117).longValue());
                            }
                        }
                        Unit unit11111111111112 = Unit.f67061a;
                    }
                    Unit unit11111111111113 = Unit.f67061a;
                    reportProxy1111113.report(str10, str7, bundle2);
                    if (j14 != j11) {
                        z10 = z11;
                    }
                    TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string1111113, z10);
                    a.a(pointAnalyseType, string1111113);
                    break;
                }
                break;
            case 57:
                if (!com.cloud.tmc.miniapp.performanceanalyse.app.OooO0O0.OooO00o.OooO0OO(str10, bundle2)) {
                    Unit unit77 = Unit.f67061a;
                    str14 = "";
                    str10 = str10;
                    str11 = str11;
                    z10 = false;
                    z11 = true;
                    j11 = 0;
                    j12 = j11;
                    str13 = str14;
                    str7 = str13;
                    j14 = j12;
                    if (str11 != null) {
                        str9 = str14;
                    } else {
                        str9 = str14;
                    }
                    if (j14 > j11) {
                        str9 = "-耗时:" + j14 + ((Object) str9);
                    }
                    if (j14 > j11) {
                        pointAnalyseType = target;
                        if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                            TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                        }
                    } else {
                        pointAnalyseType = target;
                    }
                    if (str10 != null) {
                        des = target.getDes();
                        sb2 = new StringBuilder();
                        sb2.append("[");
                        sb2.append(str10);
                        sb2.append("]:");
                    } else {
                        des = target.getDes();
                        sb2 = new StringBuilder();
                    }
                    sb2.append(des);
                    sb2.append((Object) str9);
                    String string1111114 = sb2.toString();
                    ReportProxy reportProxy1111114 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                    bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string1111114);
                    data = target.getData();
                    if (data != null) {
                        Set<Map.Entry<String, Object>> setEntrySet1111114 = data.entrySet();
                        Intrinsics.g(setEntrySet1111114, "it.entries");
                        it = setEntrySet1111114.iterator();
                        while (it.hasNext()) {
                            entry = (Map.Entry) it.next();
                            value = entry.getValue();
                            if (value instanceof String) {
                                String str111111111111111 = (String) entry.getKey();
                                Object value1111111111118 = entry.getValue();
                                Intrinsics.f(value1111111111118, "null cannot be cast to non-null type kotlin.String");
                                bundle2.putString(str111111111111111, (String) value1111111111118);
                            } else if (value instanceof Long) {
                                String str111111111111112 = (String) entry.getKey();
                                Object value1111111111119 = entry.getValue();
                                Intrinsics.f(value1111111111119, "null cannot be cast to non-null type kotlin.Long");
                                bundle2.putLong(str111111111111112, ((Long) value1111111111119).longValue());
                            }
                        }
                        Unit unit11111111111114 = Unit.f67061a;
                    }
                    Unit unit11111111111115 = Unit.f67061a;
                    reportProxy1111114.report(str10, str7, bundle2);
                    if (j14 != j11) {
                        z10 = z11;
                    }
                    TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string1111114, z10);
                    a.a(pointAnalyseType, string1111114);
                    break;
                }
                break;
            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                if (!com.cloud.tmc.miniapp.performanceanalyse.app.OooO0O0.OooO00o.OooO00o(str10, bundle2)) {
                    Unit unit78 = Unit.f67061a;
                    str14 = "";
                    str10 = str10;
                    str11 = str11;
                    z10 = false;
                    z11 = true;
                    j11 = 0;
                    j12 = j11;
                    str13 = str14;
                    str7 = str13;
                    j14 = j12;
                    if (str11 != null) {
                        str9 = str14;
                    } else {
                        str9 = str14;
                    }
                    if (j14 > j11) {
                        str9 = "-耗时:" + j14 + ((Object) str9);
                    }
                    if (j14 > j11) {
                        pointAnalyseType = target;
                        if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                            TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                        }
                    } else {
                        pointAnalyseType = target;
                    }
                    if (str10 != null) {
                        des = target.getDes();
                        sb2 = new StringBuilder();
                        sb2.append("[");
                        sb2.append(str10);
                        sb2.append("]:");
                    } else {
                        des = target.getDes();
                        sb2 = new StringBuilder();
                    }
                    sb2.append(des);
                    sb2.append((Object) str9);
                    String string1111115 = sb2.toString();
                    ReportProxy reportProxy1111115 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                    bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string1111115);
                    data = target.getData();
                    if (data != null) {
                        Set<Map.Entry<String, Object>> setEntrySet1111115 = data.entrySet();
                        Intrinsics.g(setEntrySet1111115, "it.entries");
                        it = setEntrySet1111115.iterator();
                        while (it.hasNext()) {
                            entry = (Map.Entry) it.next();
                            value = entry.getValue();
                            if (value instanceof String) {
                                String str111111111111113 = (String) entry.getKey();
                                Object value11111111111110 = entry.getValue();
                                Intrinsics.f(value11111111111110, "null cannot be cast to non-null type kotlin.String");
                                bundle2.putString(str111111111111113, (String) value11111111111110);
                            } else if (value instanceof Long) {
                                String str111111111111114 = (String) entry.getKey();
                                Object value11111111111111 = entry.getValue();
                                Intrinsics.f(value11111111111111, "null cannot be cast to non-null type kotlin.Long");
                                bundle2.putLong(str111111111111114, ((Long) value11111111111111).longValue());
                            }
                        }
                        Unit unit11111111111116 = Unit.f67061a;
                    }
                    Unit unit11111111111117 = Unit.f67061a;
                    reportProxy1111115.report(str10, str7, bundle2);
                    if (j14 != j11) {
                        z10 = z11;
                    }
                    TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string1111115, z10);
                    a.a(pointAnalyseType, string1111115);
                    break;
                }
                break;
            case 59:
                if (!com.cloud.tmc.miniapp.performanceanalyse.page.OooO0O0.OooO00o.OooO00o(str10, bundle2)) {
                    Unit unit79 = Unit.f67061a;
                    str14 = "";
                    str10 = str10;
                    str11 = str11;
                    z10 = false;
                    z11 = true;
                    j11 = 0;
                    j12 = j11;
                    str13 = str14;
                    str7 = str13;
                    j14 = j12;
                    if (str11 != null) {
                        str9 = str14;
                    } else {
                        str9 = str14;
                    }
                    if (j14 > j11) {
                        str9 = "-耗时:" + j14 + ((Object) str9);
                    }
                    if (j14 > j11) {
                        pointAnalyseType = target;
                        if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                            TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                        }
                    } else {
                        pointAnalyseType = target;
                    }
                    if (str10 != null) {
                        des = target.getDes();
                        sb2 = new StringBuilder();
                        sb2.append("[");
                        sb2.append(str10);
                        sb2.append("]:");
                    } else {
                        des = target.getDes();
                        sb2 = new StringBuilder();
                    }
                    sb2.append(des);
                    sb2.append((Object) str9);
                    String string1111116 = sb2.toString();
                    ReportProxy reportProxy1111116 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                    bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string1111116);
                    data = target.getData();
                    if (data != null) {
                        Set<Map.Entry<String, Object>> setEntrySet1111116 = data.entrySet();
                        Intrinsics.g(setEntrySet1111116, "it.entries");
                        it = setEntrySet1111116.iterator();
                        while (it.hasNext()) {
                            entry = (Map.Entry) it.next();
                            value = entry.getValue();
                            if (value instanceof String) {
                                String str111111111111115 = (String) entry.getKey();
                                Object value11111111111112 = entry.getValue();
                                Intrinsics.f(value11111111111112, "null cannot be cast to non-null type kotlin.String");
                                bundle2.putString(str111111111111115, (String) value11111111111112);
                            } else if (value instanceof Long) {
                                String str111111111111116 = (String) entry.getKey();
                                Object value11111111111113 = entry.getValue();
                                Intrinsics.f(value11111111111113, "null cannot be cast to non-null type kotlin.Long");
                                bundle2.putLong(str111111111111116, ((Long) value11111111111113).longValue());
                            }
                        }
                        Unit unit11111111111118 = Unit.f67061a;
                    }
                    Unit unit11111111111119 = Unit.f67061a;
                    reportProxy1111116.report(str10, str7, bundle2);
                    if (j14 != j11) {
                        z10 = z11;
                    }
                    TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string1111116, z10);
                    a.a(pointAnalyseType, string1111116);
                    break;
                }
                break;
            case 60:
                Unit unit80 = Unit.f67061a;
                str8 = "miniapp_foreground_time";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string1111117 = sb2.toString();
                ReportProxy reportProxy1111117 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string1111117);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet1111117 = data.entrySet();
                    Intrinsics.g(setEntrySet1111117, "it.entries");
                    it = setEntrySet1111117.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str111111111111117 = (String) entry.getKey();
                            Object value11111111111114 = entry.getValue();
                            Intrinsics.f(value11111111111114, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str111111111111117, (String) value11111111111114);
                        } else if (value instanceof Long) {
                            String str111111111111118 = (String) entry.getKey();
                            Object value11111111111115 = entry.getValue();
                            Intrinsics.f(value11111111111115, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str111111111111118, ((Long) value11111111111115).longValue());
                        }
                    }
                    Unit unit111111111111110 = Unit.f67061a;
                }
                Unit unit111111111111111 = Unit.f67061a;
                reportProxy1111117.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string1111117, z10);
                a.a(pointAnalyseType, string1111117);
                break;
            case 61:
                Unit unit81 = Unit.f67061a;
                str8 = "miniapp_get_odid";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string1111118 = sb2.toString();
                ReportProxy reportProxy1111118 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string1111118);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet1111118 = data.entrySet();
                    Intrinsics.g(setEntrySet1111118, "it.entries");
                    it = setEntrySet1111118.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str111111111111119 = (String) entry.getKey();
                            Object value11111111111116 = entry.getValue();
                            Intrinsics.f(value11111111111116, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str111111111111119, (String) value11111111111116);
                        } else if (value instanceof Long) {
                            String str1111111111111110 = (String) entry.getKey();
                            Object value11111111111117 = entry.getValue();
                            Intrinsics.f(value11111111111117, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str1111111111111110, ((Long) value11111111111117).longValue());
                        }
                    }
                    Unit unit111111111111112 = Unit.f67061a;
                }
                Unit unit111111111111113 = Unit.f67061a;
                reportProxy1111118.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string1111118, z10);
                a.a(pointAnalyseType, string1111118);
                break;
            case 62:
                Unit unit82 = Unit.f67061a;
                str8 = "miniapp_hot_open";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string1111119 = sb2.toString();
                ReportProxy reportProxy1111119 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string1111119);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet1111119 = data.entrySet();
                    Intrinsics.g(setEntrySet1111119, "it.entries");
                    it = setEntrySet1111119.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str1111111111111111 = (String) entry.getKey();
                            Object value11111111111118 = entry.getValue();
                            Intrinsics.f(value11111111111118, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str1111111111111111, (String) value11111111111118);
                        } else if (value instanceof Long) {
                            String str1111111111111112 = (String) entry.getKey();
                            Object value11111111111119 = entry.getValue();
                            Intrinsics.f(value11111111111119, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str1111111111111112, ((Long) value11111111111119).longValue());
                        }
                    }
                    Unit unit111111111111114 = Unit.f67061a;
                }
                Unit unit111111111111115 = Unit.f67061a;
                reportProxy1111119.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string1111119, z10);
                a.a(pointAnalyseType, string1111119);
                break;
            case 63:
                Unit unit83 = Unit.f67061a;
                str8 = "mini_open_page_action";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string11111110 = sb2.toString();
                ReportProxy reportProxy11111110 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string11111110);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet11111110 = data.entrySet();
                    Intrinsics.g(setEntrySet11111110, "it.entries");
                    it = setEntrySet11111110.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str1111111111111113 = (String) entry.getKey();
                            Object value111111111111110 = entry.getValue();
                            Intrinsics.f(value111111111111110, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str1111111111111113, (String) value111111111111110);
                        } else if (value instanceof Long) {
                            String str1111111111111114 = (String) entry.getKey();
                            Object value111111111111111 = entry.getValue();
                            Intrinsics.f(value111111111111111, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str1111111111111114, ((Long) value111111111111111).longValue());
                        }
                    }
                    Unit unit111111111111116 = Unit.f67061a;
                }
                Unit unit111111111111117 = Unit.f67061a;
                reportProxy11111110.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string11111110, z10);
                a.a(pointAnalyseType, string11111110);
                break;
            case 64:
                Unit unit84 = Unit.f67061a;
                str8 = "Pinforlater_ex";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string11111111 = sb2.toString();
                ReportProxy reportProxy11111111 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string11111111);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet11111111 = data.entrySet();
                    Intrinsics.g(setEntrySet11111111, "it.entries");
                    it = setEntrySet11111111.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str1111111111111115 = (String) entry.getKey();
                            Object value111111111111112 = entry.getValue();
                            Intrinsics.f(value111111111111112, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str1111111111111115, (String) value111111111111112);
                        } else if (value instanceof Long) {
                            String str1111111111111116 = (String) entry.getKey();
                            Object value111111111111113 = entry.getValue();
                            Intrinsics.f(value111111111111113, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str1111111111111116, ((Long) value111111111111113).longValue());
                        }
                    }
                    Unit unit111111111111118 = Unit.f67061a;
                }
                Unit unit111111111111119 = Unit.f67061a;
                reportProxy11111111.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string11111111, z10);
                a.a(pointAnalyseType, string11111111);
                break;
            case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                Unit unit85 = Unit.f67061a;
                str8 = "Pinforlater_click";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string11111112 = sb2.toString();
                ReportProxy reportProxy11111112 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string11111112);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet11111112 = data.entrySet();
                    Intrinsics.g(setEntrySet11111112, "it.entries");
                    it = setEntrySet11111112.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str1111111111111117 = (String) entry.getKey();
                            Object value111111111111114 = entry.getValue();
                            Intrinsics.f(value111111111111114, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str1111111111111117, (String) value111111111111114);
                        } else if (value instanceof Long) {
                            String str1111111111111118 = (String) entry.getKey();
                            Object value111111111111115 = entry.getValue();
                            Intrinsics.f(value111111111111115, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str1111111111111118, ((Long) value111111111111115).longValue());
                        }
                    }
                    Unit unit1111111111111110 = Unit.f67061a;
                }
                Unit unit1111111111111111 = Unit.f67061a;
                reportProxy11111112.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string11111112, z10);
                a.a(pointAnalyseType, string11111112);
                break;
            case 66:
                Unit unit86 = Unit.f67061a;
                str8 = "later_banner_ex";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string11111113 = sb2.toString();
                ReportProxy reportProxy11111113 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string11111113);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet11111113 = data.entrySet();
                    Intrinsics.g(setEntrySet11111113, "it.entries");
                    it = setEntrySet11111113.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str1111111111111119 = (String) entry.getKey();
                            Object value111111111111116 = entry.getValue();
                            Intrinsics.f(value111111111111116, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str1111111111111119, (String) value111111111111116);
                        } else if (value instanceof Long) {
                            String str11111111111111110 = (String) entry.getKey();
                            Object value111111111111117 = entry.getValue();
                            Intrinsics.f(value111111111111117, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11111111111111110, ((Long) value111111111111117).longValue());
                        }
                    }
                    Unit unit1111111111111112 = Unit.f67061a;
                }
                Unit unit1111111111111113 = Unit.f67061a;
                reportProxy11111113.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string11111113, z10);
                a.a(pointAnalyseType, string11111113);
                break;
            case 67:
                Unit unit87 = Unit.f67061a;
                str8 = "later_banner_click";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string11111114 = sb2.toString();
                ReportProxy reportProxy11111114 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string11111114);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet11111114 = data.entrySet();
                    Intrinsics.g(setEntrySet11111114, "it.entries");
                    it = setEntrySet11111114.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11111111111111111 = (String) entry.getKey();
                            Object value111111111111118 = entry.getValue();
                            Intrinsics.f(value111111111111118, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11111111111111111, (String) value111111111111118);
                        } else if (value instanceof Long) {
                            String str11111111111111112 = (String) entry.getKey();
                            Object value111111111111119 = entry.getValue();
                            Intrinsics.f(value111111111111119, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11111111111111112, ((Long) value111111111111119).longValue());
                        }
                    }
                    Unit unit1111111111111114 = Unit.f67061a;
                }
                Unit unit1111111111111115 = Unit.f67061a;
                reportProxy11111114.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string11111114, z10);
                a.a(pointAnalyseType, string11111114);
                break;
            case 68:
                Unit unit88 = Unit.f67061a;
                str8 = "later_addmc_click";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string11111115 = sb2.toString();
                ReportProxy reportProxy11111115 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string11111115);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet11111115 = data.entrySet();
                    Intrinsics.g(setEntrySet11111115, "it.entries");
                    it = setEntrySet11111115.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11111111111111113 = (String) entry.getKey();
                            Object value1111111111111110 = entry.getValue();
                            Intrinsics.f(value1111111111111110, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11111111111111113, (String) value1111111111111110);
                        } else if (value instanceof Long) {
                            String str11111111111111114 = (String) entry.getKey();
                            Object value1111111111111111 = entry.getValue();
                            Intrinsics.f(value1111111111111111, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11111111111111114, ((Long) value1111111111111111).longValue());
                        }
                    }
                    Unit unit1111111111111116 = Unit.f67061a;
                }
                Unit unit1111111111111117 = Unit.f67061a;
                reportProxy11111115.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string11111115, z10);
                a.a(pointAnalyseType, string11111115);
                break;
            case 69:
                Unit unit89 = Unit.f67061a;
                str8 = "later_addmc_ex";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string11111116 = sb2.toString();
                ReportProxy reportProxy11111116 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string11111116);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet11111116 = data.entrySet();
                    Intrinsics.g(setEntrySet11111116, "it.entries");
                    it = setEntrySet11111116.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11111111111111115 = (String) entry.getKey();
                            Object value1111111111111112 = entry.getValue();
                            Intrinsics.f(value1111111111111112, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11111111111111115, (String) value1111111111111112);
                        } else if (value instanceof Long) {
                            String str11111111111111116 = (String) entry.getKey();
                            Object value1111111111111113 = entry.getValue();
                            Intrinsics.f(value1111111111111113, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11111111111111116, ((Long) value1111111111111113).longValue());
                        }
                    }
                    Unit unit1111111111111118 = Unit.f67061a;
                }
                Unit unit1111111111111119 = Unit.f67061a;
                reportProxy11111116.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string11111116, z10);
                a.a(pointAnalyseType, string11111116);
                break;
            case 70:
                Unit unit90 = Unit.f67061a;
                str8 = "privacy_ex";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string11111117 = sb2.toString();
                ReportProxy reportProxy11111117 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string11111117);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet11111117 = data.entrySet();
                    Intrinsics.g(setEntrySet11111117, "it.entries");
                    it = setEntrySet11111117.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11111111111111117 = (String) entry.getKey();
                            Object value1111111111111114 = entry.getValue();
                            Intrinsics.f(value1111111111111114, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11111111111111117, (String) value1111111111111114);
                        } else if (value instanceof Long) {
                            String str11111111111111118 = (String) entry.getKey();
                            Object value1111111111111115 = entry.getValue();
                            Intrinsics.f(value1111111111111115, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11111111111111118, ((Long) value1111111111111115).longValue());
                        }
                    }
                    Unit unit11111111111111110 = Unit.f67061a;
                }
                Unit unit11111111111111111 = Unit.f67061a;
                reportProxy11111117.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string11111117, z10);
                a.a(pointAnalyseType, string11111117);
                break;
            case 71:
                Unit unit91 = Unit.f67061a;
                str8 = "privacy_click";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string11111118 = sb2.toString();
                ReportProxy reportProxy11111118 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string11111118);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet11111118 = data.entrySet();
                    Intrinsics.g(setEntrySet11111118, "it.entries");
                    it = setEntrySet11111118.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11111111111111119 = (String) entry.getKey();
                            Object value1111111111111116 = entry.getValue();
                            Intrinsics.f(value1111111111111116, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11111111111111119, (String) value1111111111111116);
                        } else if (value instanceof Long) {
                            String str111111111111111110 = (String) entry.getKey();
                            Object value1111111111111117 = entry.getValue();
                            Intrinsics.f(value1111111111111117, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str111111111111111110, ((Long) value1111111111111117).longValue());
                        }
                    }
                    Unit unit11111111111111112 = Unit.f67061a;
                }
                Unit unit11111111111111113 = Unit.f67061a;
                reportProxy11111118.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string11111118, z10);
                a.a(pointAnalyseType, string11111118);
                break;
            case 72:
                Unit unit92 = Unit.f67061a;
                str8 = "addMiniAppToDesktop";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string11111119 = sb2.toString();
                ReportProxy reportProxy11111119 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string11111119);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet11111119 = data.entrySet();
                    Intrinsics.g(setEntrySet11111119, "it.entries");
                    it = setEntrySet11111119.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str111111111111111111 = (String) entry.getKey();
                            Object value1111111111111118 = entry.getValue();
                            Intrinsics.f(value1111111111111118, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str111111111111111111, (String) value1111111111111118);
                        } else if (value instanceof Long) {
                            String str111111111111111112 = (String) entry.getKey();
                            Object value1111111111111119 = entry.getValue();
                            Intrinsics.f(value1111111111111119, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str111111111111111112, ((Long) value1111111111111119).longValue());
                        }
                    }
                    Unit unit11111111111111114 = Unit.f67061a;
                }
                Unit unit11111111111111115 = Unit.f67061a;
                reportProxy11111119.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string11111119, z10);
                a.a(pointAnalyseType, string11111119);
                break;
            case 73:
                Unit unit93 = Unit.f67061a;
                str8 = "preRequestHtml";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string111111110 = sb2.toString();
                ReportProxy reportProxy111111110 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string111111110);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet111111110 = data.entrySet();
                    Intrinsics.g(setEntrySet111111110, "it.entries");
                    it = setEntrySet111111110.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str111111111111111113 = (String) entry.getKey();
                            Object value11111111111111110 = entry.getValue();
                            Intrinsics.f(value11111111111111110, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str111111111111111113, (String) value11111111111111110);
                        } else if (value instanceof Long) {
                            String str111111111111111114 = (String) entry.getKey();
                            Object value11111111111111111 = entry.getValue();
                            Intrinsics.f(value11111111111111111, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str111111111111111114, ((Long) value11111111111111111).longValue());
                        }
                    }
                    Unit unit11111111111111116 = Unit.f67061a;
                }
                Unit unit11111111111111117 = Unit.f67061a;
                reportProxy111111110.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string111111110, z10);
                a.a(pointAnalyseType, string111111110);
                break;
            case 74:
                Unit unit94 = Unit.f67061a;
                str8 = "preRequestHtmlRet";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string111111111 = sb2.toString();
                ReportProxy reportProxy111111111 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string111111111);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet111111111 = data.entrySet();
                    Intrinsics.g(setEntrySet111111111, "it.entries");
                    it = setEntrySet111111111.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str111111111111111115 = (String) entry.getKey();
                            Object value11111111111111112 = entry.getValue();
                            Intrinsics.f(value11111111111111112, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str111111111111111115, (String) value11111111111111112);
                        } else if (value instanceof Long) {
                            String str111111111111111116 = (String) entry.getKey();
                            Object value11111111111111113 = entry.getValue();
                            Intrinsics.f(value11111111111111113, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str111111111111111116, ((Long) value11111111111111113).longValue());
                        }
                    }
                    Unit unit11111111111111118 = Unit.f67061a;
                }
                Unit unit11111111111111119 = Unit.f67061a;
                reportProxy111111111.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string111111111, z10);
                a.a(pointAnalyseType, string111111111);
                break;
            case 75:
                Unit unit95 = Unit.f67061a;
                str8 = "getPreHtml";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string111111112 = sb2.toString();
                ReportProxy reportProxy111111112 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string111111112);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet111111112 = data.entrySet();
                    Intrinsics.g(setEntrySet111111112, "it.entries");
                    it = setEntrySet111111112.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str111111111111111117 = (String) entry.getKey();
                            Object value11111111111111114 = entry.getValue();
                            Intrinsics.f(value11111111111111114, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str111111111111111117, (String) value11111111111111114);
                        } else if (value instanceof Long) {
                            String str111111111111111118 = (String) entry.getKey();
                            Object value11111111111111115 = entry.getValue();
                            Intrinsics.f(value11111111111111115, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str111111111111111118, ((Long) value11111111111111115).longValue());
                        }
                    }
                    Unit unit111111111111111110 = Unit.f67061a;
                }
                Unit unit111111111111111111 = Unit.f67061a;
                reportProxy111111112.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string111111112, z10);
                a.a(pointAnalyseType, string111111112);
                break;
            case 76:
                Unit unit96 = Unit.f67061a;
                str8 = "getPreHtmlHit";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string111111113 = sb2.toString();
                ReportProxy reportProxy111111113 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string111111113);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet111111113 = data.entrySet();
                    Intrinsics.g(setEntrySet111111113, "it.entries");
                    it = setEntrySet111111113.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str111111111111111119 = (String) entry.getKey();
                            Object value11111111111111116 = entry.getValue();
                            Intrinsics.f(value11111111111111116, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str111111111111111119, (String) value11111111111111116);
                        } else if (value instanceof Long) {
                            String str1111111111111111110 = (String) entry.getKey();
                            Object value11111111111111117 = entry.getValue();
                            Intrinsics.f(value11111111111111117, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str1111111111111111110, ((Long) value11111111111111117).longValue());
                        }
                    }
                    Unit unit111111111111111112 = Unit.f67061a;
                }
                Unit unit111111111111111113 = Unit.f67061a;
                reportProxy111111113.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string111111113, z10);
                a.a(pointAnalyseType, string111111113);
                break;
            case 77:
                bundle2.putString("object_id", "27");
                Unit unit97 = Unit.f67061a;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string111111114 = sb2.toString();
                ReportProxy reportProxy111111114 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string111111114);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet111111114 = data.entrySet();
                    Intrinsics.g(setEntrySet111111114, "it.entries");
                    it = setEntrySet111111114.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str1111111111111111111 = (String) entry.getKey();
                            Object value11111111111111118 = entry.getValue();
                            Intrinsics.f(value11111111111111118, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str1111111111111111111, (String) value11111111111111118);
                        } else if (value instanceof Long) {
                            String str1111111111111111112 = (String) entry.getKey();
                            Object value11111111111111119 = entry.getValue();
                            Intrinsics.f(value11111111111111119, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str1111111111111111112, ((Long) value11111111111111119).longValue());
                        }
                    }
                    Unit unit111111111111111114 = Unit.f67061a;
                }
                Unit unit111111111111111115 = Unit.f67061a;
                reportProxy111111114.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string111111114, z10);
                a.a(pointAnalyseType, string111111114);
                break;
            case 78:
                Unit unit98 = Unit.f67061a;
                str8 = "preStrategyFail";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string111111115 = sb2.toString();
                ReportProxy reportProxy111111115 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string111111115);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet111111115 = data.entrySet();
                    Intrinsics.g(setEntrySet111111115, "it.entries");
                    it = setEntrySet111111115.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str1111111111111111113 = (String) entry.getKey();
                            Object value111111111111111110 = entry.getValue();
                            Intrinsics.f(value111111111111111110, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str1111111111111111113, (String) value111111111111111110);
                        } else if (value instanceof Long) {
                            String str1111111111111111114 = (String) entry.getKey();
                            Object value111111111111111111 = entry.getValue();
                            Intrinsics.f(value111111111111111111, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str1111111111111111114, ((Long) value111111111111111111).longValue());
                        }
                    }
                    Unit unit111111111111111116 = Unit.f67061a;
                }
                Unit unit111111111111111117 = Unit.f67061a;
                reportProxy111111115.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string111111115, z10);
                a.a(pointAnalyseType, string111111115);
                break;
            case 79:
                Unit unit99 = Unit.f67061a;
                str8 = "later_offline_ex";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string111111116 = sb2.toString();
                ReportProxy reportProxy111111116 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string111111116);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet111111116 = data.entrySet();
                    Intrinsics.g(setEntrySet111111116, "it.entries");
                    it = setEntrySet111111116.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str1111111111111111115 = (String) entry.getKey();
                            Object value111111111111111112 = entry.getValue();
                            Intrinsics.f(value111111111111111112, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str1111111111111111115, (String) value111111111111111112);
                        } else if (value instanceof Long) {
                            String str1111111111111111116 = (String) entry.getKey();
                            Object value111111111111111113 = entry.getValue();
                            Intrinsics.f(value111111111111111113, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str1111111111111111116, ((Long) value111111111111111113).longValue());
                        }
                    }
                    Unit unit111111111111111118 = Unit.f67061a;
                }
                Unit unit111111111111111119 = Unit.f67061a;
                reportProxy111111116.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string111111116, z10);
                a.a(pointAnalyseType, string111111116);
                break;
            case 80:
                Unit unit100 = Unit.f67061a;
                str8 = "later_offline_app_ex";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string111111117 = sb2.toString();
                ReportProxy reportProxy111111117 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string111111117);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet111111117 = data.entrySet();
                    Intrinsics.g(setEntrySet111111117, "it.entries");
                    it = setEntrySet111111117.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str1111111111111111117 = (String) entry.getKey();
                            Object value111111111111111114 = entry.getValue();
                            Intrinsics.f(value111111111111111114, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str1111111111111111117, (String) value111111111111111114);
                        } else if (value instanceof Long) {
                            String str1111111111111111118 = (String) entry.getKey();
                            Object value111111111111111115 = entry.getValue();
                            Intrinsics.f(value111111111111111115, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str1111111111111111118, ((Long) value111111111111111115).longValue());
                        }
                    }
                    Unit unit1111111111111111110 = Unit.f67061a;
                }
                Unit unit1111111111111111111 = Unit.f67061a;
                reportProxy111111117.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string111111117, z10);
                a.a(pointAnalyseType, string111111117);
                break;
            case TmcConstants.NOTIFY_ADDHOME_GUIDE_TOP_SHOW /* 81 */:
                Unit unit101 = Unit.f67061a;
                str8 = "later_offline_click";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string111111118 = sb2.toString();
                ReportProxy reportProxy111111118 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string111111118);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet111111118 = data.entrySet();
                    Intrinsics.g(setEntrySet111111118, "it.entries");
                    it = setEntrySet111111118.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str1111111111111111119 = (String) entry.getKey();
                            Object value111111111111111116 = entry.getValue();
                            Intrinsics.f(value111111111111111116, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str1111111111111111119, (String) value111111111111111116);
                        } else if (value instanceof Long) {
                            String str11111111111111111110 = (String) entry.getKey();
                            Object value111111111111111117 = entry.getValue();
                            Intrinsics.f(value111111111111111117, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11111111111111111110, ((Long) value111111111111111117).longValue());
                        }
                    }
                    Unit unit1111111111111111112 = Unit.f67061a;
                }
                Unit unit1111111111111111113 = Unit.f67061a;
                reportProxy111111118.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string111111118, z10);
                a.a(pointAnalyseType, string111111118);
                break;
            case TmcConstants.NOTIFY_ADDHOME_GUIDE_BOTTOM_SHOW /* 82 */:
                Unit unit102 = Unit.f67061a;
                str8 = "get-add-ex";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string111111119 = sb2.toString();
                ReportProxy reportProxy111111119 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string111111119);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet111111119 = data.entrySet();
                    Intrinsics.g(setEntrySet111111119, "it.entries");
                    it = setEntrySet111111119.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11111111111111111111 = (String) entry.getKey();
                            Object value111111111111111118 = entry.getValue();
                            Intrinsics.f(value111111111111111118, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11111111111111111111, (String) value111111111111111118);
                        } else if (value instanceof Long) {
                            String str11111111111111111112 = (String) entry.getKey();
                            Object value111111111111111119 = entry.getValue();
                            Intrinsics.f(value111111111111111119, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11111111111111111112, ((Long) value111111111111111119).longValue());
                        }
                    }
                    Unit unit1111111111111111114 = Unit.f67061a;
                }
                Unit unit1111111111111111115 = Unit.f67061a;
                reportProxy111111119.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string111111119, z10);
                a.a(pointAnalyseType, string111111119);
                break;
            case TmcConstants.NOTIFY_ADDHOME_GUIDE_BACK_SHOW /* 83 */:
                Unit unit103 = Unit.f67061a;
                str8 = "get-toast-add-ex";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string1111111110 = sb2.toString();
                ReportProxy reportProxy1111111110 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string1111111110);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet1111111110 = data.entrySet();
                    Intrinsics.g(setEntrySet1111111110, "it.entries");
                    it = setEntrySet1111111110.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11111111111111111113 = (String) entry.getKey();
                            Object value1111111111111111110 = entry.getValue();
                            Intrinsics.f(value1111111111111111110, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11111111111111111113, (String) value1111111111111111110);
                        } else if (value instanceof Long) {
                            String str11111111111111111114 = (String) entry.getKey();
                            Object value1111111111111111111 = entry.getValue();
                            Intrinsics.f(value1111111111111111111, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11111111111111111114, ((Long) value1111111111111111111).longValue());
                        }
                    }
                    Unit unit1111111111111111116 = Unit.f67061a;
                }
                Unit unit1111111111111111117 = Unit.f67061a;
                reportProxy1111111110.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string1111111110, z10);
                a.a(pointAnalyseType, string1111111110);
                break;
            case 84:
                Unit unit104 = Unit.f67061a;
                str8 = "get-add-click";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string1111111111 = sb2.toString();
                ReportProxy reportProxy1111111111 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string1111111111);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet1111111111 = data.entrySet();
                    Intrinsics.g(setEntrySet1111111111, "it.entries");
                    it = setEntrySet1111111111.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11111111111111111115 = (String) entry.getKey();
                            Object value1111111111111111112 = entry.getValue();
                            Intrinsics.f(value1111111111111111112, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11111111111111111115, (String) value1111111111111111112);
                        } else if (value instanceof Long) {
                            String str11111111111111111116 = (String) entry.getKey();
                            Object value1111111111111111113 = entry.getValue();
                            Intrinsics.f(value1111111111111111113, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11111111111111111116, ((Long) value1111111111111111113).longValue());
                        }
                    }
                    Unit unit1111111111111111118 = Unit.f67061a;
                }
                Unit unit1111111111111111119 = Unit.f67061a;
                reportProxy1111111111.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string1111111111, z10);
                a.a(pointAnalyseType, string1111111111);
                break;
            case 85:
                Unit unit105 = Unit.f67061a;
                str8 = "get-add-noshow";
                str13 = str8;
                z10 = false;
                z11 = true;
                j12 = 0;
                bundle2 = bundle2;
                j11 = 0;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string1111111112 = sb2.toString();
                ReportProxy reportProxy1111111112 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string1111111112);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet1111111112 = data.entrySet();
                    Intrinsics.g(setEntrySet1111111112, "it.entries");
                    it = setEntrySet1111111112.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11111111111111111117 = (String) entry.getKey();
                            Object value1111111111111111114 = entry.getValue();
                            Intrinsics.f(value1111111111111111114, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11111111111111111117, (String) value1111111111111111114);
                        } else if (value instanceof Long) {
                            String str11111111111111111118 = (String) entry.getKey();
                            Object value1111111111111111115 = entry.getValue();
                            Intrinsics.f(value1111111111111111115, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str11111111111111111118, ((Long) value1111111111111111115).longValue());
                        }
                    }
                    Unit unit11111111111111111110 = Unit.f67061a;
                }
                Unit unit11111111111111111111 = Unit.f67061a;
                reportProxy1111111112.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string1111111112, z10);
                a.a(pointAnalyseType, string1111111112);
                break;
            default:
                Unit unit106 = Unit.f67061a;
                str14 = "";
                str10 = str10;
                str11 = str11;
                z10 = false;
                z11 = true;
                j11 = 0;
                j12 = j11;
                str13 = str14;
                str7 = str13;
                j14 = j12;
                if (str11 != null) {
                    str9 = str14;
                } else {
                    str9 = str14;
                }
                if (j14 > j11) {
                    str9 = "-耗时:" + j14 + ((Object) str9);
                }
                if (j14 > j11) {
                    pointAnalyseType = target;
                    if (pointAnalyseType == PointAnalyseType.POINT_RENDER_T1) {
                        TmcLogger.d(StringsKt.S(str9, "-", "", false, 4, null));
                    }
                } else {
                    pointAnalyseType = target;
                }
                if (str10 != null) {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                    sb2.append("[");
                    sb2.append(str10);
                    sb2.append("]:");
                } else {
                    des = target.getDes();
                    sb2 = new StringBuilder();
                }
                sb2.append(des);
                sb2.append((Object) str9);
                String string1111111113 = sb2.toString();
                ReportProxy reportProxy1111111113 = (ReportProxy) TmcProxy.get(ReportProxy.class);
                bundle2.putString(PointAnalyseType.class.getSimpleName() + "." + target.name(), string1111111113);
                data = target.getData();
                if (data != null) {
                    Set<Map.Entry<String, Object>> setEntrySet1111111113 = data.entrySet();
                    Intrinsics.g(setEntrySet1111111113, "it.entries");
                    it = setEntrySet1111111113.iterator();
                    while (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value instanceof String) {
                            String str11111111111111111119 = (String) entry.getKey();
                            Object value1111111111111111116 = entry.getValue();
                            Intrinsics.f(value1111111111111111116, "null cannot be cast to non-null type kotlin.String");
                            bundle2.putString(str11111111111111111119, (String) value1111111111111111116);
                        } else if (value instanceof Long) {
                            String str111111111111111111110 = (String) entry.getKey();
                            Object value1111111111111111117 = entry.getValue();
                            Intrinsics.f(value1111111111111111117, "null cannot be cast to non-null type kotlin.Long");
                            bundle2.putLong(str111111111111111111110, ((Long) value1111111111111111117).longValue());
                        }
                    }
                    Unit unit11111111111111111112 = Unit.f67061a;
                }
                Unit unit11111111111111111113 = Unit.f67061a;
                reportProxy1111111113.report(str10, str7, bundle2);
                if (j14 != j11) {
                    z10 = z11;
                }
                TraceLog.d(TmcConstants.PERFERENCE_ANALYSE_TAG, string1111111113, z10);
                a.a(pointAnalyseType, string1111111113);
                break;
        }
    }

    public final void OooO00o(String str, String str2, Bundle bundle, String str3, String str4) {
        String str5;
        Map<String, OooOO0> map;
        OooOO0 oooOO0;
        Map<String, OooOO0> map2;
        OooOO0 oooOO1;
        Map<String, OooOO0> map3;
        OooOO0 oooOO2;
        Map<String, OooOO0> map4;
        OooOO0 oooOO3;
        String str6;
        Map<String, OooOO0> map5;
        OooOO0 oooOO4;
        AppContext appContext;
        Map<String, OooOO0> map6;
        OooOO0 oooOO5;
        Map<String, Long> map7;
        TmcLogger.d("oldChain", "reportPage -> appId:" + str + ", pagePath:" + str2 + ", miniappId:" + str3 + ", reportPagePath:" + str4);
        try {
            OooO00o(str3);
            OooO00o(bundle, str3);
            try {
                com.cloud.tmc.miniapp.utils.athena.OooO0OO.OooO00o.OooO00o();
            } catch (Throwable th2) {
                TmcLogger.e("PointTrack", "tryInitAthena failed!", th2);
            }
            bundle.putString("object_id", "300");
            com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O0 = this.OooO0Oo.get(str);
            if (oooO0O0 != null && (map6 = oooO0O0.OooO0o0) != null && (oooOO5 = map6.get(str2)) != null && (map7 = oooOO5.OooO0Oo) != null) {
                for (Map.Entry<String, Long> entry : map7.entrySet()) {
                    bundle.putLong("chain_id_" + ((Object) entry.getKey()), entry.getValue().longValue());
                }
            }
            bundle.putString(PointConstants.POINT_PAGE_PATH, str4);
            bundle.putString("open_page_status", "true");
            String str7 = null;
            if (str3 != null) {
                App appFindApp = ((AppManager) TmcProxy.get(AppManager.class)).findApp(str3);
                Context context = (appFindApp == null || (appContext = appFindApp.getAppContext()) == null) ? null : appContext.getContext();
                BaseActivity baseActivity = context instanceof BaseActivity ? (BaseActivity) context : null;
                bundle.putString(IntegrationConstants.IS_FOREGROUND, String.valueOf(baseActivity != null ? Boolean.valueOf(baseActivity.getMStarted()) : null));
            }
            com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O1 = this.OooO0Oo.get(str);
            bundle.putInt("downloadFrameworkMode", oooO0O1 != null ? oooO0O1.OooO0o : -1);
            com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O2 = this.OooO0Oo.get(str);
            String str8 = "";
            if (oooO0O2 == null || (map5 = oooO0O2.OooO0o0) == null || (oooOO4 = map5.get(str2)) == null || (str5 = oooOO4.OooO0o0) == null) {
                str5 = "";
            }
            bundle.putString("pageH5ProgressStatus", str5);
            com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O3 = this.OooO0Oo.get(str);
            if (oooO0O3 != null && (map4 = oooO0O3.OooO0o0) != null && (oooOO3 = map4.get(str2)) != null && (str6 = oooOO3.OooO0o) != null) {
                str8 = str6;
            }
            bundle.putString("pageDomContentLoadedStatus", str8);
            com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O4 = this.OooO0Oo.get(str);
            bundle.putInt("downloadAppMode", oooO0O4 != null ? oooO0O4.OooO0oO : -1);
            com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O5 = this.OooO0Oo.get(str);
            bundle.putInt("zipFrameworkMode", oooO0O5 != null ? oooO0O5.OooO0oo : -1);
            com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O6 = this.OooO0Oo.get(str);
            bundle.putInt("zipAppMode", oooO0O6 != null ? oooO0O6.OooO : -1);
            String str9 = "chain_id_" + ChainPoint.TotalCommunicationTime;
            ICommunicationTimeProxy iCommunicationTimeProxy = (ICommunicationTimeProxy) TmcProxy.get(ICommunicationTimeProxy.class);
            com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O7 = this.OooO0Oo.get(str);
            bundle.putLong(str9, iCommunicationTimeProxy.getTotalTime((oooO0O7 == null || (map3 = oooO0O7.OooO0o0) == null || (oooOO2 = map3.get(str2)) == null) ? null : oooOO2.OooO0O0));
            String str10 = "chain_id_" + ChainPoint.TotalCommunicationNum;
            ICommunicationTimeProxy iCommunicationTimeProxy2 = (ICommunicationTimeProxy) TmcProxy.get(ICommunicationTimeProxy.class);
            com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O8 = this.OooO0Oo.get(str);
            bundle.putInt(str10, iCommunicationTimeProxy2.getTotalNum((oooO0O8 == null || (map2 = oooO0O8.OooO0o0) == null || (oooOO1 = map2.get(str2)) == null) ? null : oooOO1.OooO0O0));
            com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O9 = this.OooO0Oo.get(str);
            if (oooO0O9 != null && (map = oooO0O9.OooO0o0) != null && (oooOO0 = map.get(str2)) != null) {
                str7 = oooOO0.OooO0oO;
            }
            bundle.putString("navigationType", str7);
        } catch (Throwable unused) {
        }
    }

    public final void OooO0O0(Bundle bundle) {
        Map<String, OooOO0> map;
        OooOO0 oooOO0;
        try {
            String string = bundle.getString(ChainPoint.TYPE, "");
            String string2 = bundle.getString(ChainPoint.CHAIN_ID, "");
            if (this.OooO0Oo.containsKey(string2)) {
                if (Intrinsics.c("app", string)) {
                    com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O0 = this.OooO0Oo.get(string2);
                    if (oooO0O0 != null) {
                        if (bundle.containsKey(ChainPoint.DOWNLOAD_FRAMEWORK_MODE)) {
                            oooO0O0.OooO0o = bundle.getInt(ChainPoint.DOWNLOAD_FRAMEWORK_MODE, 0);
                        } else if (bundle.containsKey(ChainPoint.DOWNLOAD_APP_MODE)) {
                            oooO0O0.OooO0oO = bundle.getInt(ChainPoint.DOWNLOAD_APP_MODE, 0);
                        } else if (bundle.containsKey(ChainPoint.ZIP_FRAMEWORK_MODE)) {
                            oooO0O0.OooO0oo = bundle.getInt(ChainPoint.ZIP_FRAMEWORK_MODE, 0);
                        } else if (bundle.containsKey(ChainPoint.ZIP_APP_MODE)) {
                            oooO0O0.OooO = bundle.getInt(ChainPoint.ZIP_APP_MODE, 0);
                        } else if (bundle.containsKey(ChainPoint.APP_H5_PROGRESS_STATUS)) {
                            String string3 = bundle.getString(ChainPoint.APP_H5_PROGRESS_STATUS, "");
                            Intrinsics.g(string3, "bundle.getString(APP_H5_PROGRESS_STATUS, \"\")");
                            Intrinsics.h(string3, "<set-?>");
                            oooO0O0.OooOO0O = string3;
                        } else if (bundle.containsKey(ChainPoint.APP_DOMCONTENTLOADED_STATUS)) {
                            String string4 = bundle.getString(ChainPoint.APP_DOMCONTENTLOADED_STATUS, "");
                            Intrinsics.g(string4, "bundle.getString(APP_DOMCONTENTLOADED_STATUS, \"\")");
                            Intrinsics.h(string4, "<set-?>");
                            oooO0O0.OooOO0o = string4;
                        } else if (bundle.containsKey(ChainPoint.APP_OFF_SCREEN_RENDER)) {
                            oooO0O0.OooOOOO = bundle.getBoolean(ChainPoint.APP_OFF_SCREEN_RENDER, false);
                        }
                    }
                } else if (Intrinsics.c("page", string)) {
                    String string5 = bundle.getString(ChainPoint.PAGE_PATH, "");
                    com.cloud.tmc.miniapp.performanceanalyse.OooO0O0 oooO0O1 = this.OooO0Oo.get(string2);
                    if (oooO0O1 != null && (map = oooO0O1.OooO0o0) != null && (oooOO0 = map.get(string5)) != null) {
                        if (bundle.containsKey(ChainPoint.PAGE_H5_PROGRESS_STATUS)) {
                            String string6 = bundle.getString(ChainPoint.PAGE_H5_PROGRESS_STATUS, "");
                            Intrinsics.g(string6, "bundle.getString(PAGE_H5_PROGRESS_STATUS, \"\")");
                            Intrinsics.h(string6, "<set-?>");
                            oooOO0.OooO0o0 = string6;
                        } else if (bundle.containsKey(ChainPoint.PAGE_DOMCONTENTLOADED_STATUS)) {
                            String string7 = bundle.getString(ChainPoint.PAGE_DOMCONTENTLOADED_STATUS, "");
                            Intrinsics.g(string7, "bundle.getString(PAGE_DOMCONTENTLOADED_STATUS, \"\")");
                            Intrinsics.h(string7, "<set-?>");
                            oooOO0.OooO0o = string7;
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e("chainInsert fail:" + th2);
        }
    }
}
