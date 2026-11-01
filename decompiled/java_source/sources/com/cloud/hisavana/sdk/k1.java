package com.cloud.hisavana.sdk;

import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.listener.CommonResponseListener;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigResponseBody;
import com.cloud.hisavana.sdk.data.bean.response.ConfigTotalDTO;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CommonConfigDTO;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigManager;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigsKt;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.MitNetUtil;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsion.gslb.DomainManager;
import com.vungle.ads.internal.ConfigManager;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class k1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AtomicBoolean f22583a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicBoolean f22584b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile String f22585c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile long f22586d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile long f22587e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile String f22588f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile String f22589g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile boolean f22590h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile Boolean f22591i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile ConfigTotalDTO.ExtInfo f22592j;

    class a implements com.cloud.hisavana.sdk.common.http.a.b {
        a() {
        }

        @Override // com.cloud.hisavana.sdk.common.http.a.b
        public String a() {
            return l1.b();
        }
    }

    class b extends CommonResponseListener<ConfigResponseBody> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f22594b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f22595c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f22596d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f22597e;

        b(long j11, int i11, String str, boolean z10) {
            this.f22594b = j11;
            this.f22595c = i11;
            this.f22596d = str;
            this.f22597e = z10;
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            AthenaTracker.J(this.f22595c, this.f22596d, (int) (System.currentTimeMillis() - this.f22594b), 1, taErrorCode == null ? "request error" : taErrorCode.getErrorMessage(), "");
            k1.this.f22583a.set(false);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.cloud.hisavana.sdk.common.http.listener.CommonResponseListener
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public void g(int i11, ConfigResponseBody configResponseBody) {
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.CommonResponseListener
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public void h(int i11, ConfigResponseBody configResponseBody, String str) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f22594b;
            k1.this.f22583a.set(false);
            e4.b().d(ConfigManager.TAG, "onRequestSuccess statusCode " + i11);
            k1.this.f22586d = System.currentTimeMillis();
            j7.a.e().q("requestConfigTime", k1.this.f22586d);
            if (configResponseBody == null || configResponseBody.getCode().intValue() != 0) {
                AthenaTracker.J(this.f22595c, this.f22596d, (int) jCurrentTimeMillis, 1, "response is null or responseCode is wrong", "");
                return;
            }
            ConfigTotalDTO data = configResponseBody.getData();
            AthenaTracker.J(this.f22595c, this.f22596d, (int) jCurrentTimeMillis, 0, "", k1.this.f22585c);
            if (data != null) {
                k1.this.i(data, this.f22595c, true);
                if (TextUtils.isEmpty(str) || !this.f22597e) {
                    return;
                }
                j7.a.e().r("ssp_cloud_config_raw_response", str);
            }
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final k1 f22599a = new k1(null);
    }

    private k1() {
        this.f22583a = new AtomicBoolean(false);
        this.f22584b = new AtomicBoolean(false);
        this.f22590h = false;
        this.f22591i = Boolean.FALSE;
        this.f22588f = j7.a.e().j("hisavanaRequestUrl");
        this.f22590h = j7.a.e().c("show_ru_style");
        this.f22591i = Boolean.valueOf(j7.a.e().d("is_om_id_enabled", false));
        j(j7.a.e().j("cloudConfigExtInfo"));
        CustomConfigManager.parseCustomTabData();
        CustomConfigManager.parseABTestData();
        CustomConfigManager.parseCommonConfigData();
    }

    /* synthetic */ k1(a aVar) {
        this();
    }

    private String c() {
        if (TextUtils.isEmpty(this.f22589g)) {
            this.f22589g = j7.a.e().j(CustomConfigsKt.DCDN_URL);
        }
        if (TextUtils.isEmpty(this.f22589g) || this.f22589g.equals(DomainManager.BLANK_DOMAIN)) {
            this.f22589g = g7.a.f() + g7.a.i();
        }
        return this.f22589g;
    }

    private void e(int i11) {
        if (i11 != 1) {
            return;
        }
        try {
            if (this.f22584b.compareAndSet(false, true)) {
                int iG = j7.a.e().g("ssp_sdk_version_code", 0);
                int iM = i7.c.m();
                j7.a.e().p("ssp_sdk_version_code", iM);
                if (iG != 0 && iG < iM) {
                    String strJ = j7.a.e().j("ssp_cloud_config_raw_response");
                    if (TextUtils.isEmpty(strJ)) {
                        e4.b().d(ConfigManager.TAG, "checkVersionUpgradeAndReparse: no cached raw response, skip");
                        return;
                    }
                    ConfigResponseBody configResponseBody = (ConfigResponseBody) GsonUtil.a(strJ, ConfigResponseBody.class);
                    if (configResponseBody == null || configResponseBody.getCode().intValue() != 0 || configResponseBody.getData() == null) {
                        return;
                    }
                    e4.b().d(ConfigManager.TAG, "checkVersionUpgradeAndReparse: re-parsing for version upgrade " + iG + " -> " + iM);
                    ConfigTotalDTO data = configResponseBody.getData();
                    if (data != null) {
                        i(data, i11, false);
                    }
                }
            }
        } catch (Throwable th2) {
            e4.b().w(ConfigManager.TAG, "checkVersionUpgradeAndReparse failed: " + th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(int i11, String str) {
        e(i11);
        Map mapD = P.g().d();
        if (mapD != null && !mapD.isEmpty()) {
            for (ConfigCodeSeatDTO configCodeSeatDTO : mapD.values()) {
                P.g().i(configCodeSeatDTO);
                P.g().b(configCodeSeatDTO);
            }
        }
        boolean zC = MitNetUtil.c(com.cloud.sdk.commonutil.util.e.a());
        NetStateManager.setIsNetAvailable(zC);
        if (!zC || this.f22583a.get()) {
            if (i11 != 3) {
                AthenaTracker.j0(null, i11);
                AthenaTracker.Y(null, i11, 2);
            }
            e4.b().e(ConfigManager.TAG, "requestCloudControl net is not available,or is requesting");
            return;
        }
        if (this.f22585c == null) {
            this.f22585c = j7.a.e().k("hisavanaCurrentCloudControlVersion", null);
        }
        if (this.f22585c == null) {
            g(i11, str, true);
            return;
        }
        if (!TextUtils.equals(j7.a.e().j("new_hisavana_ver"), this.f22585c)) {
            g(i11, str, true);
            return;
        }
        if (this.f22586d == 0) {
            this.f22586d = j7.a.e().i("requestConfigTime", 0L);
        }
        if (this.f22587e == 0) {
            this.f22587e = j7.a.e().i("requestConfigInterval", TmcConstants.MINIAPP_TIME_DIFF);
        }
        if (System.currentTimeMillis() - this.f22586d > this.f22587e) {
            g(i11, str, false);
            return;
        }
        e4.b().e(ConfigManager.TAG, "time is not ready");
        if (mapD != null) {
            k(mapD.values(), i11);
        } else {
            e4.b().e(ConfigManager.TAG, "requestCloudControl download material fail,config list is null");
        }
    }

    private void g(int i11, String str, boolean z10) {
        if (this.f22583a.get()) {
            e4.b().d(ConfigManager.TAG, "config is requesting");
            return;
        }
        e4.b().d(ConfigManager.TAG, "request type " + i11);
        this.f22583a.set(true);
        AthenaTracker.I(i11, str);
        com.cloud.hisavana.sdk.common.http.a aVarQ = new com.cloud.hisavana.sdk.common.http.a().m(new b(System.currentTimeMillis(), i11, str, z10)).o(new a()).k(a7.c.p()).q(g7.a.e() + g7.a.d());
        if (aVarQ != null) {
            aVarQ.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(ConfigTotalDTO configTotalDTO, int i11, boolean z10) {
        Boolean antifraudPowerEnable;
        String antifraudSubfunctionControl;
        int iIntValue = configTotalDTO.getCloudControlCacheInterval().intValue();
        if (iIntValue > 0) {
            this.f22587e = ((long) iIntValue) * 3600000;
            j7.a.e().q("requestConfigInterval", this.f22587e);
        }
        this.f22590h = configTotalDTO.isShowRuStyle();
        j7.a.e().o("show_ru_style", this.f22590h);
        if (!this.f22591i.booleanValue() && configTotalDTO.isOmIdEnabled()) {
            s0.c(com.cloud.sdk.commonutil.util.e.a(), true);
        }
        this.f22591i = Boolean.valueOf(configTotalDTO.isOmIdEnabled());
        j7.a.e().o("is_om_id_enabled", this.f22591i.booleanValue());
        if (configTotalDTO.getAdInternalBlackBrands() == null || configTotalDTO.getAdInternalBlackBrands().isEmpty()) {
            j7.a.e().s("ad_internal_black_brands");
        } else {
            e4.b().d(ConfigManager.TAG, " ad internal black brands：" + configTotalDTO.getAdInternalBlackBrands().toString());
            j7.a.e().r("ad_internal_black_brands", TextUtils.join(",", configTotalDTO.getAdInternalBlackBrands()));
        }
        j7.a.e().o("polygamma_init_enable", configTotalDTO.isInitPolyGammaEnable());
        j7.a.e().o("default_is_open", configTotalDTO.getAdInternalRequestEnable());
        Z.f21541a.s(configTotalDTO.getAdInternalRequestEnable());
        k5.b(configTotalDTO.getShowDataSyncTimeInterval(), configTotalDTO.getClickDataSyncTimeInterval());
        String extInfo = configTotalDTO.getExtInfo();
        j7.a.e().r("cloudConfigExtInfo", extInfo);
        j(extInfo);
        CustomConfigManager.saveCustomConfigs(configTotalDTO.getCustomConfigs());
        if (configTotalDTO.getCodeSeats() == null || configTotalDTO.getCodeSeats().isEmpty()) {
            return;
        }
        if (configTotalDTO.getCdnVersionAddressRequestTimeInterval().intValue() > 0) {
            j7.a.e().q("default_interval", configTotalDTO.getCdnVersionAddressRequestTimeInterval().intValue() * 60000);
        }
        if (P.g().f(configTotalDTO.getCodeSeats())) {
            this.f22585c = configTotalDTO.getCloudControlVersion();
            this.f22588f = configTotalDTO.getSspUrl();
            j7.a.e().r("hisavanaCurrentCloudControlVersion", this.f22585c);
            j7.a.e().r("new_hisavana_ver", this.f22585c);
            j7.a.e().r("hisavanaRequestUrl", this.f22588f);
            Boolean preConnectEnable = configTotalDTO.getPreConnectEnable();
            if (preConnectEnable != null) {
                j7.a.e().o("preLoadNet", preConnectEnable.booleanValue());
            }
            CommonConfigDTO commonConfigData = CustomConfigManager.getCommonConfigData();
            if (commonConfigData != null) {
                antifraudPowerEnable = commonConfigData.getAntifraudPowerEnable();
                antifraudSubfunctionControl = commonConfigData.getAntifraudSubfunctionControl();
            } else {
                antifraudPowerEnable = null;
                antifraudSubfunctionControl = null;
            }
            if (antifraudPowerEnable != null) {
                i7.a.u0(antifraudPowerEnable.booleanValue());
            }
            if (!TextUtils.isEmpty(antifraudSubfunctionControl)) {
                try {
                    Integer.parseInt(antifraudSubfunctionControl, 2);
                    String strSubstring = antifraudSubfunctionControl.substring(antifraudSubfunctionControl.indexOf("1"));
                    if (!TextUtils.isEmpty(strSubstring)) {
                        i7.a.t0(strSubstring);
                    }
                } catch (Exception e11) {
                    e4.b().w(com.cloud.sdk.commonutil.util.c.LOAD_TAG, "parsing AntifraudSubfunctionControl failed:" + Log.getStackTraceString(e11));
                }
            }
            if (z10) {
                k(configTotalDTO.getCodeSeats(), i11);
            }
        }
    }

    private void j(String str) {
        if (TextUtils.isEmpty(str)) {
            this.f22592j = null;
        } else {
            try {
                this.f22592j = (ConfigTotalDTO.ExtInfo) GsonUtil.a(str, ConfigTotalDTO.ExtInfo.class);
            } catch (Exception unused) {
            }
        }
    }

    private void k(Collection collection, int i11) {
        c0.F().z(collection, i11);
    }

    public static k1 o() {
        return c.f22599a;
    }

    public ConfigTotalDTO.ExtInfo m() {
        return this.f22592j;
    }

    public void n(final int i11) {
        e4.b().d(ConfigManager.TAG, "requestCloudControl type:" + i11);
        final String strO = DeviceUtil.o();
        HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.j1
            @Override // java.lang.Runnable
            public final void run() {
                this.f22551a.f(i11, strO);
            }
        });
    }

    public String q() {
        if (v1.f23023a.b() == 1) {
            return c();
        }
        if (TextUtils.isEmpty(this.f22588f)) {
            this.f22588f = j7.a.e().j("hisavanaRequestUrl");
        }
        if (TextUtils.isEmpty(this.f22588f)) {
            this.f22588f = g7.a.j() + g7.a.i();
        }
        return this.f22588f;
    }

    public boolean r() {
        return this.f22591i.booleanValue();
    }

    public boolean s() {
        return this.f22590h;
    }
}
