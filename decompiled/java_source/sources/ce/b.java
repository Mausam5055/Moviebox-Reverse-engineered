package ce;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import be.h;
import be.i;
import be.m;
import be.t;
import com.cloud.hisavana.sdk.common.util.l0;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.base.BaseAd;
import com.hisavana.common.base.LogSwitch;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.NativeAdWrapper;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.bean.TAdRequestBody;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.manager.AdCacheManager;
import com.hisavana.common.mock.RecordTestInfo;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.tracking.TrackingManager;
import com.hisavana.common.tracking.TrackingUtil;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.AdUtil;
import com.hisavana.common.utils.MediaLogUtil;
import com.hisavana.common.utils.RunTimer;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.hisavana.mediation.config.CloudControlConfigSync;
import com.hisavana.mediation.config.TAdManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f17112a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Context f17113b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public RunTimer f17114c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public be.c f17115d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f17116e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f17117f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public CloudControlConfig.CodeSeat f17118g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public t f17119h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f17120i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f17121j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f17122k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f17123l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f17124m;
    public int mFillSource;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final LinkedHashMap<String, String> f17125n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f17126o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f17127p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f17128q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public String f17129r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public String f17130s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Map<String, Object> f17131t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f17132u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f17133v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public RunTimer.TimeOutCallback f17134w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f17135x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public long f17136y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Bundle f17137z;

    public class a implements RunTimer.TimeOutCallback {
        public a() {
        }

        @Override // com.hisavana.common.utils.RunTimer.TimeOutCallback
        public void isTimeOut() {
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> Load ad is time out ");
            b.this.clearCurrentAd();
            t tVar = b.this.f17119h;
            if (tVar != null) {
                tVar.onError(TAdErrorCode.ERROR_FILL_FAILED_WITH_MEDIATION_TIME_OUT);
            }
        }
    }

    /* JADX INFO: renamed from: ce.b$b, reason: collision with other inner class name */
    public class C0165b implements Preconditions.a {
        public C0165b() {
        }

        @Override // com.cloud.sdk.commonutil.util.Preconditions.a
        public void onRun() {
            b.this.o();
        }
    }

    public class c implements Preconditions.a {
        public c() {
        }

        @Override // com.cloud.sdk.commonutil.util.Preconditions.a
        public void onRun() {
            b.this.s();
        }
    }

    public b() {
        this.f17112a = "";
        this.f17113b = null;
        this.f17116e = false;
        this.f17117f = false;
        this.f17121j = 60000;
        this.f17122k = 0;
        this.f17123l = 0L;
        this.f17124m = false;
        this.f17125n = new LinkedHashMap<>();
        this.f17133v = 1;
        this.f17134w = new a();
    }

    public b(Context context) {
        this.f17112a = "";
        this.f17113b = null;
        this.f17116e = false;
        this.f17117f = false;
        this.f17121j = 60000;
        this.f17122k = 0;
        this.f17123l = 0L;
        this.f17124m = false;
        this.f17125n = new LinkedHashMap<>();
        this.f17133v = 1;
        this.f17134w = new a();
        this.f17113b = context.getApplicationContext();
        if (e.a() == null) {
            e.i(context);
        }
        b();
    }

    public b(Context context, String str) {
        this.f17112a = "";
        this.f17113b = null;
        this.f17116e = false;
        this.f17117f = false;
        this.f17121j = 60000;
        this.f17122k = 0;
        this.f17123l = 0L;
        this.f17124m = false;
        this.f17125n = new LinkedHashMap<>();
        this.f17133v = 1;
        this.f17134w = new a();
        this.f17112a = str;
        this.f17113b = context.getApplicationContext();
        if (e.a() == null) {
            e.i(context);
        }
        b();
    }

    public abstract be.c a(CloudControlConfig.CodeSeat codeSeat);

    public String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f17125n.get(str);
    }

    public final void a() {
        if (this.f17137z == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt(TrackingKey.REQUEST_TYPE, 1);
        bundle.putString(TrackingKey.TRIGGER_ID, this.f17137z.getString(TrackingKey.TRIGGER_ID));
        bundle.putLong(TrackingKey.TRIGGER_TS, this.f17137z.getLong(TrackingKey.TRIGGER_TS));
        bundle.putInt("ad_type", this.f17137z.getInt("ad_type"));
        bundle.putString(TrackingKey.CLD_APP_ID, this.f17137z.getString(TrackingKey.CLD_APP_ID));
        bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, this.f17137z.getString(TrackingKey.CLD_CODE_SEAT_ID));
        bundle.putString("app_id", this.f17137z.getString("app_id"));
        bundle.putString(TrackingKey.CODE_SEAT_ID, this.f17137z.getString(TrackingKey.CODE_SEAT_ID));
        bundle.putInt(TrackingKey.IS_RETREATAD, this.f17137z.getInt(TrackingKey.IS_RETREATAD));
        bundle.putString(TrackingKey.CLD_CONFIGURE_ID, j7.a.e().j("cloudControlVersion"));
        bundle.putInt(TrackingKey.IS_PRELOAD, this.f17137z.getInt(TrackingKey.IS_PRELOAD));
        bundle.putString(TrackingKey.TRAFFIC_GROUP_ID, this.f17137z.getString(TrackingKey.TRAFFIC_GROUP_ID));
        bundle.putString(TrackingKey.EXPERIMENT_GROUP_ID, this.f17137z.getString(TrackingKey.EXPERIMENT_GROUP_ID));
        TrackingManager.trackingAdCancel(bundle);
    }

    public final void a(Bundle bundle, double d11) {
        ArrayList<ICacheAd> caches;
        NativeAdWrapper nativeAdWrapper;
        StringBuilder sb2 = new StringBuilder();
        be.c cVar = this.f17115d;
        String strSubstring = "";
        int i11 = 0;
        if (cVar != null && (caches = cVar.G().getCaches(this.f17112a, 100, false, this.f17128q)) != null) {
            int i12 = 0;
            for (ICacheAd iCacheAd : caches) {
                if (iCacheAd.getEcpmPrice() < d11) {
                    i12++;
                    if (iCacheAd.getAdSource() == 0) {
                        if (iCacheAd instanceof BaseAd) {
                            sb2.append(((BaseAd) iCacheAd).mBundle.get(TrackingKey.REQUEST_ID));
                        } else if ((iCacheAd instanceof AdNativeInfo) && (nativeAdWrapper = ((AdNativeInfo) iCacheAd).getNativeAdWrapper()) != null && nativeAdWrapper.getAdImpl() != null) {
                            sb2.append(nativeAdWrapper.getAdImpl().mBundle.get(TrackingKey.REQUEST_ID));
                        }
                        sb2.append(",");
                    }
                }
            }
            if (sb2.toString().length() > 1) {
                strSubstring = sb2.substring(0, sb2.length() - 1);
                AdLogUtil.Log().d("TBaseAd", "bidding_platform_str" + strSubstring);
            }
            i11 = i12;
        }
        if (bundle != null) {
            bundle.putString(TrackingKey.BIDDING_FAIL_PLATFORM, strSubstring);
            bundle.putInt(TrackingKey.VALID_CACHE_MATERIAL_CNT, i11);
        }
    }

    public void a(TAdErrorCode tAdErrorCode) {
        t tVar = this.f17119h;
        if (tVar != null) {
            tVar.onError(tAdErrorCode);
        }
    }

    public void a(TAdNativeInfo tAdNativeInfo) {
        Network network;
        if (this.f17119h == null) {
            return;
        }
        AdditionalInfo additionalInfoF = f();
        if (tAdNativeInfo != null) {
            network = tAdNativeInfo.getNetwork();
            additionalInfoF.setMediatorSource(tAdNativeInfo.getMediatorSourceName());
        } else {
            ICacheAd iCacheAdI = i();
            Network network2 = iCacheAdI == null ? null : iCacheAdI.getNetwork();
            additionalInfoF.setMediatorSource(iCacheAdI != null ? iCacheAdI.getMediatorSourceName() : null);
            network = network2;
        }
        if (network != null) {
            additionalInfoF.setSource(network.getSource());
            additionalInfoF.setApplicationId(network.getApplicationId());
            additionalInfoF.setApplicationKey(network.getApplicationKey());
            additionalInfoF.setCodeSeatId(network.getCodeSeatId());
        }
        this.f17119h.s(additionalInfoF);
    }

    public final void a(String str, String str2, int i11) {
        Bundle bundle = new Bundle();
        bundle.putString("scene_id", str2);
        bundle.putString(TrackingKey.SCENE_TOKEN, str);
        bundle.putInt(TrackingKey.IS_OFFLINE, !NetStateManager.checkNetworkState(false) ? 1 : 0);
        if (this.f17118g == null) {
            this.f17118g = h.a(this.f17112a);
        }
        CloudControlConfig.CodeSeat codeSeat = this.f17118g;
        if (codeSeat == null) {
            bundle.putInt(TrackingKey.CACHE_STATUS, 1);
        } else {
            AdCache cache = AdCacheManager.getCache(codeSeat.getCodeSeatType().intValue());
            if (cache != null) {
                if (cache.hasAds(this.f17112a, this.f17128q)) {
                    bundle.putInt(TrackingKey.CACHE_STATUS, 0);
                } else {
                    bundle.putInt(TrackingKey.CACHE_STATUS, this.f17116e ? 2 : 1);
                }
            }
        }
        bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, this.f17112a);
        bundle.putString(TrackingKey.CLD_APP_ID, TAdManager.getAppId());
        bundle.putLong("ts", System.currentTimeMillis());
        bundle.putInt(TrackingKey.AD_COUNT, i11);
        TrackingManager.trackEnterScene(bundle);
    }

    public final void a(boolean z10, int i11) {
        a(z10, i11, 0);
    }

    public final void a(boolean z10, int i11, int i12) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f17123l < 1000) {
            AdLogUtil.Log().e("TBaseAd", "isReady interval time is not fit");
            return;
        }
        this.f17123l = jCurrentTimeMillis;
        Bundle bundle = new Bundle();
        if (z10) {
            i11 = this.f17117f ? 1 : 2;
        }
        bundle.putInt("is_ready_status", i11);
        if (!z10 && i12 != 0) {
            try {
                bundle.putInt(TrackingKey.AD_EXPIRE_REASON, i12);
            } catch (Throwable th2) {
                AdLogUtil.Log().e("TBaseAd", Log.getStackTraceString(th2));
                return;
            }
        }
        bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, this.f17112a);
        bundle.putString(TrackingKey.CLD_APP_ID, TAdManager.getAppId());
        bundle.putLong("ts", System.currentTimeMillis());
        TrackingManager.trackIsReady(bundle);
    }

    public abstract boolean a(int i11);

    public TAdErrorCode b(CloudControlConfig.CodeSeat codeSeat) {
        if (codeSeat == null) {
            return TAdErrorCode.ERROR_AD_UNIT_CONFIG_EMPTY;
        }
        if (TAdManager.isDebug()) {
            String str = "cloudControlEnable=" + codeSeat.getCloudControlEnable() + "\ncodeSeatId=" + codeSeat.getCodeSeatId() + "\ncodeSeatType=" + codeSeat.getCodeSeatType() + "\nadShowCountLimitDay=" + codeSeat.getAdShowCountLimitDay() + "\nadShowCountLimitDay=" + codeSeat.getAdShowCountLimitDay() + "\nadShowCountLimitHour=" + codeSeat.getAdShowCountLimitHour() + "\nadShowTimeInterval=" + codeSeat.getAdShowTimeInterval() + "\ncurrentShowInterval=" + (System.currentTimeMillis() - codeSeat.getLastShowTime()) + "\n";
            AdLogUtil.Log().i(ComConstants.AD_FLOW, "inspection info is: \n" + str);
        }
        if (!codeSeat.getCloudControlEnable().booleanValue()) {
            return TAdErrorCode.ERROR_CLOUD_AD_SEAT_IS_CLOSED;
        }
        this.f17126o = codeSeat.getCodeSeatType().intValue();
        if (!a(codeSeat.getCodeSeatType().intValue())) {
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> code seat type does not match request type");
            MediaLogUtil.e("TBaseAd", "code seat type does not match request type ---> " + codeSeat.getCodeSeatType());
            return TAdErrorCode.ERROR_AD_TYPE_LOAD_INCONSISTENCY;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jC = l0.c(jCurrentTimeMillis);
        long jB = l0.b(jCurrentTimeMillis);
        if (codeSeat.getAdShowCountLimitDay().intValue() == 0 || (codeSeat.getAdShowCountLimitDay().intValue() != -1 && jC == codeSeat.getTodayZeroClock() && codeSeat.getTodayShowTimes() >= codeSeat.getAdShowCountLimitDay().intValue())) {
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> ad show times can not exceed day show max");
            MediaLogUtil.e("TBaseAd", "ad show times reach the limit of day,day showTimes " + codeSeat.getAdShowCountLimitDay());
            return TAdErrorCode.ERROR_AD_SHOW_TIMES_OUT_OF_DAY;
        }
        if (codeSeat.getAdShowCountLimitHour().intValue() == 0 || (codeSeat.getAdShowCountLimitHour().intValue() != -1 && jB == codeSeat.getCurrentHourZeroClock() && codeSeat.getCurrentHourShowTimes() >= codeSeat.getAdShowCountLimitHour().intValue())) {
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> ad display has reached the limit of hours");
            MediaLogUtil.e("TBaseAd", "ad display has reached the limit of hour,hour showTimes " + codeSeat.getAdShowCountLimitHour());
            return TAdErrorCode.ERROR_AD_SHOW_TIMES_OUT_OF_HOUR;
        }
        long lastShowTime = jCurrentTimeMillis - codeSeat.getLastShowTime();
        if (lastShowTime <= 0) {
            lastShowTime = -lastShowTime;
        }
        if (codeSeat.getAdShowTimeInterval().intValue() == -1000 || lastShowTime > codeSeat.getAdShowTimeInterval().intValue()) {
            return null;
        }
        AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> ad display did not reach the interval");
        MediaLogUtil.e("TBaseAd", "ad display did not reach the interval,time " + codeSeat.getAdShowTimeInterval());
        return TAdErrorCode.ERROR_AD_SHOW_NOT_IN_INTERVAL;
    }

    public void b() {
        if (this.f17119h == null) {
            this.f17119h = new t(this);
        }
    }

    public final void b(int i11) {
        if (!e.h()) {
            AdLogUtil.Log().e("TBaseAd", "you should init first");
            return;
        }
        com.cloud.hisavana.sdk.manager.b.f22711a.d();
        this.f17120i = false;
        this.f17133v = i11;
        Preconditions.d(new Preconditions.a() { // from class: ce.a
            @Override // com.cloud.sdk.commonutil.util.Preconditions.a
            public final void onRun() {
                this.f17111a.k();
            }
        });
    }

    public void b(TAdErrorCode tAdErrorCode) {
        t tVar = this.f17119h;
        if (tVar != null) {
            tVar.onShowError(tAdErrorCode);
        }
    }

    public final void b(boolean z10, int i11) {
        int[] validAndInvalidAdNum;
        this.f17135x = TrackingUtil.getTriggerId();
        Bundle bundle = new Bundle();
        this.f17137z = bundle;
        bundle.putString(TrackingKey.TRIGGER_ID, this.f17135x);
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.f17136y = jCurrentTimeMillis;
        this.f17137z.putLong(TrackingKey.TRIGGER_TS, jCurrentTimeMillis);
        CloudControlConfig.CodeSeat codeSeat = this.f17118g;
        if (codeSeat != null) {
            this.f17137z.putInt("ad_type", codeSeat.getCodeSeatType().intValue());
            AdCache cache = AdCacheManager.getCache(this.f17118g.getCodeSeatType().intValue());
            if (cache != null && (validAndInvalidAdNum = cache.getValidAndInvalidAdNum(this.f17112a)) != null && validAndInvalidAdNum.length >= 2) {
                int i12 = validAndInvalidAdNum[0];
                int i13 = validAndInvalidAdNum[1];
                this.f17137z.putInt(TrackingKey.CACHE_VALID_ADS, i12);
                this.f17137z.putInt(TrackingKey.CACHE_EXPIRE_ADS, i13);
            }
            this.f17137z.putInt(TrackingKey.MULTI_COUNT, this.f17118g.getAdRequestConcurrentCount().intValue());
            this.f17137z.putInt(TrackingKey.BIDDING_DURATION, (this.f17133v == 2 ? this.f17118g.getRealtimeBiddingWaitTime() : this.f17118g.getBiddingWaitTime()).intValue());
            this.f17137z.putString(TrackingKey.TRAFFIC_GROUP_ID, this.f17118g.getTrafficGroupId());
            this.f17137z.putString(TrackingKey.EXPERIMENT_GROUP_ID, this.f17118g.getExperimentGroupId());
            this.f17137z.putInt(TrackingKey.REQUEST_NUM, this.f17118g.getCodeSeatType().intValue() == 6 ? this.f17118g.getAdRequestCount().intValue() : 1);
        }
        this.f17137z.putString("app_id", TAdManager.getAppId());
        this.f17137z.putString(TrackingKey.CODE_SEAT_ID, this.f17112a);
        this.f17137z.putInt(TrackingKey.IS_PRE_TRIGGER, z10 ? 1 : 0);
        this.f17137z.putString(TrackingKey.CLD_APP_ID, TAdManager.getAppId());
        this.f17137z.putString(TrackingKey.CLD_CODE_SEAT_ID, this.f17112a);
        this.f17137z.putInt(TrackingKey.AD_TRIGGER_STATUS, i11);
        this.f17137z.putInt(TrackingKey.PRIORITY_CODE, this.f17122k);
        this.f17137z.putInt(TrackingKey.IS_CONTAIN_VULGAR, this.f17128q ? 1 : 0);
        this.f17137z.putInt(TrackingKey.TRIGGER_MODE, this.f17133v);
        TrackingManager.trackingADTrigger(this.f17137z);
    }

    public int c(CloudControlConfig.CodeSeat codeSeat) {
        int i11 = 0;
        if (codeSeat == null) {
            return 0;
        }
        int iIntValue = codeSeat.getAdxShowRate().intValue();
        int iIntValue2 = codeSeat.getEwShowRate().intValue();
        Random random = new Random(System.currentTimeMillis());
        int iAbs = Math.abs(random.nextInt() % 100);
        int iAbs2 = Math.abs(random.nextInt() % 100);
        if (iAbs < iIntValue && iAbs2 < iIntValue2) {
            i11 = 3;
        } else if (iAbs < iIntValue) {
            i11 = 1;
        } else if (iAbs2 < iIntValue2) {
            i11 = 2;
        }
        AdLogUtil.Log().d("TBaseAd", "Traffic support config: adxShowRate " + iIntValue + " ewShowRate " + iIntValue2 + ",current random result is: " + i11);
        return i11;
    }

    public void c(TAdErrorCode tAdErrorCode) {
        if (this.f17119h != null) {
            AdditionalInfo additionalInfoF = f();
            if (tAdErrorCode != null) {
                additionalInfoF.setErrorCode(tAdErrorCode);
            }
            this.f17119h.d(tAdErrorCode, additionalInfoF);
        }
    }

    public abstract boolean c();

    public void clearCurrentAd() {
        if (this.f17116e && this.f17115d != null) {
            a();
        }
        stopTimer();
        be.c cVar = this.f17115d;
        if (cVar != null) {
            cVar.w();
        }
        setIsShowing(false);
        if (this.f17116e) {
            AdLogUtil.Log().d(ComConstants.AD_FLOW, "cancel request ad ");
        }
    }

    public i d() {
        i iVar = new i();
        iVar.c(this.f17137z);
        iVar.w(this.f17122k);
        iVar.k(this.f17128q);
        iVar.e(this.f17129r);
        iVar.j(this.f17130s);
        iVar.f(this.f17131t);
        iVar.n(this.f17132u);
        return iVar;
    }

    public void d(TAdErrorCode tAdErrorCode) {
        if (this.f17119h != null) {
            AdditionalInfo additionalInfoF = f();
            if (tAdErrorCode != null) {
                additionalInfoF.setErrorCode(tAdErrorCode);
            }
            this.f17119h.n(tAdErrorCode, additionalInfoF);
        }
    }

    public void destroy() {
        Preconditions.d(new C0165b());
    }

    public int e() {
        return this.f17126o;
    }

    public String enterScene(String str, int i11) {
        if (TextUtils.isEmpty(TAdManager.getAppId())) {
            AdLogUtil.Log().e("TBaseAd", "appId is empty");
            return "";
        }
        if (!e.h()) {
            AdLogUtil.Log().e("TBaseAd", "you should init first");
            return "";
        }
        Preconditions.a();
        String strO = DeviceUtil.o();
        a(strO, str, i11);
        if (this.f17125n.size() >= 24) {
            Iterator<String> it = this.f17125n.keySet().iterator();
            if (it.hasNext()) {
                this.f17125n.remove(it.next());
            }
        }
        this.f17125n.put(strO, str);
        return strO;
    }

    public final AdditionalInfo f() {
        AdditionalInfo additionalInfo = new AdditionalInfo();
        additionalInfo.setPlacementId(this.f17112a);
        additionalInfo.setMcc(i7.c.d());
        additionalInfo.setTriggerId(this.f17135x);
        CloudControlConfig.CodeSeat codeSeat = this.f17118g;
        if (codeSeat != null) {
            additionalInfo.setTrafficGroupId(codeSeat.getTrafficGroupId());
            additionalInfo.setExperimentGroupId(this.f17118g.getExperimentGroupId());
        }
        additionalInfo.setSdkVersion(i7.c.l());
        return additionalInfo;
    }

    public final be.c g() {
        CloudControlConfig.CodeSeat codeSeat;
        if (this.f17119h == null || (codeSeat = this.f17118g) == null) {
            return null;
        }
        if (this.f17115d == null) {
            this.f17115d = a(codeSeat);
        }
        return this.f17115d;
    }

    public int getSupportFlag() {
        return this.f17122k;
    }

    public double getTopPrice(int i11) {
        AdCache cache = AdCacheManager.getCache(i11);
        if (cache == null) {
            return 0.0d;
        }
        return cache.getMaxPrice(this.f17112a, this.f17128q);
    }

    public final Network h() {
        CloudControlConfig.CodeSeat codeSeat = this.f17118g;
        if (codeSeat == null || codeSeat.getNetworks() == null) {
            return null;
        }
        for (Network network : this.f17118g.getNetworks()) {
            if (network != null && network.getSource().intValue() == 0) {
                return network;
            }
        }
        return null;
    }

    public boolean hasAd() {
        int lastExpireReason;
        if (TextUtils.isEmpty(TAdManager.getAppId())) {
            AdLogUtil.Log().e("TBaseAd", "appId is empty");
            return false;
        }
        if (!e.h()) {
            AdLogUtil.Log().e("TBaseAd", "you should init first");
            return false;
        }
        if (this.f17124m) {
            a(false, 3);
            AdLogUtil.Log().d("TBaseAd", "current object is destroyed");
            return false;
        }
        if (TextUtils.isEmpty(this.f17112a)) {
            a(false, 4);
            AdLogUtil.Log().d("TBaseAd", "isReady,mAdUnit is null");
            return false;
        }
        if (this.f17118g == null) {
            this.f17118g = h.a(this.f17112a);
        }
        CloudControlConfig.CodeSeat codeSeat = this.f17118g;
        if (codeSeat == null) {
            a(false, 5);
            AdLogUtil.Log().d("TBaseAd", "isReady,mCodeSeatConfig is null");
            return false;
        }
        TAdErrorCode tAdErrorCodeB = b(codeSeat);
        if (tAdErrorCodeB != null) {
            a(false, tAdErrorCodeB.getErrorCode());
            AdLogUtil.Log().d("TBaseAd", "isReady,cloud control inspection failed");
            return false;
        }
        AdCache cache = AdCacheManager.getCache(this.f17118g.getCodeSeatType().intValue());
        if (cache == null) {
            a(false, 6);
            AdLogUtil.Log().d("TBaseAd", "isReady,no ad cache");
            return false;
        }
        boolean zHasAds = cache.hasAds(this.f17112a, this.f17128q);
        AdLogUtil.Log().d("TBaseAd", "isReady key " + this.f17112a + " hasAd " + zHasAds);
        if (zHasAds) {
            a(true, 0);
        } else {
            try {
                lastExpireReason = cache.getLastExpireReason(this.f17112a);
            } catch (Throwable th2) {
                AdLogUtil.Log().e("TBaseAd", Log.getStackTraceString(th2));
                lastExpireReason = 0;
            }
            a(false, 0, lastExpireReason);
            try {
                cache.clearLastExpireReason(this.f17112a);
            } catch (Throwable th3) {
                AdLogUtil.Log().e("TBaseAd", Log.getStackTraceString(th3));
            }
        }
        return zHasAds;
    }

    public final ICacheAd i() {
        be.c cVar = this.f17115d;
        if (cVar == null) {
            return null;
        }
        return cVar.G().getCache(this.f17112a, false, 0, this.f17128q);
    }

    public boolean isLoaded() {
        return this.f17117f;
    }

    public final void j() {
        CloudControlConfig.CodeSeat codeSeat;
        if (this.f17119h == null || (codeSeat = this.f17118g) == null) {
            this.f17115d = null;
            return;
        }
        be.c cVarA = a(codeSeat);
        this.f17115d = cVarA;
        if (cVarA != null) {
            cVarA.k(this.f17119h);
            this.f17115d.o(this.f17114c);
            this.f17115d.R(this.f17133v);
        }
    }

    public final void k() {
        this.f17118g = h.a(this.f17112a);
        b(false, !NetStateManager.checkNetworkState(false) ? 1 : 0);
        m();
        if (this.f17127p && !c()) {
            a(TAdErrorCode.ERROR_CODE_AD_IS_SHOWING);
            return;
        }
        this.f17117f = false;
        clearCurrentAd();
        this.f17116e = true;
        if (this.f17124m) {
            this.f17116e = false;
            a(TAdErrorCode.ERROR_CURRENT_OBJECT_IS_DESTROYED);
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd -->current object haved been destroyed");
            MediaLogUtil.e("TBaseAd", "current object haved been destroyed");
            return;
        }
        if (TextUtils.isEmpty(TAdManager.getAppId())) {
            this.f17116e = false;
            a(TAdErrorCode.ERROR_INVALID_APP_ID);
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> Network request is invalid, the appId or appToken must be valid ----- Current app id is:" + TAdManager.getAppId());
            MediaLogUtil.e("TBaseAd", "loadAdInternal,appId is empty");
            return;
        }
        CloudControlConfig.CodeSeat codeSeat = this.f17118g;
        if (codeSeat == null) {
            MediaLogUtil.e("TBaseAd", "loadAdInternal,config is null；codeSeatId = " + this.f17112a);
            this.f17116e = false;
            CloudControlConfigSync.b(6);
            int iF = j7.a.e().f(ComConstants.Pref.CLOUD_CONFIG_ERROR_CODE);
            if (iF != 0) {
                a(ComConstants.transferCloudErrorCode(iF));
                return;
            } else {
                a(TAdErrorCode.ERROR_AD_UNIT_CONFIG_EMPTY);
                return;
            }
        }
        this.f17126o = codeSeat.getCodeSeatType().intValue();
        if (Boolean.FALSE.equals(this.f17118g.getCloudControlEnable())) {
            MediaLogUtil.e("TBaseAd", "loadAdInternal,config is closed");
            this.f17116e = false;
            a(TAdErrorCode.ERROR_CLOUD_AD_SEAT_IS_CLOSED);
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> current ad unit is close ");
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jC = l0.c(jCurrentTimeMillis);
        long jB = l0.b(jCurrentTimeMillis);
        if (this.f17118g.getAdShowCountLimitDay().intValue() == 0 || (this.f17118g.getAdShowCountLimitDay().intValue() != -1 && jC == this.f17118g.getTodayZeroClock() && this.f17118g.getTodayShowTimes() >= this.f17118g.getAdShowCountLimitDay().intValue())) {
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> ad show times can not exceed day show max");
            MediaLogUtil.e("TBaseAd", "ad show times reach the limit of day,day showTimes " + this.f17118g.getAdShowCountLimitDay());
            this.f17116e = false;
            a(TAdErrorCode.ERROR_AD_SHOW_TIMES_OUT_OF_DAY);
            return;
        }
        if (this.f17118g.getAdShowCountLimitHour().intValue() == 0 || (this.f17118g.getAdShowCountLimitHour().intValue() != -1 && jB == this.f17118g.getCurrentHourZeroClock() && this.f17118g.getCurrentHourShowTimes() >= this.f17118g.getAdShowCountLimitHour().intValue())) {
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> ad display has reached the limit of hours");
            MediaLogUtil.e("TBaseAd", "ad display has reached the limit of hour,hour showTimes " + this.f17118g.getAdShowCountLimitHour());
            this.f17116e = false;
            a(TAdErrorCode.ERROR_AD_SHOW_TIMES_OUT_OF_HOUR);
            return;
        }
        long lastShowTime = jCurrentTimeMillis - this.f17118g.getLastShowTime();
        if (lastShowTime <= 0) {
            lastShowTime = -lastShowTime;
        }
        if (this.f17118g.getAdShowTimeInterval().intValue() != -1000 && lastShowTime <= this.f17118g.getAdShowTimeInterval().intValue()) {
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> ad display did not reach the interval");
            MediaLogUtil.e("TBaseAd", "ad display did not reach the interval,time " + this.f17118g.getAdShowTimeInterval());
            this.f17116e = false;
            a(TAdErrorCode.ERROR_AD_SHOW_NOT_IN_INTERVAL);
            return;
        }
        this.f17122k = c(this.f17118g);
        j();
        if (!a(e())) {
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> code seat type does not match request type");
            MediaLogUtil.e("TBaseAd", "code seat type does not match request type ---> " + this.f17118g.getCodeSeatType());
            this.f17116e = false;
            a(TAdErrorCode.ERROR_AD_TYPE_LOAD_INCONSISTENCY);
            return;
        }
        this.f17118g = m.a(this.f17118g);
        if (NetStateManager.checkNetworkState(false)) {
            p();
            r();
            return;
        }
        AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> net error ");
        MediaLogUtil.e("TBaseAd", "net error");
        this.f17116e = false;
        Network networkH = h();
        be.c cVarG = g();
        if (networkH == null || cVarG == null || !cVarG.d0()) {
            a(TAdErrorCode.ERROR_FILL_FAILED_WITH_NETWORK_EXCEPTION);
            return;
        }
        cVarG.g(this.f17137z);
        cVarG.O(this.f17118g.getAdRequestCount().intValue());
        if (cVarG.u(this.f17118g, networkH)) {
            return;
        }
        a(TAdErrorCode.ERROR_FILL_FAILED_NO_NETWORK_AND_OFFLINE);
    }

    public void l() {
        if (this.f17119h == null) {
            return;
        }
        AdditionalInfo additionalInfoF = f();
        ICacheAd iCacheAdI = i();
        Network network = iCacheAdI != null ? iCacheAdI.getNetwork() : null;
        if (network != null) {
            additionalInfoF.setSource(network.getSource());
            additionalInfoF.setApplicationId(network.getApplicationId());
            additionalInfoF.setApplicationKey(network.getApplicationKey());
            additionalInfoF.setCodeSeatId(network.getCodeSeatId());
            additionalInfoF.setEcpm(network.getPrice());
            additionalInfoF.setPrecision(AdUtil.isWaterFall(network) ? "estimated" : "exact");
            additionalInfoF.setCurrency("USD");
            additionalInfoF.setBidding(Boolean.valueOf(AdUtil.isBiddingNetwork(network)));
        }
        if (iCacheAdI != null) {
            additionalInfoF.setMediatorSource(iCacheAdI.getMediatorSourceName());
        }
        this.f17119h.c(additionalInfoF);
    }

    public void loadAd() {
        b(1);
    }

    public final void m() {
        if (this.f17119h != null) {
            this.f17119h.q(f());
        }
    }

    public void n() {
        a((TAdNativeInfo) null);
    }

    public final void o() {
        t tVar = this.f17119h;
        if (tVar != null) {
            tVar.h(null);
            this.f17119h.g(null);
            this.f17119h.i(null);
        }
        this.f17119h = null;
        this.f17118g = null;
        RecordTestInfo.destroy();
        setIsShowing(false);
        clearCurrentAd();
        if (this.f17116e) {
            trackingAdLoaded(TAdErrorCode.CODE_CURRENT_OBJECT_IS_DESTROYED, TAdErrorCode.ERROR_CURRENT_OBJECT_IS_DESTROYED.getErrorMessage(), -1);
        }
        this.f17116e = false;
        this.f17124m = true;
    }

    public final void p() {
        CloudControlConfig.CodeSeat codeSeat = this.f17118g;
        if (codeSeat != null) {
            this.f17121j = codeSeat.getAdRequestTimeout().intValue() * 1000;
        }
        if (this.f17121j > 0) {
            if (this.f17114c == null) {
                this.f17114c = new RunTimer();
            }
            this.f17114c.cancelTimeTask();
            this.f17114c.setTimeOutCallback(this.f17134w);
            this.f17114c.setScheduleTime(this.f17121j);
            this.f17114c.runTimerTask();
        }
    }

    public void pause() {
        be.c cVar = this.f17115d;
        if (cVar != null) {
            cVar.i0();
        }
    }

    public final void preload() {
        loadAd();
    }

    public void q() {
    }

    public final void r() {
        if (this.f17118g == null) {
            MediaLogUtil.e("TBaseAd", "startLoadMediation codeSeat is null");
            a(TAdErrorCode.ERROR_AD_UNIT_CONFIG_EMPTY);
            return;
        }
        AdLogUtil.Log().i(ComConstants.AD_FLOW, "*----> TBaseAd - current cloudConfig is " + this.f17118g.toString());
        List<Network> networks = this.f17118g.getNetworks();
        if (networks == null || networks.isEmpty()) {
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> ad is empty ");
            MediaLogUtil.e("TBaseAd", "startLoadMediation,network is empty");
            a(TAdErrorCode.ERROR_AD_SOURCE_LIST_IS_EMPTY);
            return;
        }
        be.c cVarG = g();
        if (cVarG != null) {
            cVarG.g(this.f17137z);
            if (cVarG.q(this.f17113b)) {
                return;
            }
            MediaLogUtil.e("TBaseAd", "prepare for request failed");
            a(TAdErrorCode.ERROR_PREPARE_REQUEST_FAILED);
        }
    }

    public void resume() {
        be.c cVar = this.f17115d;
        if (cVar != null) {
            cVar.m0();
        }
    }

    public final void s() {
        RunTimer runTimer = this.f17114c;
        if (runTimer != null) {
            runTimer.cancelTimeTask();
            this.f17114c = null;
        }
    }

    public void setAdLoadScenes(String str, String str2, Map<String, Object> map) {
        this.f17129r = str;
        this.f17130s = str2;
        this.f17131t = map;
    }

    public void setCodeSeatType(int i11) {
        this.f17126o = i11;
    }

    public void setContainVulgarContent(boolean z10) {
        this.f17128q = z10;
    }

    public void setCurrActivityFullscreen(boolean z10) {
        this.f17132u = z10;
    }

    public void setIsShowing(boolean z10) {
        this.f17127p = z10;
    }

    public void setLoaded(boolean z10) {
        this.f17117f = z10;
    }

    public void setLoading(boolean z10) {
        this.f17116e = z10;
    }

    public void setRequestBody(TAdRequestBody tAdRequestBody) {
        if (tAdRequestBody == null) {
            return;
        }
        b();
        this.f17121j = tAdRequestBody.getScheduleTime();
        t tVar = this.f17119h;
        if (tVar != null) {
            tVar.h(tAdRequestBody.getAdListener());
            this.f17119h.i(tAdRequestBody.getAdditionalListener());
        }
    }

    public void stopTimer() {
        Preconditions.d(new c());
    }

    public void t() {
        if (this.f17119h != null) {
            if (NetStateManager.checkNetworkState(false)) {
                TAdErrorCode tAdErrorCode = TAdErrorCode.ERROR_TRIGGER_SHOW_ONLINE_NO_AD;
                trackingTriggerShowError(tAdErrorCode);
                this.f17119h.onShowError(tAdErrorCode);
            } else {
                TAdErrorCode tAdErrorCode2 = TAdErrorCode.ERROR_RIGGER_SHOW_OFFLINE_NO_AD;
                trackingTriggerShowError(tAdErrorCode2);
                this.f17119h.onShowError(tAdErrorCode2);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00d5 A[Catch: Exception -> 0x0038, TryCatch #0 {Exception -> 0x0038, blocks: (B:3:0x0028, B:5:0x002c, B:9:0x003b, B:11:0x006c, B:13:0x0070, B:18:0x008c, B:20:0x0098, B:26:0x00b5, B:28:0x00d5, B:30:0x00db, B:32:0x010e, B:35:0x0115, B:42:0x01b4, B:39:0x01ac, B:43:0x01c3, B:48:0x01e1, B:52:0x021c, B:54:0x023d, B:55:0x0246, B:57:0x024a, B:58:0x0260, B:60:0x0269, B:61:0x0281, B:65:0x028d, B:69:0x029b, B:68:0x0297, B:64:0x0289, B:51:0x0218, B:47:0x01dd, B:21:0x009e, B:23:0x00a2), top: B:73:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00da  */
    public void trackingAdLoaded(int i11, String str, int i12) {
        double d11;
        Bundle bundle;
        Network network;
        Object obj;
        try {
            if (this.f17137z == null) {
                AdLogUtil.Log().w(ComConstants.AD_FLOW, "mBundle is null");
                return;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString(TrackingKey.TRIGGER_ID, this.f17137z.getString(TrackingKey.TRIGGER_ID));
            bundle2.putLong(TrackingKey.TRIGGER_TS, this.f17137z.getLong(TrackingKey.TRIGGER_TS));
            bundle2.putInt("ad_type", this.f17137z.getInt("ad_type"));
            bundle2.putInt(TrackingKey.AD_TRIGGER_STATUS, this.f17137z.getInt(TrackingKey.AD_TRIGGER_STATUS));
            be.c cVar = this.f17115d;
            ICacheAd cache = (cVar == null || this.f17118g == null) ? null : cVar.G().getCache(this.f17118g.getCodeSeatId(), false, this.f17122k, this.f17128q);
            if (cache != null) {
                double ecpmPrice = cache.getEcpmPrice();
                Network network2 = cache.getNetwork();
                if (cache instanceof BaseAd) {
                    bundle = ((BaseAd) cache).mBundle;
                } else {
                    if (cache instanceof AdNativeInfo) {
                        bundle = ((AdNativeInfo) cache).getNativeAdWrapper().getAdImpl().mBundle;
                    } else {
                        bundle = null;
                    }
                    AdLogUtil adLogUtilLog = AdLogUtil.Log();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("trackingAdLoaded --> isNative = ");
                    sb2.append(cache instanceof AdNativeInfo);
                    sb2.append(" 设置标识符 contextBundle.PLATFORM=");
                    if (bundle != null) {
                        obj = bundle.get(TrackingKey.PLATFORM);
                    } else {
                        obj = null;
                    }
                    sb2.append(obj);
                    adLogUtilLog.d("TBaseAd", sb2.toString());
                    bundle2.putInt(TrackingKey.IS_OFFLINE_AD, cache.isOfflineAd() ? 1 : 0);
                    bundle2.putString(TrackingKey.MEDIATOR_SOURCE, cache.getMediatorSourceName());
                    bundle2.putString(TrackingKey.MEDIATOR_CODE_SEAT_ID, cache.getMediatorSourceUnitId());
                    network = network2;
                    d11 = ecpmPrice;
                }
                AdLogUtil adLogUtilLog2 = AdLogUtil.Log();
                StringBuilder sb3 = new StringBuilder();
                sb3.append("trackingAdLoaded --> isNative = ");
                sb3.append(cache instanceof AdNativeInfo);
                sb3.append(" 设置标识符 contextBundle.PLATFORM=");
                if (bundle != null) {
                    obj = bundle.get(TrackingKey.PLATFORM);
                } else {
                    obj = null;
                }
                sb3.append(obj);
                adLogUtilLog2.d("TBaseAd", sb3.toString());
                bundle2.putInt(TrackingKey.IS_OFFLINE_AD, cache.isOfflineAd() ? 1 : 0);
                bundle2.putString(TrackingKey.MEDIATOR_SOURCE, cache.getMediatorSourceName());
                bundle2.putString(TrackingKey.MEDIATOR_CODE_SEAT_ID, cache.getMediatorSourceUnitId());
                network = network2;
                d11 = ecpmPrice;
            } else {
                d11 = 0.0d;
                bundle = null;
                network = null;
            }
            a(bundle2, d11);
            if (bundle != null) {
                bundle2.putInt(TrackingKey.IS_PRE_TRIGGER, bundle.getInt(TrackingKey.IS_PRE_TRIGGER));
                bundle2.putInt(TrackingKey.REQUEST_TYPE, bundle.getInt(TrackingKey.REQUEST_TYPE));
                bundle2.putInt(TrackingKey.PLATFORM, bundle.getInt(TrackingKey.PLATFORM));
                bundle2.putString("app_id", bundle.getString("app_id"));
                bundle2.putString(TrackingKey.CODE_SEAT_ID, bundle.getString(TrackingKey.CODE_SEAT_ID));
                bundle2.putDouble(TrackingKey.BIDDING_PRICE, bundle.getDouble(TrackingKey.BIDDING_PRICE));
                bundle2.putInt(TrackingKey.BIDDING_TYPE, bundle.getInt(TrackingKey.BIDDING_TYPE));
                bundle2.putInt(TrackingKey.PRIORITY, bundle.getInt(TrackingKey.PRIORITY));
                bundle2.putInt(TrackingKey.AD_COUNT, bundle.getInt(TrackingKey.AD_COUNT));
                bundle2.putInt(TrackingKey.IS_RETREATAD, bundle.getInt(TrackingKey.IS_RETREATAD));
                bundle2.putString(TrackingKey.REQUEST_ID, bundle.getString(TrackingKey.REQUEST_ID));
                RecordTestInfo.record("adTrackingFilling code_seat_id:" + bundle.getString(TrackingKey.CODE_SEAT_ID) + ",platform:" + bundle.getInt(TrackingKey.PLATFORM) + ",bidding_price:" + bundle.getDouble(TrackingKey.BIDDING_PRICE));
                bundle2.putInt(TrackingKey.REQUEST_NUM, bundle.getInt(TrackingKey.REQUEST_NUM));
                int i13 = 1;
                if (bundle.getInt(TrackingKey.AD_TRIGGER_STATUS) == 1) {
                    i13 = 3;
                } else if (cache.isOfflineAd()) {
                    i13 = 2;
                }
                bundle2.putInt(TrackingKey.FILLING_AD_TYPE, i13);
                bundle.putInt(TrackingKey.FILLING_AD_TYPE, i13);
                bundle2.putInt(TrackingKey.IS_PRELOAD, bundle.getInt(TrackingKey.IS_PRELOAD));
            }
            RecordTestInfo.record("adTrackingFilling");
            bundle2.putString(TrackingKey.CLD_APP_ID, this.f17137z.getString("app_id"));
            CloudControlConfig.CodeSeat codeSeat = this.f17118g;
            String experimentGroupId = "";
            bundle2.putString(TrackingKey.CLD_CODE_SEAT_ID, codeSeat == null ? "" : codeSeat.getCodeSeatId());
            int iM = 0;
            bundle2.putInt(TrackingKey.IS_TIMEOUT, 0);
            bundle2.putInt("error_code", i11);
            bundle2.putString(TrackingKey.ERROR_MESSAGE, TAdErrorCode.simpleErrorMessage(str));
            bundle2.putInt(TrackingKey.FILLING_SOURCE, i12);
            bundle2.putLong(TrackingKey.FILLING_TS, System.currentTimeMillis());
            bundle2.putInt(TrackingKey.INSTALL_FACEBOOK, ComConstants.isFbAppExist ? 1 : 0);
            be.c cVar2 = this.f17115d;
            if (cVar2 != null) {
                iM = cVar2.M();
            }
            bundle2.putInt(TrackingKey.FILTER_COUNT, iM);
            bundle2.putInt(TrackingKey.OPTIMIZE_STATUS, this.f17137z.getInt(TrackingKey.OPTIMIZE_STATUS));
            bundle2.putInt(TrackingKey.PRIORITY_CODE, this.f17137z.getInt(TrackingKey.PRIORITY_CODE));
            be.c cVar3 = this.f17115d;
            if (cVar3 != null) {
                bundle2.putDouble(TrackingKey.MAX_PRICE, cVar3.S());
            }
            if (LogSwitch.isDebug) {
                RecordTestInfo.LogMsg("fill result code : " + i11, RecordTestInfo.LOG_CODE7);
            }
            bundle2.putInt(TrackingKey.IS_CONTAIN_VULGAR, this.f17128q ? 1 : 0);
            if (network != null) {
                bundle2.putDouble(TrackingKey.PRICE_COEFFICIENT, network.getShowPriceCoefficient().doubleValue());
                bundle2.putInt(TrackingKey.PLATFORM, network.getSource().intValue());
            }
            CloudControlConfig.CodeSeat codeSeat2 = this.f17118g;
            bundle2.putString(TrackingKey.TRAFFIC_GROUP_ID, codeSeat2 == null ? "" : codeSeat2.getTrafficGroupId());
            CloudControlConfig.CodeSeat codeSeat3 = this.f17118g;
            if (codeSeat3 != null) {
                experimentGroupId = codeSeat3.getExperimentGroupId();
            }
            bundle2.putString(TrackingKey.EXPERIMENT_GROUP_ID, experimentGroupId);
            TrackingManager.trackingAdLoaded(bundle2);
        } catch (Exception e11) {
            AdLogUtil.Log().e(Log.getStackTraceString(e11));
        }
    }

    public void trackingTriggerShowError(TAdErrorCode tAdErrorCode) {
        Bundle bundle = new Bundle();
        try {
            Bundle bundle2 = this.f17137z;
            if (bundle2 != null) {
                bundle.putString(TrackingKey.TRIGGER_ID, bundle2.getString(TrackingKey.TRIGGER_ID));
                bundle.putLong(TrackingKey.TRIGGER_TS, this.f17137z.getLong(TrackingKey.TRIGGER_TS));
                bundle.putDouble(TrackingKey.BIDDING_PRICE, this.f17137z.getDouble(TrackingKey.BIDDING_PRICE));
                bundle.putInt(TrackingKey.PLATFORM, this.f17137z.getInt(TrackingKey.PLATFORM));
            } else {
                bundle.putString(TrackingKey.TRIGGER_ID, TrackingUtil.getTriggerId());
                bundle.putLong(TrackingKey.TRIGGER_TS, System.currentTimeMillis());
            }
            if (this.f17118g == null) {
                this.f17118g = h.a(this.f17112a);
            }
            bundle.putString(TrackingKey.CLD_APP_ID, TAdManager.getAppId());
            bundle.putString("app_id", TAdManager.getAppId());
            bundle.putString(TrackingKey.CODE_SEAT_ID, this.f17112a);
            bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, this.f17112a);
            bundle.putInt("ad_type", e());
            CloudControlConfig.CodeSeat codeSeat = this.f17118g;
            if (codeSeat != null) {
                bundle.putString(TrackingKey.TRAFFIC_GROUP_ID, codeSeat.getTrafficGroupId());
                bundle.putString(TrackingKey.EXPERIMENT_GROUP_ID, this.f17118g.getExperimentGroupId());
            }
            if (tAdErrorCode != null) {
                bundle.putString("error_code", String.valueOf(tAdErrorCode.getErrorCode()));
                bundle.putString(TrackingKey.ERROR_MESSAGE, TAdErrorCode.simpleErrorMessage(tAdErrorCode.getErrorMessage()));
            }
            bundle.putInt(TrackingKey.IS_OFFLINE, !NetStateManager.checkNetworkState(false) ? 1 : 0);
            ICacheAd iCacheAdI = i();
            if (iCacheAdI != null) {
                bundle.putString(TrackingKey.MEDIATOR_SOURCE, iCacheAdI.getMediatorSourceName());
                bundle.putString(TrackingKey.MEDIATOR_CODE_SEAT_ID, iCacheAdI.getMediatorSourceUnitId());
            }
            TrackingManager.trackingTriggerShow(bundle);
        } catch (Exception e11) {
            AdLogUtil.Log().e(ComConstants.AD_FLOW, Log.getStackTraceString(e11));
        }
    }
}
