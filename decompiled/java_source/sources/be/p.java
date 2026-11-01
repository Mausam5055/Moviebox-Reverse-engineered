package be;

import android.content.Context;
import com.hisavana.common.base.BaseAd;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TInnerAdRequestBody;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.interfacz.Iad;
import com.hisavana.common.interfacz.QueryPriceListener;
import com.hisavana.common.interfacz.WrapTAdAllianceListener;
import com.hisavana.common.mock.RecordTestInfo;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.AdUtil;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.hisavana.mediation.handler.DispatcherHandler;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public class p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CloudControlConfig.CodeSeat f16419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final i f16420c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f16421d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f16422e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final q f16423f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final DispatcherHandler f16426i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f16418a = "PreloadHandler";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public CopyOnWriteArrayList f16424g = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AtomicInteger f16425h = new AtomicInteger();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f16427j = 1;

    public class a implements QueryPriceListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f16428a;

        public a(Context context) {
            this.f16428a = context;
        }

        @Override // com.hisavana.common.interfacz.QueryPriceListener
        public void onQueryPriceFailed() {
            AdLogUtil.Log().d("PreloadHandler", "receive query price failed");
            p.this.e(this.f16428a, null);
        }

        @Override // com.hisavana.common.interfacz.QueryPriceListener
        public void onQueryPriceSuccess(List list) {
            AdLogUtil.Log().d("PreloadHandler", "CacheHandler --> queryPrice --> receive query price success");
            p.this.e(this.f16428a, list);
        }
    }

    public class b extends WrapTAdAllianceListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Iad f16430a;

        public b(Iad iad) {
            this.f16430a = iad;
        }

        public final void a() {
            p.this.f16425h.decrementAndGet();
            if (this.f16430a == null) {
                AdLogUtil.Log().d("PreloadHandler", "mExecuter is null");
                return;
            }
            AdLogUtil.Log().d("PreloadHandler", "*----> request ad success, adSource:" + this.f16430a.getAdSource() + ", ad placementId: " + this.f16430a.getPlacementId() + ",mFlightingAdCount.get() = " + p.this.f16425h.get());
            this.f16430a.setLoadStatus(2);
            if (o.e(this.f16430a)) {
                if (this.f16430a.getNetwork() != null) {
                    this.f16430a.getNetwork().setPrice(Double.valueOf(this.f16430a.getEcpmPrice()));
                }
                ICacheAd iCacheAd = this.f16430a;
                if (iCacheAd instanceof BaseAd) {
                    ((BaseAd) iCacheAd).mBundle.putDouble(TrackingKey.BIDDING_PRICE, iCacheAd.getEcpmPrice());
                } else if (iCacheAd instanceof AdNativeInfo) {
                    ((AdNativeInfo) iCacheAd).getNativeAdWrapper().getAdImpl().mBundle.putDouble(TrackingKey.BIDDING_PRICE, this.f16430a.getEcpmPrice());
                }
                p.this.f16426i.g(p.this.f16424g);
            }
            if (p.this.j() || p.this.f16426i.m(p.this.f16424g)) {
                return;
            }
            p.this.m();
        }

        @Override // com.hisavana.common.interfacz.WrapTAdAllianceListener, com.hisavana.common.interfacz.TInnerAdListener
        public void onError(TAdErrorCode tAdErrorCode) {
            p.this.f16425h.decrementAndGet();
            Iad iad = this.f16430a;
            if (iad == null) {
                AdLogUtil.Log().d("PreloadHandler", "mExecuter is null");
                return;
            }
            iad.setLoadStatus(3);
            AdLogUtil adLogUtilLog = AdLogUtil.Log();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("*----> request ad fail,error code: ");
            sb2.append(tAdErrorCode != null ? Integer.valueOf(tAdErrorCode.getErrorCode()) : null);
            sb2.append(",adSource:");
            sb2.append(this.f16430a.getAdSource());
            sb2.append(", ad placementId: ");
            sb2.append(this.f16430a.getPlacementId());
            sb2.append(",mFlightingAdCount.get() = ");
            sb2.append(p.this.f16425h.get());
            adLogUtilLog.d("PreloadHandler", sb2.toString());
            if (p.this.j() || p.this.f16426i.m(p.this.f16424g)) {
                return;
            }
            p.this.m();
        }

        @Override // com.hisavana.common.interfacz.TInnerAdListener
        public void onLoad() {
            a();
        }

        @Override // com.hisavana.common.interfacz.WrapTAdAllianceListener
        public void onLoad(List list) {
            a();
        }
    }

    public p(CloudControlConfig.CodeSeat codeSeat, i iVar) {
        this.f16419b = codeSeat;
        this.f16420c = iVar;
        this.f16421d = codeSeat == null ? "" : codeSeat.getCodeSeatId();
        this.f16422e = codeSeat == null ? -1 : codeSeat.getCodeSeatType().intValue();
        this.f16423f = new q(iVar, codeSeat, true);
        this.f16426i = new DispatcherHandler(codeSeat, iVar);
    }

    public TInnerAdRequestBody a(Iad iad) {
        return new TInnerAdRequestBody.Builder().setAdListener(new b(iad)).build();
    }

    public void c() {
        CopyOnWriteArrayList<Iad> copyOnWriteArrayList = this.f16424g;
        if (copyOnWriteArrayList != null) {
            for (Iad iad : copyOnWriteArrayList) {
                if (iad != null) {
                    iad.stopLoader();
                }
            }
            this.f16424g.clear();
        }
        q qVar = this.f16423f;
        if (qVar != null) {
            qVar.n();
        }
    }

    public void d(Context context) {
        if (g(this.f16419b)) {
            this.f16425h.set(0);
            this.f16424g.clear();
            this.f16423f.l();
            i(context);
        }
    }

    public final void e(Context context, List list) {
        CopyOnWriteArrayList copyOnWriteArrayListF = this.f16426i.f(context, list, this.f16423f.o(), this.f16423f.r(), true);
        this.f16424g = copyOnWriteArrayListF;
        if (copyOnWriteArrayListF == null || copyOnWriteArrayListF.isEmpty()) {
            AdLogUtil.Log().d("PreloadHandler", "*----> no ad source can be preload.");
        } else {
            m();
        }
    }

    public final boolean g(CloudControlConfig.CodeSeat codeSeat) {
        int iIntValue = codeSeat.getPreload().booleanValue() ? codeSeat.getPreloadLogic().intValue() : -1;
        if (iIntValue == -1) {
            AdLogUtil.Log().w("PreloadHandler", "current code seat id is " + this.f16421d + "preload is close...");
            return false;
        }
        AdCache adCacheB = this.f16426i.b();
        if (iIntValue != 1 || adCacheB == null || !adCacheB.hasAds(codeSeat.getCodeSeatId(), this.f16420c.J())) {
            return true;
        }
        AdLogUtil.Log().w("PreloadHandler", "autoAppend & INSUFFICIENT_APPEND,but adunit:" + this.f16421d + " has cached ad, load/preload/trigger_preload request end");
        return false;
    }

    public final void i(Context context) {
        RecordTestInfo.record("fanbidding queryPrice,codeSeatId:" + this.f16421d);
        this.f16423f.d(new a(context));
    }

    public final boolean j() {
        return this.f16425h.get() > 0;
    }

    public final boolean k(Iad iad) {
        boolean zK = false;
        if (iad == null) {
            return false;
        }
        TInnerAdRequestBody tInnerAdRequestBodyA = a(iad);
        if (AdUtil.requestStatusOff()) {
            this.f16425h.addAndGet(1);
            zK = this.f16426i.l(iad, 2, this.f16427j, tInnerAdRequestBodyA, true);
            if (zK) {
                this.f16423f.h(iad.getNetwork(), true);
            }
        } else {
            int loadStatus = iad.getLoadStatus();
            AdLogUtil.Log().d("PreloadHandler", "codeSeatId is" + this.f16421d + ":ad source is " + iad.getAdSource() + ", load status is " + loadStatus);
            if (loadStatus != 1 && loadStatus != 3 && loadStatus != 2) {
                this.f16425h.addAndGet(1);
                zK = this.f16426i.k(iad, 2, this.f16427j, tInnerAdRequestBodyA);
                if (loadStatus == 0 && zK) {
                    this.f16423f.h(iad.getNetwork(), true);
                } else if (!zK) {
                    this.f16425h.decrementAndGet();
                }
            }
        }
        return zK;
    }

    public final void m() {
        RecordTestInfo.record("load ad num: 1 with group");
        int i11 = 0;
        for (Iad iad : this.f16424g) {
            if (iad != null) {
                if (o.e(iad)) {
                    if (k(iad)) {
                        i iVar = this.f16420c;
                        iVar.y(iVar.E() + 1);
                    }
                } else if (i11 == 0 && k(iad)) {
                    i iVar2 = this.f16420c;
                    iVar2.y(iVar2.E() + 1);
                    i11++;
                }
            }
        }
    }
}
