package com.transsion.ad.bidding.icon;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.mediation.ad.TNativeAd;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import com.transsion.ad.ps.model.RecommendInfo;
import com.transsion.ad.report.BiddingStateEnum;
import com.transsion.ad.scene.AdSceneDisplayLimitManager;
import com.transsion.ad.scene.SceneInterceptManager;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import ti.n;

/* JADX INFO: loaded from: classes5.dex */
public final class BiddingIconAdManager extends di.a {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final Companion f41937s = new Companion(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f41941g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private di.a f41942h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f41943i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private AdPlans f41945k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private AdPlans f41946l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private BiddingHiSavanaIconAdManager f41949o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private f f41950p;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List f41938d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List f41939e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List f41940f = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private AtomicBoolean f41944j = new AtomicBoolean(false);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Lazy f41947m = LazyKt.b(new Function0() { // from class: com.transsion.ad.bidding.icon.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return BiddingIconAdManager.T();
        }
    });

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Runnable f41948n = new Runnable() { // from class: com.transsion.ad.bidding.icon.c
        @Override // java.lang.Runnable
        public final void run() {
            BiddingIconAdManager.H(this.f41955a);
        }
    };

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Set f41951q = new LinkedHashSet();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f41952r = "";

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void b(Companion companion, String str, Map map, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                map = null;
            }
            companion.a(str, map);
        }

        public final void a(String sceneId, Map map) {
            Intrinsics.h(sceneId, "sceneId");
            k.d(o0.a(y0.b()), null, null, new BiddingIconAdManager$Companion$preLoadAd$1(sceneId, map, null), 3, null);
        }
    }

    private final void F(String str) {
        AdPlans adPlans;
        String str2;
        Unit unit = null;
        L().removeCallbacksAndMessages(null);
        if (this.f41944j.get()) {
            this.f41944j.set(false);
            try {
                Result.Companion companion = Result.INSTANCE;
                List listG = G(Q());
                BiddingWrapperIconBean biddingWrapperIconBean = (BiddingWrapperIconBean) CollectionsKt.k0(listG);
                Integer numValueOf = biddingWrapperIconBean != null ? Integer.valueOf(biddingWrapperIconBean.getType()) : null;
                if (numValueOf != null && numValueOf.intValue() == 2) {
                    adPlans = this.f41945k;
                } else {
                    adPlans = (numValueOf != null && numValueOf.intValue() == 1) ? this.f41946l : null;
                }
                List list = listG;
                ArrayList arrayList = new ArrayList(CollectionsKt.v(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(Double.valueOf(((BiddingWrapperIconBean) it.next()).getEcpm()));
                }
                if (listG.isEmpty()) {
                    str2 = "竞价失败 --> 无广告数据";
                } else {
                    str2 = "竞价成功 --> ecpmList = " + arrayList + " --> max item: ecpm = " + (biddingWrapperIconBean != null ? Double.valueOf(biddingWrapperIconBean.getEcpm()) : null) + ", plans.id = " + (adPlans != null ? adPlans.getId() : null) + ", plans.name = " + (adPlans != null ? adPlans.getName() : null);
                }
                ri.c cVar = ri.c.f74535a;
                String strO = O();
                String sceneId = getSceneId();
                if (sceneId == null) {
                    sceneId = "";
                }
                cVar.e(strO, sceneId, 106, 6, listG.isEmpty() ? BiddingStateEnum.BIDDING_REPORT_BIDDING_FAIL : BiddingStateEnum.BIDDING_REPORT_BIDDING_SUCCESS, str2, arrayList.toString(), String.valueOf(biddingWrapperIconBean != null ? Double.valueOf(biddingWrapperIconBean.getEcpm()) : null), String.valueOf(adPlans != null ? adPlans.getId() : null), String.valueOf(adPlans != null ? adPlans.getName() : null), "", adPlans != null ? adPlans.getAdSource() : null);
                oi.a.i(oi.a.f71022a, getClassTag() + " --> sceneId = " + getSceneId() + " --> onBiddingLoad() --> " + str2 + " --> targetNum = " + this.f41943i + " --> data.size = " + listG.size(), 0, false, 2, null);
                int i11 = this.f41943i;
                if (i11 > 0) {
                    listG = CollectionsKt.U0(CollectionsKt.K0(listG, i11));
                }
                List list2 = this.f41940f;
                if (list2 != null) {
                    list2.clear();
                }
                List list3 = this.f41940f;
                if (list3 != null) {
                    list3.addAll(listG);
                }
                if (listG.isEmpty()) {
                    di.a aVar = this.f41942h;
                    if (aVar != null) {
                        aVar.i(new TAdErrorCode(-1, "values is empty"));
                        unit = Unit.f67061a;
                    }
                } else {
                    di.a aVar2 = this.f41942h;
                    if (aVar2 != null) {
                        aVar2.w(listG);
                    }
                    AdSceneDisplayLimitManager adSceneDisplayLimitManager = AdSceneDisplayLimitManager.f42199a;
                    String str3 = this.f41941g;
                    if (str3 == null) {
                        str3 = "";
                    }
                    adSceneDisplayLimitManager.b(str3);
                    unit = Unit.f67061a;
                }
                Result.m454constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
    }

    private final List G(final boolean z10) {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f41938d.iterator();
        while (it.hasNext()) {
            arrayList.add(J((TAdNativeInfo) it.next()));
        }
        Iterator it2 = this.f41939e.iterator();
        while (it2.hasNext()) {
            arrayList.add(N((RecommendInfo) it2.next()));
        }
        final Comparator comparator = new Comparator() { // from class: com.transsion.ad.bidding.icon.BiddingIconAdManager$combineAndRetrieveData$$inlined$compareByDescending$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t11, T t12) {
                return ComparisonsKt.d(Double.valueOf(((BiddingWrapperIconBean) t12).getEcpm()), Double.valueOf(((BiddingWrapperIconBean) t11).getEcpm()));
            }
        };
        CollectionsKt.A(arrayList, new Comparator() { // from class: com.transsion.ad.bidding.icon.BiddingIconAdManager$combineAndRetrieveData$$inlined$thenBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t11, T t12) {
                int iCompare = comparator.compare(t11, t12);
                if (iCompare != 0) {
                    return iCompare;
                }
                boolean z11 = z10;
                int type = ((BiddingWrapperIconBean) t11).getType();
                if (!z11) {
                    type = -type;
                }
                Integer numValueOf = Integer.valueOf(type);
                boolean z12 = z10;
                int type2 = ((BiddingWrapperIconBean) t12).getType();
                if (!z12) {
                    type2 = -type2;
                }
                return ComparisonsKt.d(numValueOf, Integer.valueOf(type2));
            }
        });
        this.f41938d.clear();
        this.f41939e.clear();
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(BiddingIconAdManager biddingIconAdManager) {
        biddingIconAdManager.F("竞价时间到");
    }

    private final BiddingWrapperIconBean J(TAdNativeInfo tAdNativeInfo) {
        return new BiddingWrapperIconBean(2, null, tAdNativeInfo, tAdNativeInfo.getEcpmPrice(), false, 16, null);
    }

    private final Handler L() {
        return (Handler) this.f41947m.getValue();
    }

    private final BiddingWrapperIconBean N(RecommendInfo recommendInfo) {
        Double bidEcpmCent;
        AdPlans adPlans = this.f41946l;
        return new BiddingWrapperIconBean(1, recommendInfo, null, (adPlans == null || (bidEcpmCent = adPlans.getBidEcpmCent()) == null) ? 0.0d : bidEcpmCent.doubleValue(), false, 16, null);
    }

    private final String O() {
        return this.f41952r;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:8:0x001c  */
    public final Object P(String str, boolean z10, List list, Continuation continuation) throws Throwable {
        BiddingIconAdManager$innerLoadAd$1 biddingIconAdManager$innerLoadAd$1;
        int iB;
        Object objM454constructorimpl;
        Object objM454constructorimpl2;
        int i11;
        Object next;
        Object next2;
        if (continuation instanceof BiddingIconAdManager$innerLoadAd$1) {
            biddingIconAdManager$innerLoadAd$1 = (BiddingIconAdManager$innerLoadAd$1) continuation;
            int i12 = biddingIconAdManager$innerLoadAd$1.label;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                biddingIconAdManager$innerLoadAd$1.label = i12 - Integer.MIN_VALUE;
            } else {
                biddingIconAdManager$innerLoadAd$1 = new BiddingIconAdManager$innerLoadAd$1(this, continuation);
            }
        } else {
            biddingIconAdManager$innerLoadAd$1 = new BiddingIconAdManager$innerLoadAd$1(this, continuation);
        }
        BiddingIconAdManager$innerLoadAd$1 biddingIconAdManager$innerLoadAd$2 = biddingIconAdManager$innerLoadAd$1;
        Object obj = biddingIconAdManager$innerLoadAd$2.result;
        Object objF = IntrinsicsKt.f();
        int i13 = biddingIconAdManager$innerLoadAd$2.label;
        if (i13 == 0) {
            ResultKt.b(obj);
            iB = com.transsion.ad.scene.a.f42201a.b(str, 2);
            oi.a.i(oi.a.f71022a, getClassTag() + " --> sceneId = " + getSceneId() + " --> loadAd() --> 开始加载广告 --> biddingTime = " + iB, 0, false, 2, null);
            try {
                Result.Companion companion = Result.INSTANCE;
                Iterator it = list.iterator();
                do {
                    if (!it.hasNext()) {
                        throw new NoSuchElementException("Collection contains no element matching the predicate.");
                    }
                    next2 = it.next();
                } while (!Intrinsics.c(((AdPlans) next2).getAdSource(), AdPlanSourceManager.AdPlanEnum.AD_PLAN_AD_SOURCE_HI.getValue()));
                objM454constructorimpl = Result.m454constructorimpl((AdPlans) next2);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            if (Result.m460isFailureimpl(objM454constructorimpl)) {
                objM454constructorimpl = null;
            }
            AdPlans adPlans = (AdPlans) objM454constructorimpl;
            this.f41945k = adPlans;
            if (adPlans == null || com.transsion.ad.scene.c.b(com.transsion.ad.scene.c.f42203a, str, false, 2, null)) {
                oi.a.f71022a.h(getClassTag() + " --> sceneId = " + getSceneId() + " --> innerLoadAd() --> 程序化广告无计划或场景关闭", 5, false);
            } else {
                if (this.f41949o == null) {
                    BiddingHiSavanaIconAdManager biddingHiSavanaIconAdManager = new BiddingHiSavanaIconAdManager();
                    this.f41949o = biddingHiSavanaIconAdManager;
                    biddingHiSavanaIconAdManager.g(str);
                    BiddingHiSavanaIconAdManager biddingHiSavanaIconAdManager2 = this.f41949o;
                    if (biddingHiSavanaIconAdManager2 != null) {
                        biddingHiSavanaIconAdManager2.f(this);
                    }
                }
                BiddingHiSavanaIconAdManager biddingHiSavanaIconAdManager3 = this.f41949o;
                if (biddingHiSavanaIconAdManager3 != null) {
                    biddingHiSavanaIconAdManager3.e();
                }
                BiddingHiSavanaIconAdManager biddingHiSavanaIconAdManager4 = this.f41949o;
                if (biddingHiSavanaIconAdManager4 != null) {
                    biddingHiSavanaIconAdManager4.c(str);
                }
            }
            try {
                Iterator it2 = list.iterator();
                do {
                    if (!it2.hasNext()) {
                        throw new NoSuchElementException("Collection contains no element matching the predicate.");
                    }
                    next = it2.next();
                } while (!Intrinsics.c(((AdPlans) next).getAdSource(), AdPlanSourceManager.AdPlanEnum.AD_PLAN_AD_SOURCE_ICON.getValue()));
                objM454constructorimpl2 = Result.m454constructorimpl((AdPlans) next);
            } catch (Throwable th3) {
                Result.Companion companion3 = Result.INSTANCE;
                objM454constructorimpl2 = Result.m454constructorimpl(ResultKt.a(th3));
            }
            if (Result.m460isFailureimpl(objM454constructorimpl2)) {
                objM454constructorimpl2 = null;
            }
            AdPlans adPlans2 = (AdPlans) objM454constructorimpl2;
            this.f41946l = adPlans2;
            if (adPlans2 == null || com.transsion.ad.scene.c.d(com.transsion.ad.scene.c.f42203a, str, false, 2, null)) {
                oi.a.f71022a.h(getClassTag() + " --> sceneId = " + getSceneId() + " --> innerLoadAd() --> 包断广告无计划或场景关闭", 5, false);
            } else {
                if (this.f41950p == null) {
                    f fVar = new f();
                    this.f41950p = fVar;
                    fVar.C(this);
                    f fVar2 = this.f41950p;
                    if (fVar2 != null) {
                        fVar2.B(z10);
                    }
                }
                f fVar3 = this.f41950p;
                if (fVar3 != null) {
                    biddingIconAdManager$innerLoadAd$2.I$0 = iB;
                    biddingIconAdManager$innerLoadAd$2.label = 1;
                    if (f.A(fVar3, 0, str, null, biddingIconAdManager$innerLoadAd$2, 5, null) == objF) {
                        return objF;
                    }
                    i11 = iB;
                }
            }
            L().postDelayed(this.f41948n, ((long) iB) * 1000);
            return Unit.f67061a;
        }
        if (i13 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        i11 = biddingIconAdManager$innerLoadAd$2.I$0;
        ResultKt.b(obj);
        iB = i11;
        L().postDelayed(this.f41948n, ((long) iB) * 1000);
        return Unit.f67061a;
    }

    private final boolean Q() {
        String asString;
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f42204a.b(getSceneId());
        if (jsonObjectB == null || (jsonElement = jsonObjectB.get(TrackingKey.PRIORITY)) == null || (asString = jsonElement.getAsString()) == null) {
            asString = "hi";
        }
        return TextUtils.equals(asString, "hi");
    }

    public static /* synthetic */ Object S(BiddingIconAdManager biddingIconAdManager, String str, boolean z10, int i11, di.a aVar, Map map, Continuation continuation, int i12, Object obj) {
        if ((i12 & 16) != 0) {
            map = null;
        }
        return biddingIconAdManager.R(str, z10, i11, aVar, map, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler T() {
        return new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U(di.a aVar, String str) {
        oi.a.i(oi.a.f71022a, str, 6, false, 4, null);
        if (aVar != null) {
            aVar.i(new TAdErrorCode(1101, str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(BiddingIconAdManager biddingIconAdManager) {
        biddingIconAdManager.F("数据都回来了 --> onHiIconAdReady");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W(BiddingIconAdManager biddingIconAdManager) {
        biddingIconAdManager.F("数据都回来了 --> onPSDistributionReady");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getClassTag() {
        String simpleName = BiddingIconAdManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void E(BiddingWrapperIconView iconView) {
        Intrinsics.h(iconView, "iconView");
        this.f41951q.add(iconView);
    }

    public final void I() {
        L().removeCallbacksAndMessages(null);
        this.f41942h = null;
        this.f41938d.clear();
        this.f41939e.clear();
        f fVar = this.f41950p;
        if (fVar != null) {
            fVar.x();
        }
        Iterator it = this.f41951q.iterator();
        while (it.hasNext()) {
            ((BiddingWrapperIconView) it.next()).destroy();
        }
        List list = this.f41940f;
        if (list != null) {
            list.clear();
        }
        BiddingHiSavanaIconAdManager biddingHiSavanaIconAdManager = this.f41949o;
        if (biddingHiSavanaIconAdManager != null) {
            biddingHiSavanaIconAdManager.b();
        }
        oi.a.i(oi.a.f71022a, getClassTag() + " --> sceneId = " + getSceneId() + " --> destroy() --> 资源回收", 0, false, 2, null);
    }

    public final di.a K() {
        return this;
    }

    public final TNativeAd M() {
        BiddingHiSavanaIconAdManager biddingHiSavanaIconAdManager = this.f41949o;
        if (biddingHiSavanaIconAdManager != null) {
            return biddingHiSavanaIconAdManager.d();
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001a  */
    public final Object R(String str, boolean z10, int i11, di.a aVar, Map map, Continuation continuation) throws Throwable {
        BiddingIconAdManager$loadIconAd$1 biddingIconAdManager$loadIconAd$1;
        boolean z11;
        String str2;
        int i12;
        di.a aVar2;
        Map map2;
        if (continuation instanceof BiddingIconAdManager$loadIconAd$1) {
            biddingIconAdManager$loadIconAd$1 = (BiddingIconAdManager$loadIconAd$1) continuation;
            int i13 = biddingIconAdManager$loadIconAd$1.label;
            if ((i13 & Integer.MIN_VALUE) != 0) {
                biddingIconAdManager$loadIconAd$1.label = i13 - Integer.MIN_VALUE;
            } else {
                biddingIconAdManager$loadIconAd$1 = new BiddingIconAdManager$loadIconAd$1(this, continuation);
            }
        } else {
            biddingIconAdManager$loadIconAd$1 = new BiddingIconAdManager$loadIconAd$1(this, continuation);
        }
        BiddingIconAdManager$loadIconAd$1 biddingIconAdManager$loadIconAd$2 = biddingIconAdManager$loadIconAd$1;
        Object objA = biddingIconAdManager$loadIconAd$2.result;
        Object objF = IntrinsicsKt.f();
        int i14 = biddingIconAdManager$loadIconAd$2.label;
        if (i14 != 0) {
            if (i14 == 1) {
                i12 = biddingIconAdManager$loadIconAd$2.I$0;
                boolean z12 = biddingIconAdManager$loadIconAd$2.Z$0;
                Map map3 = (Map) biddingIconAdManager$loadIconAd$2.L$2;
                di.a aVar3 = (di.a) biddingIconAdManager$loadIconAd$2.L$1;
                str2 = (String) biddingIconAdManager$loadIconAd$2.L$0;
                ResultKt.b(objA);
                z11 = z12;
                map2 = map3;
                aVar2 = aVar3;
            } else {
                if (i14 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objA);
            }
            return Unit.f67061a;
        }
        ResultKt.b(objA);
        SceneInterceptManager sceneInterceptManager = SceneInterceptManager.f42200a;
        biddingIconAdManager$loadIconAd$2.L$0 = str;
        biddingIconAdManager$loadIconAd$2.L$1 = aVar;
        biddingIconAdManager$loadIconAd$2.L$2 = map;
        z11 = z10;
        biddingIconAdManager$loadIconAd$2.Z$0 = z11;
        biddingIconAdManager$loadIconAd$2.I$0 = i11;
        biddingIconAdManager$loadIconAd$2.label = 1;
        objA = sceneInterceptManager.a(str, biddingIconAdManager$loadIconAd$2);
        if (objA == objF) {
            return objF;
        }
        str2 = str;
        i12 = i11;
        aVar2 = aVar;
        map2 = map;
        Pair pair = (Pair) objA;
        if (((Boolean) pair.getFirst()).booleanValue()) {
            U(aVar2, (String) pair.getSecond());
            return Unit.f67061a;
        }
        if (this.f41944j.get()) {
            return Unit.f67061a;
        }
        this.f41944j.set(true);
        this.f41952r = n.f76264a.b();
        ri.c.f74535a.l(O(), str2, 6, 102, "", "");
        this.f41942h = aVar2;
        this.f41941g = str2;
        this.f41943i = i12;
        i0 i0VarB = y0.b();
        BiddingIconAdManager$loadIconAd$2 biddingIconAdManager$loadIconAd$3 = new BiddingIconAdManager$loadIconAd$2(str2, map2, this, aVar2, z11, null);
        biddingIconAdManager$loadIconAd$2.L$0 = null;
        biddingIconAdManager$loadIconAd$2.L$1 = null;
        biddingIconAdManager$loadIconAd$2.L$2 = null;
        biddingIconAdManager$loadIconAd$2.label = 2;
        if (i.g(i0VarB, biddingIconAdManager$loadIconAd$3, biddingIconAdManager$loadIconAd$2) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }

    @Override // di.a
    public void e(TAdErrorCode tAdErrorCode, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        super.e(tAdErrorCode, biddingIntermediateMaterialBean);
        oi.a.i(oi.a.f71022a, getClassTag() + " --> sceneId = " + getSceneId() + " --> onBiddingBuyOutError() --> errorMessage = " + (tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null), 0, false, 6, null);
    }

    public final String getSceneId() {
        return this.f41941g;
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onClick(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onClick(tAdNativeInfo, additionalInfo);
        ri.c cVar = ri.c.f74535a;
        String strO = O();
        String sceneId = getSceneId();
        Integer numValueOf = tAdNativeInfo != null ? Integer.valueOf(tAdNativeInfo.getAdSource()) : null;
        AdPlans adPlans = this.f41945k;
        cVar.a((128 & 1) != 0 ? "" : strO, sceneId, "", numValueOf, "", 6, (128 & 64) != 0 ? false : false, (128 & 128) != 0 ? MapsKt.h() : null, null, (128 & 512) != 0 ? null : null, (128 & 1024) != 0 ? null : null, (128 & 2048) != 0 ? null : "", adPlans != null ? adPlans.getAdSource() : null);
        di.a aVar = this.f41942h;
        if (aVar != null) {
            aVar.onClick(tAdNativeInfo, additionalInfo);
        }
        oi.a aVar2 = oi.a.f71022a;
        String classTag = getClassTag();
        String sceneId2 = getSceneId();
        AdPlans adPlans2 = this.f41945k;
        oi.a.i(aVar2, classTag + " --> sceneId = " + sceneId2 + " --> onBiddingWrapperAdClick() --> name = " + (adPlans2 != null ? adPlans2.getName() : null), 0, false, 2, null);
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onLoadFailure(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onLoadFailure(tAdErrorCode, additionalInfo);
        di.a aVar = this.f41942h;
        if (aVar != null) {
            aVar.onLoadFailure(tAdErrorCode, additionalInfo);
        }
        oi.a.i(oi.a.f71022a, getClassTag() + " --> sceneId = " + getSceneId() + " --> onLoadFailure() --> placementId = " + additionalInfo.getPlacementId() + " --> errorMessage = " + (tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null), 0, false, 6, null);
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onShow(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        String id2;
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onShow(tAdNativeInfo, additionalInfo);
        ri.c cVar = ri.c.f74535a;
        String strO = O();
        String sceneId = getSceneId();
        AdPlans adPlans = this.f41945k;
        if (adPlans == null || (id2 = adPlans.getId()) == null) {
            id2 = "";
        }
        String str = id2;
        AdPlans adPlans2 = this.f41945k;
        cVar.g((128 & 1) != 0 ? "" : strO, sceneId, str, 103, "", 6, (128 & 64) != 0 ? false : false, (128 & 128) != 0 ? MapsKt.h() : null, null, (128 & 512) != 0 ? null : null, (128 & 1024) != 0 ? null : null, (128 & 2048) != 0 ? null : null, adPlans2 != null ? adPlans2.getAdSource() : null);
        oi.a aVar = oi.a.f71022a;
        String classTag = getClassTag();
        String sceneId2 = getSceneId();
        AdPlans adPlans3 = this.f41945k;
        oi.a.i(aVar, classTag + " --> sceneId = " + sceneId2 + " --> onBiddingWrapperAdDisplay() --> name = " + (adPlans3 != null ? adPlans3.getName() : null), 0, false, 2, null);
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onShowError(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onShowError(tAdErrorCode, additionalInfo);
        oi.a aVar = oi.a.f71022a;
        String classTag = getClassTag();
        String sceneId = getSceneId();
        AdPlans adPlans = this.f41945k;
        oi.a.i(aVar, classTag + " --> sceneId = " + sceneId + " --> onIconShowError() --> name = " + (adPlans != null ? adPlans.getName() : null) + ", errorMessage = " + (tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null), 0, false, 2, null);
    }

    @Override // di.a
    public void q(List tAdNativeInfos) {
        Intrinsics.h(tAdNativeInfos, "tAdNativeInfos");
        super.q(tAdNativeInfos);
        oi.a.i(oi.a.f71022a, getClassTag() + " --> sceneId = " + getSceneId() + " --> onIconAdReady() --> tAdNativeInfos.size = " + tAdNativeInfos.size(), 0, false, 2, null);
        this.f41938d.clear();
        this.f41938d.addAll(tAdNativeInfos);
        if (this.f41939e.isEmpty()) {
            return;
        }
        L().post(new Runnable() { // from class: com.transsion.ad.bidding.icon.d
            @Override // java.lang.Runnable
            public final void run() {
                BiddingIconAdManager.V(this.f41956a);
            }
        });
    }

    @Override // di.a
    public void r(RecommendInfo recommendInfo) {
        String id2;
        super.r(recommendInfo);
        ri.c cVar = ri.c.f74535a;
        String strO = O();
        String sceneId = getSceneId();
        AdPlans adPlans = this.f41946l;
        if (adPlans == null || (id2 = adPlans.getId()) == null) {
            id2 = "";
        }
        cVar.a((128 & 1) != 0 ? "" : strO, sceneId, id2, 102, "", 6, (128 & 64) != 0 ? false : false, (128 & 128) != 0 ? MapsKt.h() : null, recommendInfo, (128 & 512) != 0 ? null : null, (128 & 1024) != 0 ? null : null, (128 & 2048) != 0 ? null : "", AdPlanSourceManager.AdPlanEnum.AD_PLAN_AD_SOURCE_HI.getValue());
        com.transsion.ad.strategy.b.f42227a.k(null);
        qi.b bVar = qi.b.f73634a;
        String sceneId2 = getSceneId();
        if (sceneId2 == null) {
            sceneId2 = "";
        }
        AdPlans adPlans2 = this.f41946l;
        bVar.a(recommendInfo, true, sceneId2, adPlans2 != null ? adPlans2.getBidEcpmCent() : null);
        di.a aVar = this.f41942h;
        if (aVar != null) {
            aVar.r(recommendInfo);
        }
        oi.a aVar2 = oi.a.f71022a;
        String classTag = getClassTag();
        String sceneId3 = getSceneId();
        AdPlans adPlans3 = this.f41946l;
        oi.a.i(aVar2, classTag + " --> sceneId = " + sceneId3 + " --> onBiddingWrapperAdClick() --> name = " + (adPlans3 != null ? adPlans3.getName() : null), 0, false, 2, null);
    }

    @Override // di.a
    public void t(RecommendInfo recommendInfo) {
        String id2;
        super.t(recommendInfo);
        ri.c cVar = ri.c.f74535a;
        String strO = O();
        String sceneId = getSceneId();
        AdPlans adPlans = this.f41946l;
        if (adPlans == null || (id2 = adPlans.getId()) == null) {
            id2 = "";
        }
        AdPlans adPlans2 = this.f41946l;
        cVar.g((128 & 1) != 0 ? "" : strO, sceneId, id2, 102, "", 6, (128 & 64) != 0 ? false : false, (128 & 128) != 0 ? MapsKt.h() : null, recommendInfo, (128 & 512) != 0 ? null : null, (128 & 1024) != 0 ? null : null, (128 & 2048) != 0 ? null : "", adPlans2 != null ? adPlans2.getAdSource() : null);
        List<BiddingWrapperIconBean> list = this.f41940f;
        if (list != null) {
            for (BiddingWrapperIconBean biddingWrapperIconBean : list) {
                RecommendInfo recommendInfo2 = biddingWrapperIconBean.getRecommendInfo();
                if (Intrinsics.c(recommendInfo2 != null ? Long.valueOf(recommendInfo2.getId()) : null, recommendInfo != null ? Long.valueOf(recommendInfo.getId()) : null)) {
                    biddingWrapperIconBean.setDisplay(true);
                }
            }
        }
        oi.a aVar = oi.a.f71022a;
        String classTag = getClassTag();
        String sceneId2 = getSceneId();
        AdPlans adPlans3 = this.f41946l;
        oi.a.i(aVar, classTag + " --> sceneId = " + sceneId2 + " --> onBiddingWrapperAdDisplay() --> name = " + (adPlans3 != null ? adPlans3.getName() : null), 0, false, 2, null);
    }

    @Override // di.a
    public void u(RecommendInfo recommendInfo) {
        super.u(recommendInfo);
        oi.a aVar = oi.a.f71022a;
        String classTag = getClassTag();
        String sceneId = getSceneId();
        AdPlans adPlans = this.f41946l;
        oi.a.i(aVar, classTag + " --> sceneId = " + sceneId + " --> onIconShowError() --> name = " + (adPlans != null ? adPlans.getName() : null), 0, false, 2, null);
    }

    @Override // di.a
    public void v(List list) {
        super.v(list);
        oi.a.i(oi.a.f71022a, getClassTag() + " --> onPSDistributionReady() --> mSceneId = " + getSceneId() + " --> data.size = " + (list != null ? Integer.valueOf(list.size()) : null), 0, false, 2, null);
        this.f41939e.clear();
        if (list != null) {
            this.f41939e.addAll(list);
        }
        if (this.f41938d.isEmpty()) {
            return;
        }
        L().post(new Runnable() { // from class: com.transsion.ad.bidding.icon.e
            @Override // java.lang.Runnable
            public final void run() {
                BiddingIconAdManager.W(this.f41957a);
            }
        });
    }
}
