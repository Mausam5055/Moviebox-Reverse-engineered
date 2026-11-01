package com.transsion.ad.bidding.base;

import android.app.Activity;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.transsion.ad.hi.HiSavanaAdManager;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import com.transsion.ad.scene.SceneInterceptManager;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AbsBiddingInterceptHiSavanaAdManager extends x implements oi.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private di.a f41852d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f41853e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map f41854f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AtomicBoolean f41855g = new AtomicBoolean(false);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AdditionalInfo f41856h;

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean k(List list) {
        List list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return false;
        }
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            if (AdPlanSourceManager.f42166a.e((AdPlans) it.next())) {
                return true;
            }
        }
        return false;
    }

    private final boolean n(String str) {
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

    private final Integer t() {
        int iF = f();
        if (iF != 3) {
            return iF != 4 ? null : 3;
        }
        return 5;
    }

    public final void b() {
        ce.b bVarE = e();
        if (bVarE == null || !bVarE.hasAd()) {
            l();
        }
    }

    public final void c(di.a aVar) {
        di.a aVar2 = this.f41852d;
        if (aVar2 != null && Intrinsics.c(aVar2, aVar)) {
            p(null);
            oi.b.a.c(this, 3, "destroy() --> 移除监听", null, false, 4, null);
        }
    }

    public final void d(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new AbsBiddingInterceptHiSavanaAdManager$enterScene$1(this, sceneId, null), 3, null);
    }

    public abstract ce.b e();

    public abstract int f();

    public final AdditionalInfo g() {
        ce.b bVarE = e();
        if (bVarE != null && !bVarE.hasAd() && f() != 5) {
            return null;
        }
        Integer numT = t();
        if (numT != null) {
            int iIntValue = numT.intValue();
            AdditionalInfo additionalInfo = this.f41856h;
            if (additionalInfo != null) {
                ce.b bVarE2 = e();
                additionalInfo.setEcpm(bVarE2 != null ? Double.valueOf(bVarE2.getTopPrice(iIntValue)) : null);
            }
        }
        return this.f41856h;
    }

    @Override // oi.b
    public String getClassTag() {
        return oi.b.a.a(this);
    }

    @Override // oi.b
    /* JADX INFO: renamed from: getSceneId */
    public String getMSceneId() {
        return "";
    }

    public final di.a h() {
        return this.f41852d;
    }

    public final String i() {
        return this.f41853e;
    }

    public final Boolean j() {
        ce.b bVarE = e();
        if (bVarE != null) {
            return Boolean.valueOf(bVarE.hasAd());
        }
        return null;
    }

    public final void l() {
        if (!HiSavanaAdManager.f42117a.i() && f() != 5) {
            di.a aVar = this.f41852d;
            if (aVar != null) {
                aVar.onLoadFailure(new TAdErrorCode(103, "广告SDK没有初始化"), new AdditionalInfo());
                return;
            }
            return;
        }
        if (this.f41855g.get()) {
            di.a aVar2 = this.f41852d;
            if (aVar2 != null) {
                aVar2.onLoadFailure(new TAdErrorCode(103, "当前正在展示Hi广告"), new AdditionalInfo());
                return;
            }
            return;
        }
        if (e() == null) {
            di.a aVar3 = this.f41852d;
            if (aVar3 != null) {
                aVar3.onLoadFailure(new TAdErrorCode(103, "getAdInstance() == null"), new AdditionalInfo());
                return;
            }
            return;
        }
        ce.b bVarE = e();
        if (bVarE != null) {
            bVarE.loadAd();
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object m(String str, Map map, Continuation continuation) throws Throwable {
        AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1 absBiddingInterceptHiSavanaAdManager$preLoadAd$1;
        if (continuation instanceof AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1) {
            absBiddingInterceptHiSavanaAdManager$preLoadAd$1 = (AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1) continuation;
            int i11 = absBiddingInterceptHiSavanaAdManager$preLoadAd$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                absBiddingInterceptHiSavanaAdManager$preLoadAd$1.label = i11 - Integer.MIN_VALUE;
            } else {
                absBiddingInterceptHiSavanaAdManager$preLoadAd$1 = new AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1(this, continuation);
            }
        } else {
            absBiddingInterceptHiSavanaAdManager$preLoadAd$1 = new AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1(this, continuation);
        }
        Object objA = absBiddingInterceptHiSavanaAdManager$preLoadAd$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = absBiddingInterceptHiSavanaAdManager$preLoadAd$1.label;
        if (i12 == 0) {
            ResultKt.b(objA);
            if (!n(str)) {
                onLog(3, getClassTag() + " --> sceneId = " + str + " --> 预请求开关关闭", getLogTag(), false);
                return Unit.f67061a;
            }
            if (!HiSavanaAdManager.f42117a.i()) {
                return Unit.f67061a;
            }
            SceneInterceptManager sceneInterceptManager = SceneInterceptManager.f42200a;
            absBiddingInterceptHiSavanaAdManager$preLoadAd$1.L$0 = str;
            absBiddingInterceptHiSavanaAdManager$preLoadAd$1.L$1 = map;
            absBiddingInterceptHiSavanaAdManager$preLoadAd$1.label = 1;
            objA = sceneInterceptManager.a(str, absBiddingInterceptHiSavanaAdManager$preLoadAd$1);
            if (objA == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            map = (Map) absBiddingInterceptHiSavanaAdManager$preLoadAd$1.L$1;
            str = (String) absBiddingInterceptHiSavanaAdManager$preLoadAd$1.L$0;
            ResultKt.b(objA);
        }
        if (!((Boolean) ((Pair) objA).getFirst()).booleanValue() && !com.transsion.ad.scene.c.b(com.transsion.ad.scene.c.f42203a, str, false, 2, null)) {
            ce.b bVarE = e();
            if (bVarE != null && bVarE.hasAd()) {
                return Unit.f67061a;
            }
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2(str, map, this, null), 3, null);
            return Unit.f67061a;
        }
        return Unit.f67061a;
    }

    public abstract void o();

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onClick(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onClick(tAdNativeInfo, additionalInfo);
        di.a aVar = this.f41852d;
        if (aVar != null) {
            aVar.onClick(tAdNativeInfo, additionalInfo);
        }
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onClosed(int i11) {
        super.onClosed(i11);
        this.f41855g.set(false);
        di.a aVar = this.f41852d;
        if (aVar != null) {
            aVar.onClosed(i11);
        }
        this.f41852d = null;
        o();
        if (f() == 5) {
            return;
        }
        l();
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onLoadFailure(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onLoadFailure(tAdErrorCode, additionalInfo);
        this.f41855g.set(false);
        di.a aVar = this.f41852d;
        if (aVar != null) {
            aVar.onLoadFailure(tAdErrorCode, additionalInfo);
        }
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onLoadSuccess(AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onLoadSuccess(additionalInfo);
        this.f41856h = additionalInfo;
        di.a aVar = this.f41852d;
        if (aVar != null) {
            aVar.onLoadSuccess(additionalInfo);
        }
    }

    @Override // oi.b
    public void onLog(int i11, String str, String str2, boolean z10) {
        oi.b.a.b(this, i11, str, str2, z10);
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onRewarded() {
        super.onRewarded();
        di.a aVar = this.f41852d;
        if (aVar != null) {
            aVar.onRewarded();
        }
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onShow(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onShow(tAdNativeInfo, additionalInfo);
        this.f41855g.set(true);
        di.a aVar = this.f41852d;
        if (aVar != null) {
            aVar.onShow(tAdNativeInfo, additionalInfo);
        }
        this.f41856h = null;
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onShowError(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onShowError(tAdErrorCode, additionalInfo);
        this.f41855g.set(false);
        di.a aVar = this.f41852d;
        if (aVar != null) {
            aVar.onShowError(tAdErrorCode, additionalInfo);
        }
    }

    public final AbsBiddingInterceptHiSavanaAdManager p(di.a aVar) {
        this.f41852d = aVar;
        return this;
    }

    public final void q(String str) {
        this.f41853e = str;
    }

    public abstract void r(Activity activity, String str, Integer num, Map map);

    public final void s(Activity activity, Integer num, String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        if (activity == null) {
            di.a aVar = this.f41852d;
            if (aVar != null) {
                aVar.onShowError(new TAdErrorCode(103, "activity is null"), new AdditionalInfo());
                return;
            }
            return;
        }
        if (this.f41855g.get()) {
            di.a aVar2 = this.f41852d;
            if (aVar2 != null) {
                aVar2.onShowError(new TAdErrorCode(103, "当前正在展示Hi广告"), new AdditionalInfo());
                return;
            }
            return;
        }
        if (f() == 5) {
            r(activity, sceneId, num, this.f41854f);
            return;
        }
        ce.b bVarE = e();
        if (bVarE != null && bVarE.hasAd()) {
            r(activity, sceneId, num, this.f41854f);
            return;
        }
        di.a aVar3 = this.f41852d;
        if (aVar3 != null) {
            aVar3.onShowError(new TAdErrorCode(103, "当前还没有广告"), new AdditionalInfo());
        }
        p(null);
        l();
    }
}
