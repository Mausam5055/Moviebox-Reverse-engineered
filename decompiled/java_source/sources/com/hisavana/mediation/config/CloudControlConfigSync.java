package com.hisavana.mediation.config;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import be.l;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.listener.CommonResponseListener;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.cloud.sdk.commonutil.util.o;
import com.hisavana.common.base.LogSwitch;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.mock.RecordTestInfo;
import com.hisavana.common.param.CloudConfigParam;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.tracking.TrackingManager;
import com.hisavana.common.tracking.TrackingUtil;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.AdUtil;
import com.hisavana.common.utils.NetUtil;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import i7.c;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CloudControlConfigSync {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Handler f33227c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicBoolean f33225a = new AtomicBoolean();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f33226b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Runnable f33228d = new Runnable() { // from class: com.hisavana.mediation.config.CloudControlConfigSync.4
        @Override // java.lang.Runnable
        public void run() {
            CloudControlConfigSync.m(TAdErrorCode.CODE_REQUEST_CLOUD_TIME_OUT, "The cloud control reaches 15s timeout");
        }
    };

    public class a implements com.cloud.hisavana.sdk.common.http.a.b {
        @Override // com.cloud.hisavana.sdk.common.http.a.b
        public String a() {
            return CloudConfigParam.getPostBody(TAdManager.getAppId(), TAdManager.isTestDevice(), TAdManager.getAhaChannel(), TAdManager.getCodeSeatIds());
        }
    }

    public class b implements Preconditions.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f33232a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f33233b;

        public b(int i11, String str) {
            this.f33232a = i11;
            this.f33233b = str;
        }

        @Override // com.cloud.sdk.commonutil.util.Preconditions.a
        public void onRun() {
            TAdManager.OnCloudCompleteListener cloudCompleteListener = TAdManager.getCloudCompleteListener();
            if (cloudCompleteListener != null) {
                cloudCompleteListener.onCloudComplete(this.f33232a, this.f33233b);
                TAdManager.releaseCloudListener();
            }
        }
    }

    public static void b(int i11) {
        String triggerId = TrackingUtil.getTriggerId();
        f33226b = 0;
        String strK = j7.a.e().k("cloudControlVersion", null);
        if (TextUtils.isEmpty(strK)) {
            o(i11, triggerId);
            return;
        }
        if (TextUtils.equals(TAdManager.getAhaChannel(), ComConstants.AHA_CHANNEL)) {
            if (i11 == 1 || i11 == 5) {
                AdLogUtil.Log().d(ComConstants.SDK_INIT, "aha渠道请求云控 triggerType " + i11 + " ids= " + TAdManager.getCodeSeatIds());
                if (TAdManager.getCodeSeatIds() == null || TAdManager.getCodeSeatIds().size() <= 0) {
                    return;
                }
                o(i11, triggerId);
                return;
            }
            return;
        }
        String strJ = j7.a.e().j("new_config_ver");
        RecordTestInfo.record("CloudControlConfigSync - newVersion = " + strJ + ",current version=" + strK);
        if (!TextUtils.isEmpty(strJ) && !TextUtils.equals(strK, strJ)) {
            o(i11, triggerId);
            return;
        }
        if (System.currentTimeMillis() - j7.a.e().i("last_req_config_time", 0L) <= j7.a.e().i(ComConstants.Pref.REQ_CONFIG_INTERVAL, 86400000L)) {
            AdLogUtil.Log().d(ComConstants.SDK_INIT, "*----> new cloud config version is empty or is the same as current,don't send config request");
        } else if (NetUtil.checkNetworkState()) {
            AdLogUtil.Log().d(ComConstants.SDK_INIT, "request cloud config because of out of time");
            o(i11, triggerId);
        }
    }

    public static void d(long j11, String str, int i11) {
        Bundle bundle = new Bundle();
        bundle.putString(TrackingKey.CLD_APP_ID, TAdManager.getAppId());
        bundle.putInt(TrackingKey.TRIGGER_TYPE, i11);
        bundle.putString(TrackingKey.CLD_REQUEST_ID, str);
        bundle.putLong(TrackingKey.CLD_REQUEST_TS, j11);
        TrackingManager.trackingADCldRequest(bundle);
    }

    public static boolean g(String str, String str2) {
        AdLogUtil.Log().w("CloudControlConfigSync", "isNeedToUpdateLocalConfig newVersion=" + str + ",curVersion=" + str2);
        if (TextUtils.isEmpty(str2)) {
            return true;
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.equals(str, str2)) {
            try {
                if (str2.length() > 13) {
                    str2 = str2.substring(0, str2.length() - 13);
                }
                if (str.length() > 13) {
                    str = str.substring(0, str.length() - 13);
                }
                return Long.parseLong(str) > Long.parseLong(str2);
            } catch (Exception unused) {
                AdLogUtil.Log().w("CloudControlConfigSync", "not need update local config");
            }
        }
        return false;
    }

    public static void j(CloudControlConfig cloudControlConfig, boolean z10) {
        if (cloudControlConfig == null) {
            return;
        }
        if (cloudControlConfig.getData() == null || cloudControlConfig.getData().getCodeSeats() == null) {
            AdLogUtil.Log().d(ComConstants.SDK_INIT, "CloudControlConfigSync --> extracted --> 数据为空 无法保存");
            t();
            m(cloudControlConfig.getCode(), cloudControlConfig.getMessage());
            return;
        }
        ConfigContentHelper.g().b();
        boolean zI = ConfigContentHelper.g().i(cloudControlConfig.getData().getCodeSeats());
        if (ConfigContentHelper.g().f() > 0) {
            t();
            m(0, "get cloud data success");
        }
        if (!zI) {
            AdLogUtil.Log().d(ComConstants.SDK_INIT, "*----> CloudControlConfigSync --> save data 2 sqlite failed!!!");
            return;
        }
        j7.a.e().r("cloudControlVersion", cloudControlConfig.getData().getCloudControlVersion());
        if (z10) {
            j7.a.e().r("new_config_ver", cloudControlConfig.getData().getCloudControlVersion());
        }
        AdLogUtil.Log().i(ComConstants.SDK_INIT, "*----> CloudControlConfigSync --> save data 2 sqlite --> 持久化当前云控版本：" + cloudControlConfig.getData().getCloudControlVersion());
    }

    public static void k(boolean z10, String str, String str2, long j11, String str3, int i11) {
        Bundle bundle = new Bundle();
        bundle.putInt(TrackingKey.TRIGGER_TYPE, i11);
        bundle.putString(TrackingKey.CLD_REQUEST_ID, str3);
        bundle.putLong(TrackingKey.CLD_RETURN_TS, System.currentTimeMillis());
        try {
            bundle.putInt(TrackingKey.CLD_RETURN_TIME_INTERVAL, (int) (System.currentTimeMillis() - j11));
        } catch (Exception unused) {
        }
        if (z10) {
            bundle.putInt("code", 0);
        } else {
            bundle.putInt("code", 1);
        }
        if (TextUtils.isEmpty(str)) {
            bundle.putString("message", "");
        } else {
            bundle.putString("message", str);
        }
        bundle.putString("data", str2);
        TrackingManager.trackingCldReturn(bundle);
    }

    public static void m(int i11, String str) {
        Preconditions.d(new b(i11, str));
    }

    public static /* synthetic */ int n() {
        int i11 = f33226b;
        f33226b = i11 + 1;
        return i11;
    }

    public static void o(final int i11, final String str) {
        if (NetUtil.checkNetworkState()) {
            AtomicBoolean atomicBoolean = f33225a;
            if (!atomicBoolean.get()) {
                if (TextUtils.equals(TAdManager.getAhaChannel(), ComConstants.AHA_CHANNEL) && (TAdManager.getCodeSeatIds() == null || TAdManager.getCodeSeatIds().isEmpty())) {
                    AdLogUtil.Log().d(ComConstants.SDK_INIT, "requestCloudControl channel is aha,but codeSeatIds is empty,stop requestCloudControl");
                    return;
                }
                atomicBoolean.set(true);
                final long jCurrentTimeMillis = System.currentTimeMillis();
                d(jCurrentTimeMillis, str, i11);
                RecordTestInfo.record("CloudControlConfigSync - send cloud control request");
                com.cloud.hisavana.sdk.common.http.a aVarP = new com.cloud.hisavana.sdk.common.http.a().m(new CommonResponseListener<CloudControlConfig>() { // from class: com.hisavana.mediation.config.CloudControlConfigSync.3
                    @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
                    public void a(TaErrorCode taErrorCode) {
                        String str2;
                        CloudControlConfigSync.f33225a.set(false);
                        AdLogUtil adLogUtilLog = AdLogUtil.Log();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("CloudControlConfigSync --> error msg ");
                        if (taErrorCode != null) {
                            str2 = taErrorCode.getErrorMessage() + "，" + taErrorCode.getErrorCode();
                        } else {
                            str2 = "";
                        }
                        sb2.append(str2);
                        adLogUtilLog.w(ComConstants.SDK_INIT, sb2.toString());
                        String strJ = j7.a.e().j("cloudControlVersion");
                        j7.a.e().p(ComConstants.Pref.CLOUD_CONFIG_ERROR_CODE, taErrorCode != null ? taErrorCode.getErrorCode() : -1);
                        if (taErrorCode != null) {
                            CloudControlConfigSync.k(false, taErrorCode.getErrorMessage(), strJ, jCurrentTimeMillis, str, i11);
                        } else {
                            CloudControlConfigSync.k(false, "no message", strJ, jCurrentTimeMillis, str, i11);
                        }
                        if (CloudControlConfigSync.f33226b >= 1 && taErrorCode != null) {
                            CloudControlConfigSync.t();
                            if (taErrorCode.getErrorCode() == 481) {
                                CloudControlConfigSync.m(481, "request cloud network time out");
                            } else if (taErrorCode.getErrorCode() == 484) {
                                CloudControlConfigSync.m(484, "request cloud is host fail ");
                            }
                        }
                        if (taErrorCode != null) {
                            AdLogUtil.Log().i(ComConstants.SDK_INIT, "currentCloudRetryCount = " + CloudControlConfigSync.f33226b + " , errorCode = " + taErrorCode.getErrorCode());
                            if (CloudControlConfigSync.f33226b == 0) {
                                if (taErrorCode.getErrorCode() == 481 || taErrorCode.getErrorCode() == 484) {
                                    CloudControlConfigSync.n();
                                    CloudControlConfigSync.o(i11, str);
                                }
                            }
                        }
                    }

                    @Override // com.cloud.hisavana.sdk.common.http.listener.CommonResponseListener
                    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
                    public void g(int i12, final CloudControlConfig cloudControlConfig) {
                        List<Network> networks;
                        j7.a.e().p(ComConstants.Pref.CLOUD_CONFIG_ERROR_CODE, 0);
                        if (cloudControlConfig == null) {
                            CloudControlConfigSync.f33225a.set(false);
                            CloudControlConfigSync.t();
                            CloudControlConfigSync.m(484, "request cloud is host fail ");
                            return;
                        }
                        if (LogSwitch.isDebug) {
                            AdLogUtil.Log().d(ComConstants.SDK_INIT, "CloudControlConfigSync --> CloudControl is: " + GsonUtil.d(cloudControlConfig));
                        }
                        j7.a.e().q("last_req_config_time", System.currentTimeMillis());
                        CloudControlConfig.ConfigData data = cloudControlConfig.getData();
                        if (data != null) {
                            int iIntValue = data.getCloudControlCacheInterval().intValue();
                            if (iIntValue > 0) {
                                j7.a.e().q(ComConstants.Pref.REQ_CONFIG_INTERVAL, ((long) iIntValue) * 3600000);
                            }
                            ArrayList<CloudControlConfig.CodeSeat> codeSeats = data.getCodeSeats();
                            if (codeSeats != null && !codeSeats.isEmpty()) {
                                int size = codeSeats.size();
                                for (int i13 = 0; i13 < size; i13++) {
                                    CloudControlConfig.CodeSeat codeSeat = codeSeats.get(i13);
                                    if (codeSeat != null && (networks = codeSeat.getNetworks()) != null && !networks.isEmpty()) {
                                        for (Network network : networks) {
                                            if (network != null) {
                                                network.setTempPrice(network.getPrice().doubleValue());
                                                AdUtil.overwriteAdmobNetworkPrice(network);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        HSScopeHelper.f23167a.g(new Runnable() { // from class: com.hisavana.mediation.config.CloudControlConfigSync.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    try {
                                        CloudControlConfigSync.j(cloudControlConfig, true);
                                    } catch (Exception e11) {
                                        AdLogUtil.Log().e(ComConstants.SDK_INIT, "CloudControlConfigSync --> 保存本地数据失败 " + Log.getStackTraceString(e11));
                                    }
                                } finally {
                                    CloudControlConfigSync.f33225a.set(false);
                                }
                            }
                        });
                        if (cloudControlConfig.getData() != null) {
                            CloudControlConfigSync.k(true, cloudControlConfig.getMessage(), cloudControlConfig.getData().getCloudControlVersion(), jCurrentTimeMillis, str, i11);
                        }
                    }
                }).o(new a()).q(l.a()).p("2");
                if (aVarP != null) {
                    aVarP.b();
                    return;
                }
                return;
            }
        }
        AdLogUtil.Log().w(ComConstants.SDK_INIT, "CloudControlConfigSync --> network error or requesting");
    }

    public static void q() {
        AdLogUtil adLogUtilLog = AdLogUtil.Log();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Current mode,testDevice: ");
        sb2.append(TAdManager.isTestDevice());
        sb2.append(",debug: ");
        sb2.append(TAdManager.isDebug());
        sb2.append(",server: ");
        sb2.append(g7.a.c() == 1 ? "Test" : "Release");
        adLogUtilLog.d(ComConstants.SDK_INIT, sb2.toString());
        f33227c = new Handler(Looper.getMainLooper());
        r();
        s();
        HSScopeHelper.f23167a.j(new Runnable() { // from class: com.hisavana.mediation.config.CloudControlConfigSync.1
            @Override // java.lang.Runnable
            public void run() {
                CloudControlConfigSync.u();
                CloudControlConfigSync.b(1);
            }
        }, 500L);
    }

    public static boolean r() {
        if (ConfigContentHelper.g().f() <= 0) {
            AdLogUtil.Log().i("CloudControlConfigSync", "no cloud data in db");
            return false;
        }
        t();
        ConfigContentHelper.g().h();
        m(0, "get cloud data success");
        return true;
    }

    public static void s() {
        try {
            String strK = j7.a.e().k(ComConstants.HOST_VERSION, null);
            AdLogUtil.Log().d("CloudControlConfigSync", "cache host version: " + strK + ", current host version: " + c.p());
            if (strK == null || !TextUtils.equals(strK, c.p())) {
                String strK2 = j7.a.e().k("cloudControlVersion", null);
                try {
                    String strJ = o.j("mediation.json");
                    if (TextUtils.isEmpty(strJ)) {
                        AdLogUtil.Log().e("CloudControlConfigSync", "get nothing from mediation.json");
                        return;
                    }
                    CloudControlConfig cloudControlConfig = (CloudControlConfig) GsonUtil.a(strJ, CloudControlConfig.class);
                    if (cloudControlConfig != null && cloudControlConfig.getData() != null) {
                        if (g(cloudControlConfig.getData().getCloudControlVersion(), strK2)) {
                            j(cloudControlConfig, false);
                            j7.a.e().r(ComConstants.HOST_VERSION, c.p());
                        }
                        r();
                    }
                } catch (FileNotFoundException unused) {
                    AdLogUtil.Log().w("CloudControlConfigSync", "There is no default mediation.json available locally.");
                    j7.a.e().r(ComConstants.HOST_VERSION, c.p());
                } catch (IOException unused2) {
                    AdLogUtil.Log().w("CloudControlConfigSync", "Failed to read default mediation.json from assets.");
                }
            }
        } catch (Throwable th2) {
            AdLogUtil.Log().e("CloudControlConfigSync", Log.getStackTraceString(th2));
        }
    }

    public static void t() {
        Handler handler = f33227c;
        if (handler != null) {
            handler.removeCallbacks(f33228d);
        }
    }

    public static void u() {
        Handler handler = f33227c;
        if (handler != null) {
            handler.postDelayed(f33228d, MBInterstitialActivity.WEB_LOAD_TIME);
        }
    }
}
