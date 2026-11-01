package yv;

import android.app.Application;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import aw.i;
import bw.g;
import bw.h;
import bw.l;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tencent.mmkv.MMKV;
import com.transsion.upgradesdk.bean.RequestBean;
import com.transsion.upgradesdk.bean.UpgradeData;
import com.transsion.upgradesdk.bean.UpgradeInfo;
import com.transsion.upgradesdk.manager.UpgradeDialogCallback;
import com.transsion.upgradesdk.manager.UpgradeInfoCallback;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class f {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final d f79067o = new d();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static volatile f f79068p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public vv.b f79069a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public UpgradeData f79070b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f79071c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f79072d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f79073e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public UpgradeInfoCallback f79074f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public UpgradeDialogCallback f79075g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f79076h = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.transsion.upgradesdk.page.f f79077i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public i f79078j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f79079k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f79080l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public List f79081m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f79082n;

    public final void a() {
        h hVar = bw.i.f16941b;
        Application application = xv.a.f78447a;
        Application application2 = null;
        if (application == null) {
            Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
            application = null;
        }
        bw.i iVarA = hVar.a(application);
        Intrinsics.h("KV_UPGRADE_LAST_SUCCESS_VERSION", "key");
        MMKV mmkv = iVarA.f16943a;
        long jH = mmkv != null ? mmkv.h("KV_UPGRADE_LAST_SUCCESS_VERSION", 0L) : 0L;
        long j11 = e().f77451d;
        if (jH != j11) {
            Application application3 = xv.a.f78447a;
            if (application3 == null) {
                Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
                application3 = null;
            }
            bw.i iVarA2 = hVar.a(application3);
            Intrinsics.h("KV_UPGRADE_LAST_SUCCESS_VERSION", "key");
            MMKV mmkv2 = iVarA2.f16943a;
            if (mmkv2 != null) {
                mmkv2.t("KV_UPGRADE_LAST_SUCCESS_VERSION", j11);
            }
            Application application4 = xv.a.f78447a;
            if (application4 != null) {
                application2 = application4;
            } else {
                Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
            }
            bw.i iVarA3 = hVar.a(application2);
            Intrinsics.h("KV_UPGRADE_POPUP_TIMES", "key");
            MMKV mmkv3 = iVarA3.f16943a;
            if (mmkv3 != null) {
                mmkv3.s("KV_UPGRADE_POPUP_TIMES", 0);
            }
            String msg = "检测到版本变化，更新存储版本: " + jH + " -> " + j11;
            Intrinsics.h("UpgradeSdkManager", "tag");
            Intrinsics.h(msg, "msg");
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (!g.f16939a && jCurrentTimeMillis - g.f16940b >= 5000) {
                g.f16940b = jCurrentTimeMillis;
                if (Log.isLoggable("upgradeSdkLog", 3)) {
                    g.f16939a = true;
                }
            }
            boolean z10 = f79067o.a().f79072d;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002b, code lost:
    
        if (r2.isConnected() == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(int i11) {
        retrofit2.d<List<UpgradeData>> dVarC;
        if (i11 == 1) {
            Application application = xv.a.f78447a;
            if (application == null) {
                Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
                application = null;
            }
            if (application != null) {
                Object systemService = application.getSystemService("connectivity");
                Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
                try {
                    NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
                    if (activeNetworkInfo != null) {
                    }
                } catch (Exception unused) {
                }
            }
            long jA = vv.d.a("UpgradeSdkManager", "tag", "requestCdnConfig error: 网络未链接", NotificationCompat.CATEGORY_MESSAGE);
            if (!g.f16939a && jA - g.f16940b >= 5000) {
                g.f16940b = jA;
                if (Log.isLoggable("upgradeSdkLog", 3)) {
                    g.f16939a = true;
                }
                boolean z10 = g.f16939a;
            }
            boolean z11 = f79067o.a().f79072d;
            l.a(2, 4, null, "1", 20);
            UpgradeInfoCallback upgradeInfoCallback = this.f79074f;
            if (upgradeInfoCallback != null) {
                upgradeInfoCallback.onRequestFail("INTERNET_ERROR");
                return;
            }
            return;
        }
        l.c(2, 1, String.valueOf(i11), "1", null, null, null, 112);
        vv.b bVarE = e();
        g.b("UpgradeSdkManager", "requestCdnConfig 开始请求CDN配置");
        zv.d dVar = (zv.d) zv.d.f79472d.getValue();
        String pkgName = bVarE.f77448a;
        com.transsion.upgradesdk.manager.g callback = new com.transsion.upgradesdk.manager.g(this, i11);
        dVar.getClass();
        Intrinsics.h(pkgName, "pkgName");
        Intrinsics.h(callback, "callback");
        dVar.f79475c = 1;
        a aVar = c.f79060d;
        String str = aVar.a().f79063b;
        d dVar2 = f79067o;
        g.b("UpgradeSdkManager", "CDN - gslbCountryCode1 : " + str);
        if (TextUtils.isEmpty(str)) {
            str = dVar2.a().e().f77455h;
        }
        aVar.a().f79064c = str;
        g.b("UpgradeSdkManager", "CDN - gslbCountryCode2 : " + str);
        if (str != null && StringsKt.H(str, "IN", true)) {
            g.b("UpgradeSdkManager", "使用印度CDN接口");
            dVarC = dVar.f79473a.a(pkgName, System.currentTimeMillis());
        } else if (str == null || !StringsKt.H(str, "RU", true)) {
            g.b("UpgradeSdkManager", "使用默认CDN接口");
            dVarC = dVar.f79473a.c(pkgName, System.currentTimeMillis());
        } else {
            g.b("UpgradeSdkManager", "使用EE1CDN接口");
            dVarC = dVar.f79473a.b(pkgName, System.currentTimeMillis());
        }
        dVarC.h(new zv.b(dVar, callback));
    }

    public final void c(List obj) {
        String str;
        String str2;
        String str3;
        String str4;
        String tag;
        Application application;
        String str5;
        char c11;
        String str6 = "toJson(...)";
        String str7 = "obj";
        String str8 = MimeTypes.BASE_TYPE_APPLICATION;
        String str9 = "UpgradeSdkManager";
        String str10 = NotificationCompat.CATEGORY_MESSAGE;
        if (obj != null) {
            h hVar = bw.i.f16941b;
            Application application2 = xv.a.f78447a;
            if (application2 != null) {
                application = application2;
            } else {
                Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
                application = null;
            }
            bw.i iVarA = hVar.a(application);
            Gson gson = bw.f.f16938a;
            Intrinsics.h(obj, "obj");
            String json = bw.f.f16938a.toJson(obj);
            Intrinsics.g(json, "toJson(...)");
            iVarA.b("KV_UPGRADE_LOCAL_CDN_DATA", json);
            String msg = "CDN数据开始校验  step1-1: " + obj;
            Intrinsics.h("UpgradeSdkManager", "tag");
            Intrinsics.h(msg, "msg");
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (!g.f16939a && jCurrentTimeMillis - g.f16940b >= 5000) {
                g.f16940b = jCurrentTimeMillis;
                if (Log.isLoggable("upgradeSdkLog", 3)) {
                    g.f16939a = true;
                }
                boolean z10 = g.f16939a;
            }
            boolean z11 = f79067o.a().f79072d;
            Iterator it = obj.iterator();
            while (true) {
                if (it.hasNext()) {
                    UpgradeData upgradeData = (UpgradeData) it.next();
                    if (upgradeData != null) {
                        d dVar = f79067o;
                        if (dVar.a().f79073e) {
                            str = str6;
                            str2 = str7;
                            if (upgradeData.checkNeedUpgrade(dVar.a().e().f77451d)) {
                                str3 = str10;
                                str4 = str8;
                                str5 = str9;
                            } else {
                                long jA = vv.d.a("ValidateCheckUtils", "tag", "filter  ->> 当前版本已是最新版本", str10);
                                if (!g.f16939a && jA - g.f16940b >= 5000) {
                                    g.f16940b = jA;
                                    if (Log.isLoggable("upgradeSdkLog", 3)) {
                                        g.f16939a = true;
                                    }
                                    boolean z12 = g.f16939a;
                                }
                                boolean z13 = dVar.a().f79072d;
                                dVar.a().f79073e = false;
                                h hVar2 = bw.i.f16941b;
                                Application application3 = xv.a.f78447a;
                                if (application3 == null) {
                                    Intrinsics.z(str8);
                                    application3 = null;
                                }
                                bw.i iVarA2 = hVar2.a(application3);
                                Intrinsics.h("KV_UPGRADE_IS_FORCE", "key");
                                MMKV mmkv = iVarA2.f16943a;
                                if (mmkv != null) {
                                    mmkv.x("KV_UPGRADE_IS_FORCE", false);
                                }
                                str6 = str;
                                str7 = str2;
                            }
                        } else {
                            str = str6;
                            str2 = str7;
                            if (TextUtils.equals("1", upgradeData.getTaskStatus())) {
                                str3 = str10;
                                str4 = str8;
                                str5 = str9;
                                if (upgradeData.checkDateRange(upgradeData.getValidStartDate(), upgradeData.getValidEndDate())) {
                                    if (!upgradeData.checkNeedUpgrade(dVar.a().e().f77451d)) {
                                        long jA2 = vv.d.a("ValidateCheckUtils", "tag", "filter  ->> 当前版本已是最新版本", str3);
                                        if (!g.f16939a && jA2 - g.f16940b >= 5000) {
                                            g.f16940b = jA2;
                                            if (Log.isLoggable("upgradeSdkLog", 3)) {
                                                g.f16939a = true;
                                            }
                                            boolean z14 = g.f16939a;
                                        }
                                        boolean z15 = dVar.a().f79072d;
                                        String updateTime = upgradeData.getUpdateTime();
                                        c11 = 3;
                                        l.a(3, 9, updateTime, null, 24);
                                    } else if (!upgradeData.checkBrand()) {
                                        long jA3 = vv.d.a("ValidateCheckUtils", "tag", "filter  ->> 品牌", str3);
                                        if (!g.f16939a && jA3 - g.f16940b >= 5000) {
                                            g.f16940b = jA3;
                                            if (Log.isLoggable("upgradeSdkLog", 3)) {
                                                g.f16939a = true;
                                            }
                                            boolean z16 = g.f16939a;
                                        }
                                        boolean z17 = dVar.a().f79072d;
                                        String updateTime2 = upgradeData.getUpdateTime();
                                        c11 = 3;
                                        l.a(3, 4, updateTime2, null, 24);
                                    } else if (!upgradeData.checkModel()) {
                                        long jA4 = vv.d.a("ValidateCheckUtils", "tag", "filter  ->> 机型", str3);
                                        if (!g.f16939a && jA4 - g.f16940b >= 5000) {
                                            g.f16940b = jA4;
                                            if (Log.isLoggable("upgradeSdkLog", 3)) {
                                                g.f16939a = true;
                                            }
                                            boolean z18 = g.f16939a;
                                        }
                                        boolean z19 = dVar.a().f79072d;
                                        String updateTime3 = upgradeData.getUpdateTime();
                                        c11 = 3;
                                        l.a(3, 5, updateTime3, null, 24);
                                    } else if (!upgradeData.checkAndroidVersion()) {
                                        long jA5 = vv.d.a("ValidateCheckUtils", "tag", "filter  ->> 安卓版本", str3);
                                        if (!g.f16939a && jA5 - g.f16940b >= 5000) {
                                            g.f16940b = jA5;
                                            if (Log.isLoggable("upgradeSdkLog", 3)) {
                                                g.f16939a = true;
                                            }
                                            boolean z20 = g.f16939a;
                                        }
                                        boolean z21 = dVar.a().f79072d;
                                        String updateTime4 = upgradeData.getUpdateTime();
                                        c11 = 3;
                                        l.a(3, 6, updateTime4, null, 24);
                                    } else if (upgradeData.checkCountry()) {
                                        vv.b bVarE = dVar.a().e();
                                        if (!upgradeData.checkVersionRange(bVarE != null ? bVarE.f77451d : 0L)) {
                                            long jA6 = vv.d.a("ValidateCheckUtils", "tag", "filter  ->> 版本范围", str3);
                                            if (!g.f16939a && jA6 - g.f16940b >= 5000) {
                                                g.f16940b = jA6;
                                                if (Log.isLoggable("upgradeSdkLog", 3)) {
                                                    g.f16939a = true;
                                                }
                                                boolean z22 = g.f16939a;
                                            }
                                            boolean z23 = dVar.a().f79072d;
                                            String updateTime5 = upgradeData.getUpdateTime();
                                            c11 = 3;
                                            l.a(3, 8, updateTime5, null, 24);
                                        }
                                    } else {
                                        long jA7 = vv.d.a("ValidateCheckUtils", "tag", "filter  ->> 国家", str3);
                                        if (!g.f16939a && jA7 - g.f16940b >= 5000) {
                                            g.f16940b = jA7;
                                            if (Log.isLoggable("upgradeSdkLog", 3)) {
                                                g.f16939a = true;
                                            }
                                            boolean z24 = g.f16939a;
                                        }
                                        boolean z25 = dVar.a().f79072d;
                                        String updateTime6 = upgradeData.getUpdateTime();
                                        c11 = 3;
                                        l.a(3, 7, updateTime6, null, 24);
                                    }
                                    str10 = str3;
                                    str8 = str4;
                                    str6 = str;
                                    str7 = str2;
                                    str9 = str5;
                                } else {
                                    long jA8 = vv.d.a("ValidateCheckUtils", "tag", "filter  ->> validStartDate or validEndDate", str3);
                                    if (!g.f16939a && jA8 - g.f16940b >= 5000) {
                                        g.f16940b = jA8;
                                        if (Log.isLoggable("upgradeSdkLog", 3)) {
                                            g.f16939a = true;
                                        }
                                        boolean z26 = g.f16939a;
                                    }
                                    boolean z27 = dVar.a().f79072d;
                                    l.a(3, 3, upgradeData.getUpdateTime(), null, 24);
                                    str8 = str4;
                                    str7 = str2;
                                    str9 = str5;
                                    str10 = str3;
                                    str6 = str;
                                }
                            } else {
                                long jA9 = vv.d.a("ValidateCheckUtils", "tag", "filter  ->> 开关 taskStatus", str10);
                                if (!g.f16939a && jA9 - g.f16940b >= 5000) {
                                    g.f16940b = jA9;
                                    if (Log.isLoggable("upgradeSdkLog", 3)) {
                                        g.f16939a = true;
                                    }
                                    boolean z28 = g.f16939a;
                                }
                                boolean z29 = dVar.a().f79072d;
                                l.a(3, 2, upgradeData.getUpdateTime(), null, 24);
                                str6 = str;
                                str7 = str2;
                            }
                        }
                        this.f79070b = upgradeData;
                        String str11 = "CDN数据 匹配成功 step1-2: " + this.f79070b;
                        tag = str5;
                        Intrinsics.h(tag, "tag");
                        Intrinsics.h(str11, str3);
                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                        if (!g.f16939a && jCurrentTimeMillis2 - g.f16940b >= 5000) {
                            g.f16940b = jCurrentTimeMillis2;
                            if (Log.isLoggable("upgradeSdkLog", 3)) {
                                g.f16939a = true;
                            }
                            boolean z30 = g.f16939a;
                        }
                        boolean z31 = dVar.a().f79072d;
                    }
                } else {
                    str = str6;
                    str2 = str7;
                    str3 = str10;
                    str4 = str8;
                    tag = str9;
                }
            }
        } else {
            str = str6;
            str2 = str7;
            str3 = str10;
            str4 = str8;
            tag = str9;
        }
        UpgradeData upgradeData2 = this.f79070b;
        if (upgradeData2 == null) {
            l.c(3, 10, null, null, null, null, null, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE);
            UpgradeInfoCallback upgradeInfoCallback = this.f79074f;
            if (upgradeInfoCallback != null) {
                upgradeInfoCallback.onRequestSuccess(new UpgradeInfo(false, false, false, null));
                return;
            }
            return;
        }
        l.c(3, 1, upgradeData2.getUpdateTime(), null, null, null, null, 120);
        UpgradeData upgradeData3 = this.f79070b;
        if (upgradeData3 == null) {
            UpgradeInfoCallback upgradeInfoCallback2 = this.f79074f;
            if (upgradeInfoCallback2 != null) {
                upgradeInfoCallback2.onRequestSuccess(new UpgradeInfo(false, false, false, null));
                return;
            }
            return;
        }
        if (this.f79073e) {
            long jA10 = vv.d.a(tag, "tag", "requestUpgradeStatus : 强更任务进行中，不请求服务端配置", str3);
            if (!g.f16939a && jA10 - g.f16940b >= 5000) {
                g.f16940b = jA10;
                if (Log.isLoggable("upgradeSdkLog", 3)) {
                    g.f16939a = true;
                }
                boolean z32 = g.f16939a;
            }
            boolean z33 = f79067o.a().f79072d;
            UpgradeInfoCallback upgradeInfoCallback3 = this.f79074f;
            if (upgradeInfoCallback3 != null) {
                UpgradeData upgradeData4 = this.f79070b;
                upgradeInfoCallback3.onRequestSuccess(new UpgradeInfo(true, true, true, upgradeData4 != null ? upgradeData4.getPkgVersionName() : null));
                return;
            }
            return;
        }
        if (upgradeData3.getReqInterval() > 0) {
            g.b(tag, "requestUpgradeStatus : 上次弹窗 - ReqInterval - " + upgradeData3.getReqInterval());
            if (this.f79079k <= 0) {
                h hVar3 = bw.i.f16941b;
                Application application4 = xv.a.f78447a;
                if (application4 == null) {
                    Intrinsics.z(str4);
                    application4 = null;
                }
                bw.i iVarA3 = hVar3.a(application4);
                Intrinsics.h("KV_UPGRADE_LAST_REQUEST_SERVER", "key");
                MMKV mmkv2 = iVarA3.f16943a;
                this.f79079k = mmkv2 != null ? mmkv2.h("KV_UPGRADE_LAST_REQUEST_SERVER", 0L) : 0L;
            }
            if (System.currentTimeMillis() - this.f79079k <= ((long) (upgradeData3.getReqInterval() * 3600)) * 1000) {
                g.b(tag, "requestUpgradeStatus : 上次弹窗范围内，不请求接口");
                l.a(2, 5, null, "2", 20);
                UpgradeInfoCallback upgradeInfoCallback4 = this.f79074f;
                if (upgradeInfoCallback4 != null) {
                    boolean z34 = this.f79071c;
                    upgradeInfoCallback4.onRequestSuccess(new UpgradeInfo(z34, z34 && wv.a.a(upgradeData3), false, upgradeData3.getPkgVersionName()));
                    return;
                }
                return;
            }
        }
        Application application5 = xv.a.f78447a;
        if (application5 == null) {
            Intrinsics.z(str4);
            application5 = null;
        }
        if (application5 != null) {
            Object systemService = application5.getSystemService("connectivity");
            Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
            try {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                    l.c(2, 1, null, "2", null, null, null, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE);
                    zv.d dVar2 = (zv.d) zv.d.f79472d.getValue();
                    com.transsion.upgradesdk.manager.h callback = new com.transsion.upgradesdk.manager.h(this);
                    dVar2.getClass();
                    Intrinsics.h(callback, "callback");
                    dVar2.f79475c = 4;
                    RequestBean requestBeanA = vv.c.a();
                    Gson gson2 = bw.f.f16938a;
                    Intrinsics.h(requestBeanA, str2);
                    String json2 = bw.f.f16938a.toJson(requestBeanA);
                    Intrinsics.g(json2, str);
                    long jA11 = vv.d.a(tag, "tag", "请求服务端接口 开始请求， 参数： " + json2, str3);
                    if (!g.f16939a && jA11 - g.f16940b >= 5000) {
                        g.f16940b = jA11;
                        if (Log.isLoggable("upgradeSdkLog", 3)) {
                            g.f16939a = true;
                        }
                        boolean z35 = g.f16939a;
                    }
                    boolean z36 = f79067o.a().f79072d;
                    dVar2.f79474b.a(requestBeanA, requestBeanA.getAppKey()).h(new zv.c(dVar2, callback));
                    return;
                }
            } catch (Exception unused) {
            }
        }
        long jA12 = vv.d.a(tag, r7, "requestServer error: 网络未链接", str3);
        if (!g.f16939a && jA12 - g.f16940b >= 5000) {
            g.f16940b = jA12;
            if (Log.isLoggable("upgradeSdkLog", 3)) {
                g.f16939a = true;
            }
            boolean z37 = g.f16939a;
        }
        boolean z38 = f79067o.a().f79072d;
        l.a(2, 4, null, "2", 20);
        UpgradeInfoCallback upgradeInfoCallback5 = this.f79074f;
        if (upgradeInfoCallback5 != null) {
            upgradeInfoCallback5.onRequestFail("INTERNET_ERROR");
        }
    }

    public final void d() {
        com.transsion.upgradesdk.page.f fVar = this.f79077i;
        if (fVar != null && fVar.isVisible()) {
            fVar.dismiss();
        }
        i iVar = this.f79078j;
        if (iVar == null || !iVar.isVisible()) {
            return;
        }
        iVar.dismiss();
    }

    public final vv.b e() {
        vv.b bVar = this.f79069a;
        if (bVar != null) {
            return bVar;
        }
        Intrinsics.z("currentPackageInfo");
        return null;
    }

    public final List f() {
        h hVar = bw.i.f16941b;
        Application application = xv.a.f78447a;
        if (application == null) {
            Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
            application = null;
        }
        String strA = hVar.a(application).a("KV_UPGRADE_LOCAL_CDN_DATA", "");
        g.b("UpgradeSdkManager", "getLocalUpgradeInfo step1 : 请求本地CDN数据");
        if (TextUtils.isEmpty(strA)) {
            g.b("UpgradeSdkManager", "getLocalUpgradeInfo step1-1: 本地无数据");
            return null;
        }
        Gson gson = bw.f.f16938a;
        Type type = new TypeToken<List<? extends UpgradeData>>() { // from class: com.transsion.upgradesdk.manager.UpgradeRealManager$getLocalUpgradeInfo$$inlined$fromJsonToList$1
        }.getType();
        Intrinsics.g(type, "getType(...)");
        List<UpgradeData> upgradeData = (List) bw.f.f16938a.fromJson(strA, type);
        if (upgradeData == null || upgradeData.isEmpty()) {
            g.b("UpgradeSdkManager", "getLocalUpgradeInfo step1-2: 本地数据为空");
            return null;
        }
        if (this.f79073e) {
            Intrinsics.h(upgradeData, "upgradeData");
            for (UpgradeData upgradeData2 : upgradeData) {
                if (upgradeData2.isForceUpdate() && !upgradeData2.checkNeedUpgrade(f79067o.a().e().f77451d)) {
                    this.f79073e = false;
                    h hVar2 = bw.i.f16941b;
                    Application application2 = xv.a.f78447a;
                    if (application2 == null) {
                        Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
                        application2 = null;
                    }
                    bw.i iVarA = hVar2.a(application2);
                    Intrinsics.h("KV_UPGRADE_IS_FORCE", "key");
                    MMKV mmkv = iVarA.f16943a;
                    if (mmkv == null) {
                        break;
                    }
                    mmkv.x("KV_UPGRADE_IS_FORCE", false);
                    break;
                }
            }
        }
        this.f79081m = upgradeData;
        UpgradeData upgradeData3 = (UpgradeData) upgradeData.get(0);
        h hVar3 = bw.i.f16941b;
        Application application3 = xv.a.f78447a;
        if (application3 == null) {
            Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
            application3 = null;
        }
        bw.i iVarA2 = hVar3.a(application3);
        Intrinsics.h("KV_UPGRADE_CDN_DATA_LAST_REQUEST_TIME", "key");
        MMKV mmkv2 = iVarA2.f16943a;
        if (System.currentTimeMillis() - (mmkv2 != null ? mmkv2.h("KV_UPGRADE_CDN_DATA_LAST_REQUEST_TIME", 0L) : 0L) < ((long) upgradeData3.getSdkRefreshTime()) * 86400000) {
            return upgradeData;
        }
        long jA = vv.d.a("UpgradeSdkManager", "tag", "getLocalUpgradeInfo step1-3: 本地数据过期", NotificationCompat.CATEGORY_MESSAGE);
        if (!g.f16939a && jA - g.f16940b >= 5000) {
            g.f16940b = jA;
            if (Log.isLoggable("upgradeSdkLog", 3)) {
                g.f16939a = true;
            }
        }
        boolean z10 = f79067o.a().f79072d;
        return null;
    }
}
