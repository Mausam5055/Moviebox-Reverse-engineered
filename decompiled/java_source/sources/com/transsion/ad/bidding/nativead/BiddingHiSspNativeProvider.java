package com.transsion.ad.bidding.nativead;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.cloud.hisavana.sdk.common.bean.AdActiveInfo;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.transsion.ad.db.pslink.AppInstalledBean;
import com.transsion.ad.hi.HiSavanaAdManager;
import com.transsion.ad.ps.installed.AppInstallManager;
import com.transsion.ad.scene.SceneInterceptManager;
import java.util.ArrayList;
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
public final class BiddingHiSspNativeProvider extends com.cloud.hisavana.sdk.api.listener.d {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f41991h = new a(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Lazy f41992i = LazyKt.b(new Function0() { // from class: com.transsion.ad.bidding.nativead.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return BiddingHiSspNativeProvider.o();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private z6.d f41994c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f41995d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AtomicBoolean f41993b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ConcurrentLinkedDeque f41996e = new ConcurrentLinkedDeque();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ConcurrentSkipListSet f41997f = new ConcurrentSkipListSet(new Comparator() { // from class: com.transsion.ad.bidding.nativead.c
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return BiddingHiSspNativeProvider.p((TaNativeInfo) obj, (TaNativeInfo) obj2);
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f41998g = 3;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final Map a() {
            return (Map) BiddingHiSspNativeProvider.f41992i.getValue();
        }

        public final BiddingHiSspNativeProvider b(String str) {
            String strI = com.transsion.ad.scene.a.f42201a.i(str);
            if (strI == null || strI.length() == 0) {
                return null;
            }
            BiddingHiSspNativeProvider biddingHiSspNativeProvider = (BiddingHiSspNativeProvider) a().get(strI);
            if (biddingHiSspNativeProvider != null) {
                return biddingHiSspNativeProvider;
            }
            BiddingHiSspNativeProvider biddingHiSspNativeProvider2 = new BiddingHiSspNativeProvider();
            biddingHiSspNativeProvider2.s(strI);
            a().put(strI, biddingHiSspNativeProvider2);
            return biddingHiSspNativeProvider2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String j() {
        String simpleName = BiddingHiSspNativeProvider.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String l() {
        String str = this.f41995d;
        return str == null ? "" : str;
    }

    private final boolean m() {
        boolean z10 = this.f41997f.size() >= this.f41998g;
        if (z10) {
            oi.a.o(oi.a.f71022a, "ad_n", j() + " --> isUpperLimit() --- 达到阈值了 --> nativeInfoList.size = " + this.f41997f.size() + " -- cacheUpperLimit = " + this.f41998g, 0, false, 4, null);
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map o() {
        return new LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int p(TaNativeInfo taNativeInfo, TaNativeInfo taNativeInfo2) {
        boolean zC = Intrinsics.c(taNativeInfo.getAdCreateId(), taNativeInfo2.getAdCreateId());
        AdImage image = taNativeInfo.getImage();
        String imgUrl = image != null ? image.getImgUrl() : null;
        AdImage image2 = taNativeInfo2.getImage();
        boolean zC2 = Intrinsics.c(imgUrl, image2 != null ? image2.getImgUrl() : null);
        if (zC || zC2) {
            int iCompare = Double.compare(taNativeInfo2.getBidPrice(), taNativeInfo.getBidPrice());
            if (iCompare != 0) {
                return iCompare;
            }
            return 0;
        }
        int iCompare2 = Double.compare(taNativeInfo2.getBidPrice(), taNativeInfo.getBidPrice());
        if (iCompare2 != 0) {
            return iCompare2;
        }
        String adCreateId = taNativeInfo2.getAdCreateId();
        String adCreateId2 = taNativeInfo.getAdCreateId();
        Intrinsics.g(adCreateId2, "getAdCreateId(...)");
        int iCompareTo = adCreateId.compareTo(adCreateId2);
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        String imgUrl2 = taNativeInfo2.getImage().getImgUrl();
        String imgUrl3 = taNativeInfo.getImage().getImgUrl();
        Intrinsics.g(imgUrl3, "getImgUrl(...)");
        return imgUrl2.compareTo(imgUrl3);
    }

    public final void h(com.cloud.hisavana.sdk.api.listener.d dVar) {
        this.f41996e.add(dVar);
    }

    public final List i(int i11, boolean z10) {
        Object objM454constructorimpl;
        ArrayList arrayList;
        if (i11 > this.f41998g) {
            this.f41998g = i11;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Iterator it = this.f41997f.iterator();
            while (it.hasNext()) {
                TaNativeInfo taNativeInfo = (TaNativeInfo) it.next();
                z6.d dVar = this.f41994c;
                if (dVar != null && !dVar.v(taNativeInfo)) {
                    taNativeInfo.destroy();
                    it.remove();
                }
            }
            if (!z10 || this.f41997f.size() >= i11) {
                arrayList = new ArrayList();
                int iMin = Math.min(i11, this.f41997f.size());
                for (int i12 = 0; i12 < iMin; i12++) {
                    TaNativeInfo taNativeInfo2 = (TaNativeInfo) this.f41997f.pollFirst();
                    if (taNativeInfo2 != null) {
                        arrayList.add(taNativeInfo2);
                    }
                }
            } else {
                arrayList = null;
            }
            objM454constructorimpl = Result.m454constructorimpl(arrayList);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        List list = (List) (Result.m457exceptionOrNullimpl(objM454constructorimpl) == null ? objM454constructorimpl : null);
        n();
        return list;
    }

    public final z6.d k() {
        return this.f41994c;
    }

    public final void n() {
        if (!HiSavanaAdManager.f42117a.i()) {
            oi.a.o(oi.a.f71022a, "ad_n", j() + " --> loadAd() --> 广告SDK没有初始化", 0, false, 4, null);
            return;
        }
        if (m() || this.f41993b.get()) {
            return;
        }
        this.f41993b.set(true);
        if (this.f41994c == null) {
            z6.d dVar = new z6.d(l());
            this.f41994c = dVar;
            dVar.p(this);
            z6.d dVar2 = this.f41994c;
            if (dVar2 != null) {
                dVar2.A(this.f41998g);
            }
            oi.a.o(oi.a.f71022a, "ad_n", "============= " + j() + " --> loadAd() --> mPlacementId = " + l() + " --> create TNativeAd() ============= ", 0, false, 4, null);
        }
        z6.d dVar3 = this.f41994c;
        if (dVar3 != null) {
            dVar3.A(this.f41998g);
        }
        z6.d dVar4 = this.f41994c;
        if (dVar4 != null) {
            dVar4.w();
        }
    }

    @Override // com.cloud.hisavana.sdk.api.listener.d
    public void onAdActivate(AdActiveInfo adActiveInfo) {
        String packageName;
        super.onAdActivate(adActiveInfo);
        AppInstallManager appInstallManager = AppInstallManager.f42196a;
        if (adActiveInfo == null || (packageName = adActiveInfo.getPackageName()) == null) {
            packageName = "ew没有传递过来包名";
        }
        AppInstalledBean appInstalledBeanA = appInstallManager.a(packageName);
        appInstalledBeanA.setSource(AppInstalledBean.APP_INSTALLED_BEAN_SOURCE_EW);
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        appInstallManager.e(applicationA, appInstalledBeanA);
    }

    @Override // com.cloud.hisavana.sdk.api.listener.d
    public void onAdLoaded(List list) {
        this.f41993b.set(false);
        if (list != null) {
            this.f41997f.addAll(list);
        }
    }

    @Override // com.cloud.hisavana.sdk.api.listener.d
    public void onError(TaErrorCode taErrorCode) {
        this.f41993b.set(false);
        oi.a.f71022a.n("ad_n", j() + " --> onError() --> placementId = " + l() + " --> errorMessage = " + (taErrorCode != null ? taErrorCode.getErrorMessage() : null), 6, false);
    }

    @Override // com.cloud.hisavana.sdk.api.listener.d
    public void onNativeAdClick(TaNativeInfo taNativeInfo) {
        Iterator it = this.f41996e.iterator();
        while (it.hasNext()) {
            ((com.cloud.hisavana.sdk.api.listener.d) it.next()).onNativeAdClick(taNativeInfo);
        }
    }

    @Override // com.cloud.hisavana.sdk.api.listener.d
    public void onNativeAdShow(TaNativeInfo taNativeInfo) {
        Iterator it = this.f41996e.iterator();
        while (it.hasNext()) {
            ((com.cloud.hisavana.sdk.api.listener.d) it.next()).onNativeAdShow(taNativeInfo);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object q(String str, int i11, Map map, Continuation continuation) throws Throwable {
        BiddingHiSspNativeProvider$preLoadAd$1 biddingHiSspNativeProvider$preLoadAd$1;
        String str2;
        Map map2;
        int i12;
        if (continuation instanceof BiddingHiSspNativeProvider$preLoadAd$1) {
            biddingHiSspNativeProvider$preLoadAd$1 = (BiddingHiSspNativeProvider$preLoadAd$1) continuation;
            int i13 = biddingHiSspNativeProvider$preLoadAd$1.label;
            if ((i13 & Integer.MIN_VALUE) != 0) {
                biddingHiSspNativeProvider$preLoadAd$1.label = i13 - Integer.MIN_VALUE;
            } else {
                biddingHiSspNativeProvider$preLoadAd$1 = new BiddingHiSspNativeProvider$preLoadAd$1(this, continuation);
            }
        } else {
            biddingHiSspNativeProvider$preLoadAd$1 = new BiddingHiSspNativeProvider$preLoadAd$1(this, continuation);
        }
        Object objA = biddingHiSspNativeProvider$preLoadAd$1.result;
        Object objF = IntrinsicsKt.f();
        int i14 = biddingHiSspNativeProvider$preLoadAd$1.label;
        if (i14 == 0) {
            ResultKt.b(objA);
            if (!HiSavanaAdManager.f42117a.i()) {
                return Unit.f67061a;
            }
            SceneInterceptManager sceneInterceptManager = SceneInterceptManager.f42200a;
            biddingHiSspNativeProvider$preLoadAd$1.L$0 = str;
            biddingHiSspNativeProvider$preLoadAd$1.L$1 = map;
            biddingHiSspNativeProvider$preLoadAd$1.I$0 = i11;
            biddingHiSspNativeProvider$preLoadAd$1.label = 1;
            objA = sceneInterceptManager.a(str, biddingHiSspNativeProvider$preLoadAd$1);
            if (objA == objF) {
                return objF;
            }
            str2 = str;
            map2 = map;
            i12 = i11;
        } else {
            if (i14 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            int i15 = biddingHiSspNativeProvider$preLoadAd$1.I$0;
            map2 = (Map) biddingHiSspNativeProvider$preLoadAd$1.L$1;
            str2 = (String) biddingHiSspNativeProvider$preLoadAd$1.L$0;
            ResultKt.b(objA);
            i12 = i15;
        }
        if (!((Boolean) ((Pair) objA).getFirst()).booleanValue() && !com.transsion.ad.scene.c.b(com.transsion.ad.scene.c.f42203a, str2, false, 2, null) && this.f41997f.isEmpty()) {
            k.d(o0.a(y0.b()), null, null, new BiddingHiSspNativeProvider$preLoadAd$2(str2, this, map2, i12, null), 3, null);
            return Unit.f67061a;
        }
        return Unit.f67061a;
    }

    public final void r(com.cloud.hisavana.sdk.api.listener.d dVar) {
        this.f41996e.remove(dVar);
    }

    public final void s(String str) {
        this.f41995d = str;
    }
}
