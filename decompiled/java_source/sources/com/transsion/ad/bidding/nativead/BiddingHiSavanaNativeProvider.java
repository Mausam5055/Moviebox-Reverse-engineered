package com.transsion.ad.bidding.nativead;

import com.blankj.utilcode.util.Utils;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.bean.TAdRequestBody;
import com.hisavana.mediation.ad.TNativeAd;
import com.transsion.ad.bidding.base.x;
import com.transsion.ad.hi.HiSavanaAdManager;
import com.transsion.ad.scene.SceneInterceptManager;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedDeque;
import java.util.concurrent.ConcurrentSkipListSet;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class BiddingHiSavanaNativeProvider extends x {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final a f41983j = new a(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Lazy f41984k = LazyKt.b(new Function0() { // from class: com.transsion.ad.bidding.nativead.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return BiddingHiSavanaNativeProvider.s();
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f41987f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f41988g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private TNativeAd f41989h;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ConcurrentLinkedDeque f41985d = new ConcurrentLinkedDeque();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ConcurrentSkipListSet f41986e = new ConcurrentSkipListSet(new Comparator() { // from class: com.transsion.ad.bidding.nativead.a
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return BiddingHiSavanaNativeProvider.t((TAdNativeInfo) obj, (TAdNativeInfo) obj2);
        }
    });

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private AtomicBoolean f41990i = new AtomicBoolean(false);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final Map a() {
            return (Map) BiddingHiSavanaNativeProvider.f41984k.getValue();
        }

        public final BiddingHiSavanaNativeProvider b(String str) {
            String strH = com.transsion.ad.scene.a.f42201a.h(str);
            if (strH == null || strH.length() == 0) {
                return null;
            }
            BiddingHiSavanaNativeProvider biddingHiSavanaNativeProvider = (BiddingHiSavanaNativeProvider) a().get(strH);
            if (biddingHiSavanaNativeProvider != null) {
                return biddingHiSavanaNativeProvider;
            }
            BiddingHiSavanaNativeProvider biddingHiSavanaNativeProvider2 = new BiddingHiSavanaNativeProvider();
            biddingHiSavanaNativeProvider2.y(strH);
            biddingHiSavanaNativeProvider2.z(str);
            a().put(strH, biddingHiSavanaNativeProvider2);
            return biddingHiSavanaNativeProvider2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getClassTag() {
        String simpleName = BiddingHiSavanaNativeProvider.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final void h() {
        if (this.f41989h == null) {
            TNativeAd tNativeAd = new TNativeAd(Utils.a(), n());
            this.f41989h = tNativeAd;
            tNativeAd.setRequestBody(new TAdRequestBody.AdRequestBodyBuild().setAdditionalListener(this).build());
            oi.a.f71022a.n("ad_n", "============= " + getClassTag() + " --> loadAd() --> mPlacementId = " + n() + " --> create TNativeAd() =================== ", 5, false);
        }
    }

    private final TAdNativeInfo m() {
        if (this.f41986e.isEmpty()) {
            return null;
        }
        TAdNativeInfo tAdNativeInfo = (TAdNativeInfo) this.f41986e.pollFirst();
        if (tAdNativeInfo == null || !tAdNativeInfo.isExpired()) {
            return tAdNativeInfo;
        }
        tAdNativeInfo.release();
        return m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String n() {
        String str = this.f41988g;
        return str == null ? "" : str;
    }

    private final boolean p() {
        int iM = com.transsion.ad.scene.a.f42201a.m(this.f41987f);
        boolean z10 = this.f41986e.size() >= iM;
        if (z10) {
            oi.a.f71022a.n("ad_n", getClassTag() + " --> isUpperLimit() --- 达到阈值了 --> nativeInfoList.size = " + this.f41986e.size() + " -- cacheUpperLimit = " + iM, 5, false);
        }
        return z10;
    }

    public static /* synthetic */ void r(BiddingHiSavanaNativeProvider biddingHiSavanaNativeProvider, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = "";
        }
        biddingHiSavanaNativeProvider.q(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map s() {
        return new LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int t(TAdNativeInfo tAdNativeInfo, TAdNativeInfo tAdNativeInfo2) {
        int iCompare = Double.compare(tAdNativeInfo2.getEcpmPrice(), tAdNativeInfo.getEcpmPrice());
        if (iCompare != 0) {
            return iCompare;
        }
        String adId = tAdNativeInfo.getAdId();
        String adId2 = tAdNativeInfo2.getAdId();
        Intrinsics.g(adId2, "getAdId(...)");
        return adId.compareTo(adId2);
    }

    public static /* synthetic */ Object v(BiddingHiSavanaNativeProvider biddingHiSavanaNativeProvider, String str, Map map, Continuation continuation, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            map = null;
        }
        return biddingHiSavanaNativeProvider.u(str, map, continuation);
    }

    private final boolean w(String str) {
        Object objM454constructorimpl;
        JsonElement jsonElement;
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = com.transsion.ad.scene.d.f42204a.b(str);
            objM454constructorimpl = Result.m454constructorimpl(Boolean.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("preload")) == null) ? false : jsonElement.getAsBoolean()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM454constructorimpl).booleanValue();
    }

    public final void g(di.a aVar) {
        this.f41985d.add(aVar);
    }

    public final void i(String msg) {
        Intrinsics.h(msg, "msg");
        h();
        TNativeAd tNativeAd = this.f41989h;
        if (tNativeAd == null || !tNativeAd.hasAd()) {
            q(msg);
        }
    }

    public final void j(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        k.d(o0.a(y0.c()), null, null, new BiddingHiSavanaNativeProvider$enterScene$1(this, sceneId, null), 3, null);
    }

    public final TAdNativeInfo k() {
        List<TAdNativeInfo> nativeAdInfo;
        TNativeAd tNativeAd = this.f41989h;
        if (tNativeAd != null && (nativeAdInfo = tNativeAd.getNativeAdInfo()) != null) {
            this.f41986e.addAll(nativeAdInfo);
        }
        TAdNativeInfo tAdNativeInfoM = m();
        if (!p()) {
            q("同步获取广告，继续装填缓存池");
        }
        return tAdNativeInfoM;
    }

    public final TNativeAd l() {
        return this.f41989h;
    }

    public final boolean o() {
        return !this.f41986e.isEmpty();
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onClick(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onClick(tAdNativeInfo, additionalInfo);
        Iterator it = this.f41985d.iterator();
        while (it.hasNext()) {
            ((di.a) it.next()).onClick(tAdNativeInfo, additionalInfo);
        }
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onLoadFailure(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onLoadFailure(tAdErrorCode, additionalInfo);
        this.f41990i.set(false);
        oi.a.o(oi.a.f71022a, "ad_n", getClassTag() + " --> onLoadFailure() --> placementId = " + n() + " --> errorMessage = " + (tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null), 6, false, 8, null);
        Iterator it = this.f41985d.iterator();
        while (it.hasNext()) {
            ((di.a) it.next()).onLoadFailure(tAdErrorCode, additionalInfo);
        }
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onLoadSuccess(AdditionalInfo additionalInfo) {
        List<TAdNativeInfo> nativeAdInfo;
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onLoadSuccess(additionalInfo);
        TNativeAd tNativeAd = this.f41989h;
        if (tNativeAd != null && (nativeAdInfo = tNativeAd.getNativeAdInfo()) != null) {
            this.f41986e.addAll(nativeAdInfo);
        }
        if (!p()) {
            q("缓存池没有达到阈值，继续请求");
        }
        this.f41990i.set(false);
        Iterator it = this.f41985d.iterator();
        while (it.hasNext()) {
            ((di.a) it.next()).onLoadSuccess(additionalInfo);
        }
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onShow(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onShow(tAdNativeInfo, additionalInfo);
        Iterator it = this.f41985d.iterator();
        while (it.hasNext()) {
            ((di.a) it.next()).onShow(tAdNativeInfo, additionalInfo);
        }
    }

    public final void q(String msg) {
        Intrinsics.h(msg, "msg");
        if (HiSavanaAdManager.f42117a.i()) {
            if (this.f41990i.get()) {
                return;
            }
            this.f41990i.set(true);
            h();
            TNativeAd tNativeAd = this.f41989h;
            if (tNativeAd != null) {
                tNativeAd.loadAd();
                return;
            }
            return;
        }
        oi.a.f71022a.n("ad_n", getClassTag() + " --> loadAd(" + msg + ") --> 广告SDK没有初始化", 6, false);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object u(String str, Map map, Continuation continuation) throws Throwable {
        BiddingHiSavanaNativeProvider$preLoadAd$1 biddingHiSavanaNativeProvider$preLoadAd$1;
        if (continuation instanceof BiddingHiSavanaNativeProvider$preLoadAd$1) {
            biddingHiSavanaNativeProvider$preLoadAd$1 = (BiddingHiSavanaNativeProvider$preLoadAd$1) continuation;
            int i11 = biddingHiSavanaNativeProvider$preLoadAd$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                biddingHiSavanaNativeProvider$preLoadAd$1.label = i11 - Integer.MIN_VALUE;
            } else {
                biddingHiSavanaNativeProvider$preLoadAd$1 = new BiddingHiSavanaNativeProvider$preLoadAd$1(this, continuation);
            }
        } else {
            biddingHiSavanaNativeProvider$preLoadAd$1 = new BiddingHiSavanaNativeProvider$preLoadAd$1(this, continuation);
        }
        Object objA = biddingHiSavanaNativeProvider$preLoadAd$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = biddingHiSavanaNativeProvider$preLoadAd$1.label;
        if (i12 == 0) {
            ResultKt.b(objA);
            if (!w(str)) {
                oi.a.f71022a.n("ad_n", getClassTag() + " --> sceneId = " + str + " --> 预请求开关关闭", 3, false);
                return Unit.f67061a;
            }
            if (!HiSavanaAdManager.f42117a.i()) {
                return Unit.f67061a;
            }
            SceneInterceptManager sceneInterceptManager = SceneInterceptManager.f42200a;
            biddingHiSavanaNativeProvider$preLoadAd$1.L$0 = str;
            biddingHiSavanaNativeProvider$preLoadAd$1.L$1 = map;
            biddingHiSavanaNativeProvider$preLoadAd$1.label = 1;
            objA = sceneInterceptManager.a(str, biddingHiSavanaNativeProvider$preLoadAd$1);
            if (objA == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            map = (Map) biddingHiSavanaNativeProvider$preLoadAd$1.L$1;
            str = (String) biddingHiSavanaNativeProvider$preLoadAd$1.L$0;
            ResultKt.b(objA);
        }
        if (!((Boolean) ((Pair) objA).getFirst()).booleanValue() && !com.transsion.ad.scene.c.b(com.transsion.ad.scene.c.f42203a, str, false, 2, null) && !o()) {
            k.d(o0.a(y0.b()), null, null, new BiddingHiSavanaNativeProvider$preLoadAd$2(str, this, map, null), 3, null);
            return Unit.f67061a;
        }
        return Unit.f67061a;
    }

    public final void x(di.a aVar) {
        this.f41985d.remove(aVar);
    }

    public final void y(String str) {
        this.f41988g = str;
    }

    public final void z(String str) {
        this.f41987f = str;
    }
}
