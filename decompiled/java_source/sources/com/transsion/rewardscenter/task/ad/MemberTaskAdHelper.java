package com.transsion.rewardscenter.task.ad;

import android.content.Context;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.hisavana.common.bean.TAdErrorCode;
import com.tn.lib.widget.R$string;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.nativead.BiddingSspNativeManager;
import com.transsion.ad.bidding.video.BiddingVideoManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class MemberTaskAdHelper extends BaseStageTaskAdHelper {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final a f51037r = new a(null);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f51038s = 8;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final Lazy f51039t = LazyKt.b(new Function0() { // from class: com.transsion.rewardscenter.task.ad.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Integer.valueOf(MemberTaskAdHelper.b0());
        }
    });

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final Lazy f51040u = LazyKt.b(new Function0() { // from class: com.transsion.rewardscenter.task.ad.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Integer.valueOf(MemberTaskAdHelper.a0());
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Context f51041g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final n0 f51042h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private BiddingSspNativeManager f51043i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Function1 f51044j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private BiddingSspNativeManager f51045k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Function1 f51046l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private BiddingVideoManager f51047m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Function1 f51048n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final c f51049o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final b f51050p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final MemberTaskAdHelper$rewardAdListener$1 f51051q;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return ((Number) MemberTaskAdHelper.f51040u.getValue()).intValue();
        }

        public final int b() {
            return ((Number) MemberTaskAdHelper.f51039t.getValue()).intValue();
        }
    }

    public static final class b extends di.a {
        b() {
        }

        @Override // di.a
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            Function1 function1 = MemberTaskAdHelper.this.f51046l;
            if (function1 != null) {
                function1.invoke(CollectionsKt.l());
            }
        }

        @Override // di.a
        public void k(List list) {
            Function1 function1;
            super.k(list);
            if (list != null) {
                MemberTaskAdHelper memberTaskAdHelper = MemberTaskAdHelper.this;
                List listW = memberTaskAdHelper.W("MemberTaskRegularNativeScene", list, Boolean.FALSE);
                ArrayList arrayList = new ArrayList(CollectionsKt.v(listW, 10));
                Iterator it = listW.iterator();
                while (it.hasNext()) {
                    arrayList.add(x((BiddingIntermediateMaterialBean) it.next()));
                }
                boolean z10 = memberTaskAdHelper.u() <= 0;
                boolean z11 = memberTaskAdHelper.t() <= 0;
                if (z10) {
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj : arrayList) {
                        if (!((v.a) obj).k()) {
                            arrayList2.add(obj);
                        }
                    }
                    arrayList = arrayList2;
                }
                if (z11) {
                    ArrayList arrayList3 = new ArrayList();
                    for (Object obj2 : arrayList) {
                        if (((v.a) obj2).k()) {
                            arrayList3.add(obj2);
                        }
                    }
                    arrayList = arrayList3;
                }
                if (arrayList.isEmpty() || (function1 = memberTaskAdHelper.f51046l) == null) {
                    return;
                }
                function1.invoke(arrayList);
            }
        }

        public final v.a x(BiddingIntermediateMaterialBean bean) {
            Intrinsics.h(bean, "bean");
            return new v.a(bean, null, null, null, null, MemberTaskAdHelper.this.g(bean), MemberTaskAdHelper.this.i(bean), false, 0L, TTAdConstant.VIDEO_URL_CODE, null);
        }
    }

    public static final class c extends di.a {
        c() {
        }

        @Override // di.a
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            Function1 function1 = MemberTaskAdHelper.this.f51044j;
            if (function1 != null) {
                function1.invoke(CollectionsKt.l());
            }
        }

        @Override // di.a
        public void k(List list) {
            super.k(list);
            if (list != null) {
                MemberTaskAdHelper memberTaskAdHelper = MemberTaskAdHelper.this;
                List listW = memberTaskAdHelper.W("MemberTaskStageNativeScene", list, Boolean.TRUE);
                Function1 function1 = memberTaskAdHelper.f51044j;
                if (function1 != null) {
                    List list2 = listW;
                    ArrayList arrayList = new ArrayList(CollectionsKt.v(list2, 10));
                    Iterator it = list2.iterator();
                    while (it.hasNext()) {
                        arrayList.add(x((BiddingIntermediateMaterialBean) it.next()));
                    }
                    function1.invoke(arrayList);
                }
            }
        }

        public final v.c x(BiddingIntermediateMaterialBean bean) {
            Intrinsics.h(bean, "bean");
            return new v.c(bean, null, null, null, null, MemberTaskAdHelper.this.g(bean), false, 0L, 0L, 478, null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.transsion.rewardscenter.task.ad.MemberTaskAdHelper$rewardAdListener$1] */
    public MemberTaskAdHelper(Context context, n0 n0Var) {
        super(context, n0Var);
        Intrinsics.h(context, "context");
        this.f51041g = context;
        this.f51042h = n0Var;
        this.f51049o = new c();
        this.f51050p = new b();
        this.f51051q = new di.a() { // from class: com.transsion.rewardscenter.task.ad.MemberTaskAdHelper$rewardAdListener$1
            @Override // di.a
            public void i(TAdErrorCode tAdErrorCode) {
                super.i(tAdErrorCode);
                String string = this.f51054d.f51041g.getString(R$string.common_failed);
                Intrinsics.g(string, "getString(...)");
                com.transsion.rewardscenter.utils.p.a(false, string);
                Function1 function1 = this.f51054d.f51048n;
                if (function1 != null) {
                    function1.invoke(Boolean.FALSE);
                }
            }

            @Override // di.a
            public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.j(biddingIntermediateMaterialBean);
                n0 n0Var2 = this.f51054d.f51042h;
                if (n0Var2 != null) {
                    kotlinx.coroutines.k.d(n0Var2, null, null, new MemberTaskAdHelper$rewardAdListener$1$onBiddingLoad$1(this.f51054d, biddingIntermediateMaterialBean, null), 3, null);
                }
            }

            @Override // di.a
            public void o(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.o(biddingIntermediateMaterialBean);
                if (biddingIntermediateMaterialBean != null) {
                    MemberTaskAdHelper memberTaskAdHelper = this.f51054d;
                    BaseStageTaskAdHelper.A(memberTaskAdHelper, new v.b(null, 1, null), null, 2, null);
                    Function1 function1 = memberTaskAdHelper.f51048n;
                    if (function1 != null) {
                        function1.invoke(Boolean.TRUE);
                    }
                }
            }
        };
    }

    private final void T() {
        BiddingSspNativeManager biddingSspNativeManager = this.f51045k;
        if (biddingSspNativeManager != null) {
            biddingSspNativeManager.N0(null);
        }
        BiddingSspNativeManager biddingSspNativeManager2 = this.f51045k;
        if (biddingSspNativeManager2 != null) {
            biddingSspNativeManager2.V();
        }
        this.f51045k = null;
    }

    private final void U() {
        BiddingVideoManager biddingVideoManager = this.f51047m;
        if (biddingVideoManager != null) {
            biddingVideoManager.N0(null);
        }
        BiddingVideoManager biddingVideoManager2 = this.f51047m;
        if (biddingVideoManager2 != null) {
            biddingVideoManager2.V();
        }
        this.f51047m = null;
    }

    private final void V() {
        BiddingSspNativeManager biddingSspNativeManager = this.f51043i;
        if (biddingSspNativeManager != null) {
            biddingSspNativeManager.N0(null);
        }
        BiddingSspNativeManager biddingSspNativeManager2 = this.f51043i;
        if (biddingSspNativeManager2 != null) {
            biddingSspNativeManager2.V();
        }
        this.f51043i = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List W(String str, List list, Boolean bool) {
        Iterator it = list.iterator();
        while (true) {
            String str2 = "Regular";
            if (!it.hasNext()) {
                break;
            }
            BiddingIntermediateMaterialBean biddingIntermediateMaterialBean = (BiddingIntermediateMaterialBean) it.next();
            lg.a.C0828a c0828a = lg.a.f68839a;
            if (Intrinsics.c(bool, Boolean.TRUE)) {
                str2 = "Stage";
            }
            lg.a.C0828a.f(c0828a, "StageTaskAd", "MemberTaskAdHelper ----> " + str2 + " loaded item, packageName: " + g(biddingIntermediateMaterialBean), false, 4, null);
        }
        List listI0 = CollectionsKt.I0(list, new Comparator() { // from class: com.transsion.rewardscenter.task.ad.MemberTaskAdHelper$filterAds$$inlined$sortedByDescending$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t11, T t12) {
                Double ecpm = ((BiddingIntermediateMaterialBean) t12).getEcpm();
                Double dValueOf = Double.valueOf(ecpm != null ? ecpm.doubleValue() : 0.0d);
                Double ecpm2 = ((BiddingIntermediateMaterialBean) t11).getEcpm();
                return ComparisonsKt.d(dValueOf, Double.valueOf(ecpm2 != null ? ecpm2.doubleValue() : 0.0d));
            }
        });
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listI0) {
            if (hashSet.add(g((BiddingIntermediateMaterialBean) obj))) {
                arrayList.add(obj);
            }
        }
        ArrayList<BiddingIntermediateMaterialBean> arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (!u.f51122a.m(str, g((BiddingIntermediateMaterialBean) obj2))) {
                arrayList2.add(obj2);
            }
        }
        for (BiddingIntermediateMaterialBean biddingIntermediateMaterialBean2 : arrayList2) {
            lg.a.C0828a c0828a2 = lg.a.f68839a;
            String str3 = Intrinsics.c(bool, Boolean.TRUE) ? "Stage" : "Regular";
            lg.a.C0828a.f(c0828a2, "StageTaskAd", "MemberTaskAdHelper ----> " + str3 + " filtered item, packageName: " + g(biddingIntermediateMaterialBean2), false, 4, null);
        }
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int a0() {
        return com.transsion.ad.scene.a.f42201a.g("MemberTaskRegularNativeScene");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int b0() {
        return com.transsion.ad.scene.a.f42201a.g("MemberTaskStageNativeScene");
    }

    public final void Q(v.a data) {
        Intrinsics.h(data, "data");
        if (data.f()) {
            return;
        }
        data.n(true);
        lg.a.C0828a.f(lg.a.f68839a, "StageTaskAd", "MemberTaskAdHelper ----> bindRegularNativeAd", false, 4, null);
        if (this.f51045k == null) {
            R();
        }
        data.p(new NativeWrapperAdView(this.f51041g, null, 2, null));
        data.l(new d0(this.f51041g));
        data.q(new w(this.f51041g));
        NativeWrapperAdView nativeWrapperAdViewH = data.h();
        if (nativeWrapperAdViewH != null) {
            nativeWrapperAdViewH.bindSspNativeView(this.f51045k, data.d(), data.j(), data.c());
        }
    }

    public final void R() {
        BiddingSspNativeManager biddingSspNativeManager = new BiddingSspNativeManager();
        this.f51045k = biddingSspNativeManager;
        biddingSspNativeManager.O0("MemberTaskRegularNativeScene");
        biddingSspNativeManager.N0(this.f51050p);
    }

    public final void S() {
        BiddingSspNativeManager biddingSspNativeManager = new BiddingSspNativeManager();
        this.f51043i = biddingSspNativeManager;
        biddingSspNativeManager.O0("MemberTaskStageNativeScene");
        biddingSspNativeManager.N0(this.f51049o);
    }

    public final void X(Function1 callback) {
        Intrinsics.h(callback, "callback");
        this.f51046l = callback;
        if (u() > 0 || t() > 0) {
            T();
            R();
            n0 n0Var = this.f51042h;
            if (n0Var != null) {
                kotlinx.coroutines.k.d(n0Var, y0.b(), null, new MemberTaskAdHelper$loadRegularAd$1(this, null), 2, null);
            }
        }
    }

    public final void Y(Function1 callback) {
        Intrinsics.h(callback, "callback");
        this.f51048n = callback;
        U();
        n0 n0Var = this.f51042h;
        if (n0Var != null) {
            kotlinx.coroutines.k.d(n0Var, y0.b(), null, new MemberTaskAdHelper$loadRewardAd$1(this, null), 2, null);
        }
    }

    public final void Z(Function1 callback) {
        Intrinsics.h(callback, "callback");
        this.f51044j = callback;
        if (v() <= 0) {
            return;
        }
        V();
        n0 n0Var = this.f51042h;
        if (n0Var != null) {
            kotlinx.coroutines.k.d(n0Var, y0.b(), null, new MemberTaskAdHelper$loadStageAd$1(this, null), 2, null);
        }
    }

    @Override // com.transsion.rewardscenter.task.ad.BaseStageTaskAdHelper
    public void c(v.c data) {
        Intrinsics.h(data, "data");
        if (data.f()) {
            return;
        }
        data.n(true);
        if (this.f51043i == null) {
            S();
        }
        data.p(new NativeWrapperAdView(this.f51041g, null, 2, null));
        data.l(new d0(this.f51041g));
        data.r(new w(this.f51041g));
        NativeWrapperAdView nativeWrapperAdViewH = data.h();
        if (nativeWrapperAdViewH != null) {
            nativeWrapperAdViewH.bindSspNativeView(this.f51043i, data.d(), data.k(), data.c());
        }
    }

    @Override // com.transsion.rewardscenter.task.ad.BaseStageTaskAdHelper
    public void d() {
        super.d();
        BiddingSspNativeManager biddingSspNativeManager = this.f51043i;
        if (biddingSspNativeManager != null) {
            biddingSspNativeManager.N0(null);
        }
        this.f51043i = null;
        BiddingSspNativeManager biddingSspNativeManager2 = this.f51045k;
        if (biddingSspNativeManager2 != null) {
            biddingSspNativeManager2.N0(null);
        }
        this.f51045k = null;
        U();
        this.f51044j = null;
        this.f51046l = null;
        this.f51048n = null;
    }
}
