package com.hisavana.mediation.config;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import be.o;
import be.v;
import com.cloud.hisavana.sdk.common.util.l0;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.MitNetUtil;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.cloud.sdk.commonutil.util.c;
import com.cloud.sdk.commonutil.util.e;
import com.cloud.sdk.commonutil.util.m;
import com.hisavana.common.base.LogSwitch;
import com.hisavana.common.bean.AdMuteStatus;
import com.hisavana.common.bean.AppStartInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.tracking.TrackingManager;
import com.hisavana.common.utils.AdLogUtil;
import com.transsion.ga.AthenaAnalytics;
import j7.a;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class TAdManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static AdConfig f33240a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f33241b;

    public static final class AdConfig {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f33242a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f33243b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f33244c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f33245d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f33246e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f33247f = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public String f33248g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public List<String> f33249h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f33250i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f33251j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public OnCloudCompleteListener f33252k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public boolean f33253l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f33254m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public long f33255n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public boolean f33256o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public boolean f33257p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public boolean f33258q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public boolean f33259r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public String f33260s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public boolean f33261t;

        public AdConfig(AdConfigBuilder adConfigBuilder) {
            this.f33242a = false;
            this.f33243b = false;
            this.f33245d = false;
            this.f33250i = true;
            this.f33253l = false;
            this.f33256o = false;
            this.f33257p = false;
            this.f33258q = false;
            this.f33259r = true;
            this.f33260s = "";
            this.f33261t = false;
            this.f33242a = adConfigBuilder.f33264c;
            this.f33243b = adConfigBuilder.f33265d;
            this.f33244c = adConfigBuilder.f33262a;
            this.f33245d = adConfigBuilder.f33266e;
            this.f33246e = adConfigBuilder.f33277p;
            this.f33248g = adConfigBuilder.f33268g;
            this.f33250i = adConfigBuilder.f33267f;
            this.f33249h = adConfigBuilder.f33269h;
            this.f33251j = adConfigBuilder.f33263b;
            this.f33252k = adConfigBuilder.f33272k;
            this.f33253l = adConfigBuilder.f33273l;
            this.f33254m = adConfigBuilder.f33275n;
            this.f33255n = adConfigBuilder.f33276o;
            this.f33256o = adConfigBuilder.f33278q;
            this.f33257p = adConfigBuilder.f33279r;
            this.f33258q = adConfigBuilder.f33280s;
            this.f33259r = adConfigBuilder.f33281t;
            this.f33260s = adConfigBuilder.f33282u;
            this.f33261t = adConfigBuilder.f33283v;
            AppStartInfo.channel = adConfigBuilder.f33270i;
            AppStartInfo.extInfo = adConfigBuilder.f33271j;
            AdMuteStatus.MUTE_ALL = adConfigBuilder.f33274m;
        }

        public boolean checkEnableRewardedToast() {
            if (TAdManager.f33240a != null) {
                return TAdManager.f33240a.f33257p;
            }
            return true;
        }

        public boolean checkEnableVideoAd() {
            if (TAdManager.f33240a != null) {
                return TAdManager.f33240a.f33259r;
            }
            return true;
        }

        public boolean checkEnableWebRecommendFeature() {
            if (TAdManager.f33240a != null) {
                return TAdManager.f33240a.f33258q;
            }
            return true;
        }

        public int getAppIconId() {
            return this.f33251j;
        }

        public String getAppId() {
            return this.f33244c;
        }

        public List<String> getCodeSeatIds() {
            return this.f33249h;
        }

        public int getDefaultMaterialMaxSize() {
            return this.f33254m;
        }

        public long getDefaultVersion() {
            return this.f33255n;
        }

        public String getPangleAppId() {
            return this.f33260s;
        }

        public boolean getPkgEvn() {
            return this.f33243b;
        }

        public boolean getShouldOptimizeImageLoading() {
            return this.f33256o;
        }

        public boolean isClosePangleWebFileLock() {
            return this.f33261t;
        }

        public boolean isDebug() {
            return this.f33242a;
        }

        public boolean isEnableGDPR() {
            return this.f33246e;
        }

        public boolean isInitAdmob() {
            return this.f33253l;
        }

        public boolean isInitAlliance() {
            return this.f33250i;
        }

        public boolean isLite() {
            return this.f33247f;
        }

        public boolean isTestDevice() {
            return this.f33245d;
        }

        public void releaseCloudListener() {
            this.f33252k = null;
        }

        public void setCodeSeatIds(List<String> list) {
            if (this.f33249h == null) {
                this.f33249h = new ArrayList();
            }
            this.f33249h.clear();
            HashSet hashSet = new HashSet(list);
            list.clear();
            list.addAll(hashSet);
            this.f33249h.addAll(list);
        }
    }

    public static final class AdConfigBuilder {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f33263b;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public String f33268g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public List<String> f33269h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Map<String, String> f33271j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public OnCloudCompleteListener f33272k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public boolean f33273l;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f33275n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public long f33276o;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f33262a = "";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f33264c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f33265d = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f33266e = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f33267f = true;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public String f33270i = "";

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public boolean f33274m = true;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public boolean f33277p = true;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public boolean f33278q = false;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public boolean f33279r = true;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public boolean f33280s = false;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public boolean f33281t = true;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public String f33282u = "";

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public boolean f33283v = false;

        public AdConfig build() {
            return new AdConfig(this);
        }

        public AdConfigBuilder closePangleWebFileLock(boolean z10) {
            this.f33283v = z10;
            return this;
        }

        public AdConfigBuilder initAlliance(boolean z10) {
            this.f33267f = z10;
            return this;
        }

        public AdConfigBuilder initPangleAdvance(String str) {
            this.f33282u = str;
            return this;
        }

        public AdConfigBuilder isInitAdMob(boolean z10) {
            this.f33273l = z10;
            return this;
        }

        public AdConfigBuilder setAhaChannel(String str) {
            this.f33268g = str;
            return this;
        }

        public AdConfigBuilder setAppIconId(int i11) {
            this.f33263b = i11;
            return this;
        }

        public AdConfigBuilder setAppId(String str) {
            Preconditions.c(str, "appId can not be null");
            this.f33262a = str;
            return this;
        }

        public AdConfigBuilder setChannel(String str) {
            this.f33270i = str;
            return this;
        }

        public AdConfigBuilder setCloudCompleteListener(OnCloudCompleteListener onCloudCompleteListener) {
            this.f33272k = onCloudCompleteListener;
            return this;
        }

        public AdConfigBuilder setCodeSeatIds(List<String> list) {
            this.f33269h = list;
            return this;
        }

        public AdConfigBuilder setCustomParams(Map<String, String> map) {
            if (map != null && !map.isEmpty()) {
                this.f33271j = new HashMap();
                if (map.size() <= 10) {
                    this.f33271j.putAll(map);
                } else {
                    int i11 = 0;
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        if (i11 >= 10) {
                            break;
                        }
                        if (entry != null) {
                            i11++;
                            this.f33271j.put(entry.getKey(), entry.getValue());
                        }
                    }
                }
            }
            return this;
        }

        public AdConfigBuilder setDebug(boolean z10) {
            this.f33264c = z10;
            this.f33265d = z10;
            return this;
        }

        public AdConfigBuilder setDefaultMaterialCacheSize(int i11) {
            this.f33275n = i11;
            return this;
        }

        public AdConfigBuilder setEnableVideoAd(boolean z10) {
            this.f33281t = z10;
            return this;
        }

        public AdConfigBuilder setEnableWebRecommendFeature(boolean z10) {
            this.f33280s = z10;
            return this;
        }

        public AdConfigBuilder setInternalDefaultAdVersion(long j11) {
            this.f33276o = j11;
            return this;
        }

        public AdConfigBuilder setMuteVideo(boolean z10) {
            this.f33274m = z10;
            AdLogUtil.Log().d("TAdManager", "SDK init , muteAllAd = " + z10);
            return this;
        }

        public AdConfigBuilder setRewardedCompletionToastEnabled(boolean z10) {
            this.f33279r = z10;
            return this;
        }

        public AdConfigBuilder setShouldOptimizeImageLoading(boolean z10) {
            this.f33278q = z10;
            return this;
        }

        public AdConfigBuilder testDevice(boolean z10) {
            this.f33266e = z10;
            return this;
        }
    }

    public interface OnCloudCompleteListener {
        void onCloudComplete(int i11, String str);
    }

    public static void a(@NonNull AdConfig adConfig) {
        if (f33240a != null) {
            AdLogUtil.Log().w(ComConstants.SDK_INIT, "Already initialized");
            return;
        }
        v.b(adConfig.f33243b);
        if (!adConfig.f33242a) {
            adConfig.f33242a = Log.isLoggable("ADSDK", 3);
        }
        if (!adConfig.f33242a) {
            c.NET_LOG.m().q(Log.isLoggable("AD_NET_LOG", 3));
        }
        AdLogUtil.Log().setLogSwitch(adConfig.f33242a);
        LogSwitch.isDebug = adConfig.f33242a;
        f33240a = adConfig;
        e.j(adConfig.f33242a);
        ComConstants.LITE = false;
        f33240a.f33247f = false;
        b();
        c();
        m.j((Application) e.a().getApplicationContext());
        e();
    }

    public static void b() {
        if (f33240a != null) {
            try {
                AthenaAnalytics.a0(TrackingManager.TID, "mediation" + i7.c.l());
            } catch (Throwable unused) {
            }
            AthenaAnalytics.Q(e.a(), "Mediation", TrackingManager.TID, f33240a.isDebug(), false);
            AthenaAnalytics.D(true);
            AthenaAnalytics.s(ComConstants.HS_APPID, getAppId());
            AthenaAnalytics.s(ComConstants.HS_VER, i7.c.l());
        }
    }

    public static void c() {
        o.a().d(e.a(), f33240a);
    }

    public static void d() {
        boolean z10;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jI = a.e().i(ComConstants.APP_ACTIVE_TIME, 0L);
        long jI2 = a.e().i(ComConstants.FIRST_START_FOR_ONE_DAY, 0L);
        long jC = l0.c(jCurrentTimeMillis);
        if (jI == 0) {
            a.e().q(ComConstants.APP_ACTIVE_TIME, jCurrentTimeMillis);
        } else {
            jCurrentTimeMillis = jI;
        }
        if (jI2 != jC) {
            a.e().q(ComConstants.FIRST_START_FOR_ONE_DAY, jC);
            z10 = true;
        } else {
            z10 = false;
        }
        AppStartInfo.activeTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS Z").format(new Date(jCurrentTimeMillis));
        AppStartInfo.isFirstStartToday = z10;
    }

    public static void e() {
        Bundle bundle = new Bundle();
        bundle.putLong(TrackingKey.INIT_TS, System.currentTimeMillis());
        bundle.putString(TrackingKey.CLD_APP_ID, getAppId());
        TrackingManager.trackInit(bundle);
    }

    public static String getAhaChannel() {
        AdConfig adConfig = f33240a;
        if (adConfig != null) {
            return adConfig.f33248g;
        }
        return null;
    }

    public static String getAppId() {
        AdConfig adConfig = f33240a;
        if (adConfig != null) {
            return adConfig.f33244c;
        }
        return null;
    }

    public static OnCloudCompleteListener getCloudCompleteListener() {
        AdConfig adConfig = f33240a;
        if (adConfig != null) {
            return adConfig.f33252k;
        }
        return null;
    }

    public static List<String> getCodeSeatIds() {
        AdConfig adConfig = f33240a;
        if (adConfig == null || adConfig.f33249h == null) {
            return null;
        }
        return new ArrayList(f33240a.f33249h);
    }

    public static synchronized void init(@NonNull final Context context, @NonNull AdConfig adConfig) {
        AdLogUtil.Log().e(ComConstants.SDK_INIT, "========================== HiSavana SDk init ========================== ");
        if (TextUtils.isEmpty(adConfig.f33244c)) {
            AdLogUtil.Log().e(ComConstants.SDK_INIT, "config or appId is null, please check");
            OnCloudCompleteListener onCloudCompleteListener = adConfig.f33252k;
            if (onCloudCompleteListener != null) {
                onCloudCompleteListener.onCloudComplete(TAdErrorCode.CODE_INVALID_APP_ID, "Invalid app id");
            }
            return;
        }
        e.g(context);
        d();
        HSScopeHelper.f23167a.g(new Runnable() { // from class: com.hisavana.mediation.config.TAdManager.1
            @Override // java.lang.Runnable
            public void run() {
                NetStateManager.setIsNetAvailable(MitNetUtil.c(context));
                CloudControlConfigSync.q();
            }
        });
        a(adConfig);
        f33241b = true;
    }

    public static boolean isDebug() {
        AdConfig adConfig = f33240a;
        if (adConfig != null) {
            return adConfig.f33242a;
        }
        return false;
    }

    public static boolean isTestDevice() {
        AdConfig adConfig = f33240a;
        if (adConfig != null) {
            return adConfig.isTestDevice();
        }
        return false;
    }

    public static void releaseCloudListener() {
        AdConfig adConfig = f33240a;
        if (adConfig != null) {
            adConfig.releaseCloudListener();
        }
    }

    public static void setAgeRestrictedUser(boolean z10) {
        AppStartInfo.ageRestrictedUser = z10;
    }

    public static void setCodeSeatIds(List<String> list) {
        if (list == null || list.size() == 0 || !f33241b) {
            AdLogUtil.Log().e(ComConstants.SDK_INIT, "setCodeSeatIds codeSeatIds is null or empty");
            return;
        }
        AdConfig adConfig = f33240a;
        if (adConfig == null) {
            AdLogUtil.Log().e(ComConstants.SDK_INIT, "setCodeSeatIds u must init first");
        } else {
            adConfig.setCodeSeatIds(list);
            CloudControlConfigSync.b(5);
        }
    }

    public static void setTrackSamplingFraction(int i11) {
        try {
            a7.c.t(i11);
        } catch (Throwable unused) {
        }
    }

    public static void setUserConsent(boolean z10) {
        AppStartInfo.userConsent = z10;
    }
}
