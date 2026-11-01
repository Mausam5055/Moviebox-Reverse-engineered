package com.transsion.ad.ps.distribute;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.ad.db.MbAdDatabase;
import com.transsion.ad.db.pslink.PsLinkAdPlan;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import com.transsion.ad.monopoly.plan.AdPlanUtil;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import mi.l;

/* JADX INFO: loaded from: classes5.dex */
public final class PsDbManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PsDbManager f42189a = new PsDbManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f42190b = LazyKt.b(new Function0() { // from class: com.transsion.ad.ps.distribute.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PsDbManager.m();
        }
    });

    private PsDbManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String e() {
        String simpleName = PsDbManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final l i() {
        return (l) f42190b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final l m() {
        MbAdDatabase.Companion nVar = MbAdDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return nVar.b(applicationA).A0();
    }

    public final Object c(String str, List list, Continuation continuation) {
        Object objD = i().d(str, list, continuation);
        return objD == IntrinsicsKt.f() ? objD : Unit.f67061a;
    }

    public final Object d(Continuation continuation) {
        return i().a(continuation);
    }

    public final Object f(String str, Continuation continuation) {
        return i().c(String.valueOf(str), continuation);
    }

    public final Object g(int i11, Continuation continuation) {
        return i().f(i11, continuation);
    }

    public final Object h(String str, Continuation continuation) {
        return i().g(str, continuation);
    }

    public final Object j(PsLinkAdPlan psLinkAdPlan, Continuation continuation) {
        Object objB = i().b(psLinkAdPlan, continuation);
        return objB == IntrinsicsKt.f() ? objB : Unit.f67061a;
    }

    public final void k(AdPlans adPlans) {
        AdMaterialList adMaterialListA;
        PsLinkAdPlan psLinkAdPlan;
        AdPlanSourceManager adPlanSourceManager = AdPlanSourceManager.f42166a;
        if ((!adPlanSourceManager.j(adPlans) && !adPlanSourceManager.l(adPlans)) || (adMaterialListA = AdPlanUtil.f42167a.a(adPlans)) == null || (psLinkAdPlan = adMaterialListA.getPsLinkAdPlan()) == null) {
            return;
        }
        k.d(o0.a(y0.b()), null, null, new PsDbManager$onBiddingBuyOutClick$1(psLinkAdPlan, null), 3, null);
    }

    public final void l(AdPlans adPlans) {
        AdMaterialList adMaterialListA;
        PsLinkAdPlan psLinkAdPlan;
        AdPlanSourceManager adPlanSourceManager = AdPlanSourceManager.f42166a;
        if ((!adPlanSourceManager.j(adPlans) && !adPlanSourceManager.l(adPlans)) || (adMaterialListA = AdPlanUtil.f42167a.a(adPlans)) == null || (psLinkAdPlan = adMaterialListA.getPsLinkAdPlan()) == null) {
            return;
        }
        k.d(o0.a(y0.b()), null, null, new PsDbManager$onBiddingBuyOutDisplay$1(psLinkAdPlan, null), 3, null);
    }

    public final Object n(PsLinkAdPlan psLinkAdPlan, Continuation continuation) {
        Object objE;
        return (psLinkAdPlan == null || (objE = f42189a.i().e(psLinkAdPlan, continuation)) != IntrinsicsKt.f()) ? Unit.f67061a : objE;
    }
}
