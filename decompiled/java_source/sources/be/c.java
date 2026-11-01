package be;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.hisavana.common.base.BaseAd;
import com.hisavana.common.base.LogSwitch;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.bean.TInnerAdRequestBody;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.interfacz.Iad;
import com.hisavana.common.interfacz.QueryPriceListener;
import com.hisavana.common.interfacz.WrapTAdAllianceListener;
import com.hisavana.common.mock.RecordTestInfo;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.tracking.TrackingManager;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.AdUtil;
import com.hisavana.common.utils.MediaLogUtil;
import com.hisavana.common.utils.RunTimer;
import com.hisavana.mediation.R$string;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.hisavana.mediation.handler.DispatcherHandler;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public abstract class c {
    public Bundle A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public double f16353a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public t f16354b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public RunTimer f16355c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final q f16357e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f16358f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f16359g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Handler f16360h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Object f16361i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f16362j;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f16366n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final CloudControlConfig.CodeSeat f16367o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f16369q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f16371s;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final DispatcherHandler f16374v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final i f16375w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public p f16376x;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public CopyOnWriteArrayList f16356d = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f16363k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AtomicInteger f16364l = new AtomicInteger();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f16365m = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f16368p = 1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f16370r = 1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f16372t = 1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f16373u = 1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f16377y = 1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public AdCache.AdCacheExpiredWatcher f16378z = new a();

    public class a implements AdCache.AdCacheExpiredWatcher {
        public a() {
        }

        @Override // com.hisavana.common.bean.AdCache.AdCacheExpiredWatcher
        public void onExpired(ICacheAd iCacheAd) {
            AdLogUtil.Log().d("CacheHandler", "ad expired");
        }
    }

    public class b extends Handler {
        public b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i11 = message.what;
            if (i11 == 1001) {
                AdLogUtil.Log().w("CacheHandler", "receive MSG_REQUEST_NEXT_GROUP_WAITING...");
                c.this.g0();
            } else if (i11 == 1002) {
                AdLogUtil.Log().w("CacheHandler", "receive MSG_BIDDING_WAITING...");
                c.this.U(1);
            } else {
                Object obj = message.obj;
                if (obj instanceof Iad) {
                    ((Iad) obj).loadAd();
                }
            }
        }
    }

    /* JADX INFO: renamed from: be.c$c, reason: collision with other inner class name */
    public class C0147c implements QueryPriceListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f16381a;

        public C0147c(Context context) {
            this.f16381a = context;
        }

        public final void a(List list) {
            double ecpmPrice;
            if (list == null || list.isEmpty() || c.this.f0()) {
                return;
            }
            AdLogUtil.Log().d("CacheHandler", "--- load ad mode --- ");
            Iterator it = c.this.f16356d.iterator();
            while (true) {
                if (!it.hasNext()) {
                    ecpmPrice = 0.0d;
                    break;
                }
                Iad iad = (Iad) it.next();
                if (iad != null && iad.getLoadStatus() == 0) {
                    ecpmPrice = iad.getEcpmPrice();
                    break;
                }
            }
            AdLogUtil.Log().d("CacheHandler", "checkToLoadWaterfallAd priceThreshold --- ," + ecpmPrice);
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                Network network = (Network) it2.next();
                Iad iadD = c.this.f16374v.d(this.f16381a, c.this.f16367o, network);
                if (iadD != null) {
                    c.this.f16356d.add(iadD);
                    if (network.getPrice().doubleValue() >= ecpmPrice) {
                        c.this.B(iadD, 1);
                    }
                }
            }
            c.this.f16374v.g(c.this.f16356d);
        }

        @Override // com.hisavana.common.interfacz.QueryPriceListener
        public void onQueryPriceFailed() {
            AdLogUtil.Log().d("CacheHandler", "receive query price failed");
            a(null);
        }

        @Override // com.hisavana.common.interfacz.QueryPriceListener
        public void onQueryPriceSuccess(List list) {
            AdLogUtil.Log().d("CacheHandler", "CacheHandler --> queryPrice --> receive query price success");
            a(list);
        }
    }

    public class d extends WrapTAdAllianceListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Iad f16383a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f16384b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f16385c;

        public d(Iad iad, int i11) {
            this.f16383a = iad;
            this.f16385c = i11;
        }

        public final String a() {
            int i11 = c.this.f16366n;
            if (i11 == 0) {
                return null;
            }
            if (i11 == 1) {
                return "PROGRESS_REQUEST";
            }
            return i11 == 2 ? "PROGRESS_BIDDING" : "PROGRESS_DISPATCHED";
        }

        public final void b(boolean z10) {
            Iad iad = this.f16383a;
            if (iad == null) {
                AdLogUtil.Log().d("CacheHandler", "mExecutor is null");
                return;
            }
            int iA = 1;
            if (z10 && iad.getNetwork() != null && this.f16383a.getNetwork().getBiddingType().intValue() == 1 && this.f16383a.getNetwork().getPrice().doubleValue() < this.f16383a.getNetwork().getMinPrice().intValue()) {
                c.this.f16356d.remove(this.f16383a);
            }
            boolean zE0 = c.this.e0();
            if (!zE0) {
                c cVar = c.this;
                if (cVar.f16366n == 2) {
                    iA = cVar.a(2, true);
                } else {
                    boolean zC0 = cVar.c0();
                    AdLogUtil.Log().d("CacheHandler", "mProgress " + c.this.f16366n + " reachTopPrice " + zC0);
                    c cVar2 = c.this;
                    if (cVar2.f16366n < 2 && zC0) {
                        iA = cVar2.a(2, true);
                    }
                }
            } else if (z10) {
                iA = c.this.J();
                c.this.f();
                if (iA == 0) {
                    c.this.K(5);
                }
            }
            boolean Z = c.this.Z();
            boolean zG0 = (c.this.f16373u == 2 || !Z) ? c.this.g0() : false;
            if (Z || zG0) {
                return;
            }
            if (zE0 || c.this.f16366n == 2) {
                c.this.l(c.v(iA));
            }
        }

        public final void c() {
            c.this.f16364l.decrementAndGet();
            Iad iad = this.f16383a;
            if (iad == null) {
                AdLogUtil.Log().d("CacheHandler", "mExecuter is null");
                return;
            }
            iad.setLoadStatus(2);
            c cVar = c.this;
            cVar.f16365m = cVar.f16366n == 1;
            c.this.n(this.f16383a);
            AdLogUtil.Log().d("CacheHandler", "*----> onLoaded(),mProgress = " + a() + ",mFlightingAdCount.get() = " + c.this.f16364l.get() + ",ad fill adSource:" + this.f16383a.getAdSource() + ", ad placementId: " + this.f16383a.getPlacementId());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("ad onAdLoaded,adSource ");
            sb2.append(this.f16383a.getAdSource());
            sb2.append(",id ");
            sb2.append(this.f16383a.getPlacementId());
            MediaLogUtil.d("CacheHandler", sb2.toString());
            c.this.j0();
            AdLogUtil.Log().d("CacheHandler", "onAdLoaded requestCategory " + this.f16385c);
            int i11 = this.f16385c;
            if (i11 == 1) {
                b(true);
            } else {
                if (i11 != 5) {
                    return;
                }
                d();
            }
        }

        public final void d() {
            t tVar = c.this.f16354b;
            if (tVar != null) {
                if (tVar.k() == null && c.this.f16354b.a() == null) {
                    return;
                }
                int iJ = c.this.J();
                c.this.f();
                if (iJ == 0) {
                    c.this.K(3);
                } else {
                    c.this.l(c.v(iJ));
                }
            }
        }

        @Override // com.hisavana.common.interfacz.WrapTAdAllianceListener, com.hisavana.common.interfacz.TInnerAdListener
        public void onError(TAdErrorCode tAdErrorCode) {
            c.this.f16364l.decrementAndGet();
            Iad iad = this.f16383a;
            if (iad == null) {
                AdLogUtil.Log().d("CacheHandler", "mExecuter is null");
                return;
            }
            iad.setLoadStatus(3);
            AdLogUtil adLogUtilLog = AdLogUtil.Log();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("*----> request ad fail,error code: ");
            sb2.append(tAdErrorCode != null ? Integer.valueOf(tAdErrorCode.getErrorCode()) : null);
            sb2.append(",adSource:");
            sb2.append(this.f16383a.getAdSource());
            sb2.append(", ad placementId: ");
            sb2.append(this.f16383a.getPlacementId());
            sb2.append(",mFlightingAdCount.get() = ");
            sb2.append(c.this.f16364l.get());
            sb2.append(" progress ");
            sb2.append(c.this.f16366n);
            adLogUtilLog.d("CacheHandler", sb2.toString());
            c.this.j0();
            MediaLogUtil.d("CacheHandler", "ad load Error,source " + this.f16383a.getAdSource() + ",id " + this.f16383a.getPlacementId());
            int i11 = this.f16385c;
            if (i11 == 1) {
                AdLogUtil.Log().d("CacheHandler", "onError current is load");
                b(false);
            } else {
                if (i11 != 5) {
                    return;
                }
                d();
            }
        }

        @Override // com.hisavana.common.interfacz.TInnerAdListener
        public void onLoad() {
            this.f16384b = this.f16383a;
            c();
        }

        @Override // com.hisavana.common.interfacz.WrapTAdAllianceListener
        public void onLoad(List list) {
            this.f16384b = list;
            c();
        }

        @Override // com.hisavana.common.interfacz.WrapTAdAllianceListener, com.hisavana.common.interfacz.TInnerAdListener
        public void onNativeFeedShow(int i11, TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
            super.onNativeFeedShow(i11, tAdNativeInfo, additionalInfo);
            AdLogUtil.Log().d("CacheHandler", "*----> ad onshow() " + c.this.f16362j);
            if (c.this.Z()) {
                AdLogUtil.Log().d("CacheHandler", "currently have requesting ad,terminate preload flow.");
                return;
            }
            if (!NetStateManager.checkNetworkState(false)) {
                AdLogUtil.Log().d("CacheHandler", "network is disconnect");
                return;
            }
            if (c.this.f16376x == null) {
                c cVar = c.this;
                cVar.f16376x = new p(cVar.f16367o, cVar.f16375w);
            }
            c.this.f16376x.d(com.cloud.sdk.commonutil.util.e.a());
        }

        @Override // com.hisavana.common.interfacz.TInnerAdListener
        public void onSkipClick() {
            t tVar = c.this.f16354b;
            if (tVar != null) {
                tVar.onSkipClick();
            }
        }

        @Override // com.hisavana.common.interfacz.TInnerAdListener
        public void onTimeReach() {
            t tVar = c.this.f16354b;
            if (tVar != null) {
                tVar.onTimeReach();
            }
        }
    }

    public c(CloudControlConfig.CodeSeat codeSeat, i iVar, t tVar) {
        this.f16369q = -1;
        this.f16371s = 0;
        this.f16367o = codeSeat;
        this.f16375w = iVar;
        iVar.y(0);
        this.f16357e = new q(iVar, codeSeat, false);
        this.f16374v = new DispatcherHandler(codeSeat, iVar);
        this.f16360h = new b(Looper.getMainLooper());
        this.f16369q = codeSeat.getCodeSeatType().intValue();
        this.f16354b = tVar;
        this.f16362j = codeSeat.getCodeSeatId();
        G().registerWatcher(this.f16378z);
        this.f16371s = iVar.D();
    }

    public static TAdErrorCode v(int i11) {
        if (i11 == 2) {
            return TAdErrorCode.ERROR_FILL_FAILED_WiTH_EXPIRED;
        }
        if (i11 != 3) {
            return i11 != 4 ? TAdErrorCode.ERROR_FILL_FAILED_WITH_NO_AD : TAdErrorCode.ERROR_FILL_FAILED_LOW_PRICE;
        }
        return TAdErrorCode.ERROR_FILL_FAILED_SENSITIVE;
    }

    public final boolean B(Iad iad, int i11) {
        boolean zK;
        if (iad == null) {
            return false;
        }
        TInnerAdRequestBody tInnerAdRequestBodyD = d(iad, i11);
        if (AdUtil.requestStatusOff()) {
            this.f16364l.addAndGet(1);
            zK = this.f16374v.l(iad, i11, this.f16370r, tInnerAdRequestBodyD, true);
            if (zK) {
                this.f16357e.h(iad.getNetwork(), true);
            } else {
                this.f16364l.decrementAndGet();
            }
        } else {
            int loadStatus = iad.getLoadStatus();
            if (loadStatus == 1 || loadStatus == 3 || loadStatus == 2) {
                return false;
            }
            this.f16364l.addAndGet(1);
            zK = this.f16374v.k(iad, i11, this.f16370r, tInnerAdRequestBodyD);
            if (loadStatus == 0 && zK) {
                this.f16357e.h(iad.getNetwork(), true);
            } else if (!zK) {
                this.f16364l.decrementAndGet();
            }
        }
        return zK;
    }

    public final String D(int i11) {
        if (i11 == 0) {
            return "NONE";
        }
        if (i11 == 1) {
            return "LOADING";
        }
        if (i11 != 2) {
            return i11 != 3 ? "" : "FAILED";
        }
        return "SUCCESS";
    }

    public final void E() {
        CopyOnWriteArrayList<Iad> copyOnWriteArrayList = this.f16356d;
        if (copyOnWriteArrayList != null) {
            for (Iad iad : copyOnWriteArrayList) {
                if (iad != null) {
                    iad.stopLoader();
                }
            }
            this.f16356d.clear();
        }
        this.f16354b = null;
        this.f16375w.y(0);
        this.f16370r = 0;
        p0();
        this.f16357e.n();
        G().unRegisterWatcher();
        Handler handler = this.f16360h;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        this.f16366n = 3;
        AdLogUtil.Log().d("CacheHandler", "----------------->destroy,mUseCache:" + this.f16361i);
        p(this.f16361i);
        this.f16361i = null;
        p pVar = this.f16376x;
        if (pVar != null) {
            pVar.c();
        }
    }

    public void F(Object obj) {
    }

    public abstract AdCache G();

    public boolean I(int i11) {
        if (this.f16354b == null) {
            return false;
        }
        RecordTestInfo.record("load ad num: " + i11 + " with group");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("load next group,mReqCount ");
        sb2.append(i11);
        MediaLogUtil.d("CacheHandler", sb2.toString());
        int i12 = 0;
        boolean z10 = false;
        for (Iad iad : this.f16356d) {
            if (iad != null) {
                if (o.e(iad)) {
                    if (B(iad, 1)) {
                        i iVar = this.f16375w;
                        iVar.y(iVar.E() + 1);
                        z10 = true;
                    }
                } else if (i12 < i11 && B(iad, 1)) {
                    i iVar2 = this.f16375w;
                    iVar2.y(iVar2.E() + 1);
                    i12++;
                }
            }
        }
        return i12 > 0 || z10;
    }

    public int J() {
        return G().checkCacheStatus(this.f16362j, this.f16375w.J());
    }

    public final void K(int i11) {
        if (this.f16366n == 3) {
            return;
        }
        AdLogUtil.Log().w("CacheHandler", "notify load success");
        this.f16366n = 3;
        t tVar = this.f16354b;
        if (tVar != null) {
            tVar.l(i11);
            p0();
            this.f16354b.p();
        }
    }

    public int M() {
        return 0;
    }

    public void O(int i11) {
        if (i11 > 0) {
            this.f16368p = i11;
        }
    }

    public int P() {
        return 1;
    }

    public void R(int i11) {
        this.f16377y = i11;
    }

    public double S() {
        return this.f16353a;
    }

    public final void U(int i11) {
        a(i11, false);
    }

    public int V() {
        return this.f16371s;
    }

    public final void X(int i11) {
        for (Iad iad : this.f16356d) {
            if (iad != null) {
                iad.setTimeOut(true);
            }
        }
        Bundle bundle = new Bundle();
        bundle.putString(TrackingKey.TRIGGER_ID, this.A.getString(TrackingKey.TRIGGER_ID));
        bundle.putLong(TrackingKey.TRIGGER_TS, this.A.getLong(TrackingKey.TRIGGER_TS));
        bundle.putInt("ad_type", this.f16369q);
        bundle.putString(TrackingKey.CLD_APP_ID, a7.c.f365b);
        bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, this.A.getString(TrackingKey.CODE_SEAT_ID));
        bundle.putInt(TrackingKey.BID_START_TIME_TYPE, i11);
        bundle.putFloat(TrackingKey.BID_START_DURATION, this.f16359g);
        try {
            bundle.putFloat(TrackingKey.TRIGGER_TO_BID_DURATION, System.currentTimeMillis() - this.A.getLong(TrackingKey.TRIGGER_TS));
        } catch (Exception unused) {
        }
        bundle.putString(TrackingKey.CLD_CONFIGURE_ID, j7.a.e().j("cloudControlVersion"));
        bundle.putString(TrackingKey.TRAFFIC_GROUP_ID, this.A.getString(TrackingKey.TRAFFIC_GROUP_ID));
        bundle.putString(TrackingKey.EXPERIMENT_GROUP_ID, this.A.getString(TrackingKey.EXPERIMENT_GROUP_ID));
        TrackingManager.trackingStartBid(bundle);
    }

    public final boolean Z() {
        return this.f16364l.get() > 0;
    }

    public final int a(int i11, boolean z10) {
        if (!a0() || e0()) {
            return 1;
        }
        if (this.f16366n < 2) {
            AdLogUtil.Log().w("CacheHandler", "*----> start bidding...");
            RecordTestInfo.record("start bidding,bidStartTimeType:" + i11);
            MediaLogUtil.d("CacheHandler", "startBidding,bidStartTimeType " + i11 + " BIDDING_DURATION_REACHED:1,HIGH_PRICE_RETURN:2");
            X(i11);
            this.f16366n = 2;
            l0();
            k0();
        }
        int iJ = J();
        f();
        if (iJ == 0) {
            K(this.f16365m ? 1 : 2);
            AdLogUtil.Log().w("CacheHandler", "startBidding finish take bidding ad,and notifyLoadBest and unit id is " + this.f16362j);
            MediaLogUtil.d("CacheHandler", "bidding success,ad fill*****************");
        } else {
            if (z10 || Z()) {
                AdLogUtil.Log().d("CacheHandler", "startBidding,ad is null but still have ad requesting");
                return iJ;
            }
            AdLogUtil.Log().w("CacheHandler", "startBidding failed,no ad fill");
            l(v(iJ));
        }
        return iJ;
    }

    public final boolean a0() {
        t tVar;
        return (this.f16366n >= 3 || (tVar = this.f16354b) == null || (tVar.k() == null && this.f16354b.a() == null)) ? false : true;
    }

    public final boolean c0() {
        return this.f16374v.m(this.f16356d);
    }

    public TInnerAdRequestBody d(Iad iad, int i11) {
        return new TInnerAdRequestBody.Builder().setAdListener(new d(iad, i11)).build();
    }

    public abstract boolean d0();

    public Object e(boolean z10) {
        return this.f16361i;
    }

    public boolean e0() {
        return this.f16372t == 2;
    }

    public final void f() {
        this.f16353a = G().getMaxPrice(this.f16362j, this.f16375w.J());
    }

    public final boolean f0() {
        return this.f16366n >= 2;
    }

    public void g(Bundle bundle) {
        this.A = bundle;
    }

    public final boolean g0() {
        if (c0()) {
            return false;
        }
        this.f16370r++;
        boolean zI = I(this.f16373u == 1 ? this.f16363k : 1);
        if (zI) {
            o0();
        }
        return zI;
    }

    public final void h0() {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f16356d;
        if (copyOnWriteArrayList != null && (!copyOnWriteArrayList.isEmpty() || !this.f16357e.q().isEmpty())) {
            I(this.f16363k);
            AdLogUtil.Log().d("CacheHandler", "start WaitForBidding & startWaitForNextGroupRequest");
            n0();
            o0();
            return;
        }
        AdLogUtil.Log().d("CacheHandler", "*----> no ad source can be load.");
        if (!G().hasAds(this.f16362j, this.f16375w.J()) || e0()) {
            l(TAdErrorCode.ERROR_FILL_FAILED_WiTH_EXPIRED);
        } else {
            U(2);
        }
    }

    public void i0() {
        z(this.f16361i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void j0() {
        if (LogSwitch.isDebug) {
            StringBuilder sb2 = new StringBuilder();
            int i11 = 0;
            for (Iad iad : this.f16356d) {
                if (iad != 0) {
                    if (iad instanceof BaseAd) {
                        i11 = ((BaseAd) iad).mBundle.getInt(TrackingKey.RETURN_TIME);
                    } else if (iad instanceof AdNativeInfo) {
                        i11 = ((AdNativeInfo) iad).getNativeAdWrapper().getAdImpl().mBundle.getInt(TrackingKey.RETURN_TIME);
                    }
                    boolean z10 = iad.getAdSource() == 1;
                    sb2.append(ComConstants.transferSourceToStr(iad.getAdSource()));
                    if (z10 && iad.getNetwork() != null) {
                        sb2.append("-");
                        sb2.append(iad.getMediatorSourceName());
                    }
                    sb2.append("，");
                    sb2.append(D(iad.getLoadStatus()));
                    sb2.append("，returnTime：");
                    sb2.append(i11);
                    sb2.append("\n");
                }
            }
            AdLogUtil.Log().d("CacheHandler", "--- executer list load status--- : " + sb2.toString());
            if (LogSwitch.isDebug) {
                RecordTestInfo.LogMsg(sb2.toString(), RecordTestInfo.LOG_CODE6);
            }
        }
    }

    public final void k(t tVar) {
        this.f16354b = tVar;
    }

    public final void k0() {
        Handler handler = this.f16360h;
        if (handler != null) {
            handler.removeMessages(1002);
        }
    }

    public final void l(TAdErrorCode tAdErrorCode) {
        if (this.f16366n == 3) {
            return;
        }
        AdLogUtil.Log().w("CacheHandler", "notify load failed");
        p0();
        this.f16366n = 3;
        y(tAdErrorCode);
    }

    public final void l0() {
        AdLogUtil.Log().w("CacheHandler", "removeWaitForNextGroupRequest...");
        Handler handler = this.f16360h;
        if (handler != null) {
            handler.removeMessages(1001);
        }
    }

    public void m(TInnerAdRequestBody tInnerAdRequestBody, t tVar) {
        WrapTAdAllianceListener adListener;
        if (tInnerAdRequestBody == null || (adListener = tInnerAdRequestBody.getAdListener()) == null) {
            return;
        }
        adListener.setAdListener(tVar);
    }

    public void m0() {
        F(this.f16361i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void n(Iad iad) {
        int i11;
        if (iad == 0 || !AdUtil.isBiddingNetwork(iad.getNetwork())) {
            return;
        }
        AdLogUtil.Log().d("CacheHandler", "replace cloud price use first price，firstprice：" + iad.getEcpmPrice() + "，cloud price：" + iad.getNetwork().getPrice());
        iad.getNetwork().setPrice(Double.valueOf(iad.getEcpmPrice()));
        if (iad instanceof BaseAd) {
            ((BaseAd) iad).mBundle.putDouble(TrackingKey.BIDDING_PRICE, iad.getEcpmPrice());
        } else if (iad instanceof AdNativeInfo) {
            ((AdNativeInfo) iad).getNativeAdWrapper().getAdImpl().mBundle.putDouble(TrackingKey.BIDDING_PRICE, iad.getEcpmPrice());
        }
        this.f16374v.g(this.f16356d);
        if (iad.isAdxAd() && ((i11 = this.f16371s) == 1 || i11 == 3)) {
            U(2);
            return;
        }
        if (iad.isEwAd()) {
            int i12 = this.f16371s;
            if (i12 == 2 || i12 == 3) {
                U(2);
            }
        }
    }

    public final void n0() {
        if (e0() || this.f16360h == null) {
            return;
        }
        AdLogUtil.Log().d("CacheHandler", "startWaitForBidding...");
        this.f16360h.removeMessages(1002);
        this.f16360h.sendEmptyMessageDelayed(1002, this.f16359g);
    }

    public final void o(RunTimer runTimer) {
        this.f16355c = runTimer;
    }

    public final void o0() {
        Handler handler;
        if (this.f16373u != 1 || (handler = this.f16360h) == null) {
            return;
        }
        handler.removeMessages(1001);
        this.f16360h.sendEmptyMessageDelayed(1001, this.f16358f);
    }

    public abstract void p(Object obj);

    public void p0() {
        if (this.f16355c != null) {
            AdLogUtil.Log().w("LoadHandler", "stop timer");
            this.f16355c.cancelTimeTask();
            this.f16355c = null;
        }
    }

    public boolean q(Context context) {
        this.f16356d.clear();
        this.f16365m = false;
        this.f16364l.set(0);
        boolean z10 = this.f16377y == 2;
        this.f16359g = Math.max((z10 ? this.f16367o.getRealtimeBiddingWaitTime() : this.f16367o.getBiddingWaitTime()).intValue(), 500);
        this.f16358f = Math.max(this.f16367o.getAdRequestTimeInterval().intValue(), 500);
        this.f16363k = this.f16367o.getAdRequestConcurrentCount().intValue() <= 0 ? 1 : this.f16367o.getAdRequestConcurrentCount().intValue();
        this.f16368p = Math.max(1, Math.min(P(), this.f16367o.getAdRequestCount().intValue()));
        this.f16366n = 1;
        this.f16372t = (z10 ? this.f16367o.getRealtimeFillCallbackMode() : this.f16367o.getFillCallbackMode()).intValue();
        this.f16373u = this.f16367o.getRequestIntervalMode().intValue();
        if (LogSwitch.isDebug) {
            String str = String.format(com.cloud.sdk.commonutil.util.e.a().getString(R$string.hisavana_log_msg1), Integer.valueOf(this.f16359g), Integer.valueOf(this.f16358f), Integer.valueOf(this.f16363k), this.f16367o.getAdRequestCount(), this.f16367o.getPreload(), this.f16367o.getAdShowCountLimitDay(), this.f16367o.getAdShowCountLimitHour(), this.f16367o.getAdShowTimeInterval());
            RecordTestInfo.LogMsg(str, RecordTestInfo.LOG_CODE1);
            MediaLogUtil.d("CacheHandler", "prepareForRequest,config " + str);
            AdLogUtil.Log().i("CacheHandler", "*----> WaitBiddingTime:" + this.f16359g + ",WaitNextGroupRequestTime:" + this.f16358f + ",ConcurrentReqCount:" + this.f16363k + ",PoolAppendStrategy:" + this.f16367o.getPreloadLogic() + ",adRequestCount:" + this.f16367o.getAdRequestCount() + " ----- codeSeatId = " + this.f16367o.getCodeSeatId());
        }
        if (this.f16367o.getNetworks() == null || this.f16367o.getNetworks().size() == 0) {
            AdLogUtil.Log().w("CacheHandler", "adUnit:" + this.f16362j + " no networks , load/preload/trigger_preload request end");
            MediaLogUtil.e("CacheHandler", "prepareForRequest,networks is empty");
            return false;
        }
        if (e0() && J() == 0) {
            f();
            AdLogUtil.Log().d("CacheHandler", "-------->quick fill success ");
            K(5);
        }
        this.f16357e.l();
        this.f16356d = this.f16374v.f(context, this.f16357e.p(), this.f16357e.o(), this.f16357e.r(), false);
        x(context);
        h0();
        return true;
    }

    public boolean u(CloudControlConfig.CodeSeat codeSeat, Network network) {
        if (network == null || TextUtils.isEmpty(network.getCodeSeatId())) {
            return false;
        }
        return B(this.f16374v.d(com.cloud.sdk.commonutil.util.e.a(), codeSeat, network), 5);
    }

    public void w() {
        E();
    }

    public final void x(Context context) {
        RecordTestInfo.record("fanbidding queryPrice,codeSeatId:" + this.f16362j);
        this.f16357e.d(new C0147c(context));
    }

    public void y(TAdErrorCode tAdErrorCode) {
        t tVar = this.f16354b;
        if (tVar != null) {
            tVar.onError(tAdErrorCode);
        }
    }

    public void z(Object obj) {
    }
}
