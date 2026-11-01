package com.transsion.ad.bidding.icon;

import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.hisavana.mediation.ad.TNativeAd;
import com.transsion.ad.hi.HiSavanaAdManager;
import com.transsion.ad.scene.SceneInterceptManager;
import java.util.HashMap;
import java.util.Map;
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
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class BiddingHisavanaIconProvider implements oi.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f41932d = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Lazy f41933e = LazyKt.b(new Function0() { // from class: com.transsion.ad.bidding.icon.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return BiddingHisavanaIconProvider.f();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f41934a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f41935b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TNativeAd f41936c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final HashMap a() {
            return (HashMap) BiddingHisavanaIconProvider.f41933e.getValue();
        }

        public final BiddingHisavanaIconProvider b(String str) {
            String strH;
            if (TextUtils.isEmpty(str) || (strH = com.transsion.ad.scene.a.f42201a.h(str)) == null) {
                return null;
            }
            BiddingHisavanaIconProvider biddingHisavanaIconProvider = (BiddingHisavanaIconProvider) a().get(strH);
            if (biddingHisavanaIconProvider != null) {
                return biddingHisavanaIconProvider;
            }
            BiddingHisavanaIconProvider biddingHisavanaIconProvider2 = new BiddingHisavanaIconProvider();
            biddingHisavanaIconProvider2.i(strH);
            a().put(strH, biddingHisavanaIconProvider2);
            return biddingHisavanaIconProvider2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ce.b e() {
        if (this.f41936c == null) {
            this.f41936c = new TNativeAd(Utils.a(), this.f41934a);
            oi.a.f71022a.n("ad_ic", "============= " + getClassTag() + " --> loadIconAd() --> mPlacementId = " + this.f41934a + " --> create Icon TNativeAd() =================== ", 5, false);
        }
        return this.f41936c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HashMap f() {
        return new HashMap();
    }

    private final boolean h(String str) {
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

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object g(String str, Map map, Continuation continuation) throws Throwable {
        BiddingHisavanaIconProvider$preloadAd$1 biddingHisavanaIconProvider$preloadAd$1;
        if (continuation instanceof BiddingHisavanaIconProvider$preloadAd$1) {
            biddingHisavanaIconProvider$preloadAd$1 = (BiddingHisavanaIconProvider$preloadAd$1) continuation;
            int i11 = biddingHisavanaIconProvider$preloadAd$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                biddingHisavanaIconProvider$preloadAd$1.label = i11 - Integer.MIN_VALUE;
            } else {
                biddingHisavanaIconProvider$preloadAd$1 = new BiddingHisavanaIconProvider$preloadAd$1(this, continuation);
            }
        } else {
            biddingHisavanaIconProvider$preloadAd$1 = new BiddingHisavanaIconProvider$preloadAd$1(this, continuation);
        }
        Object objA = biddingHisavanaIconProvider$preloadAd$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = biddingHisavanaIconProvider$preloadAd$1.label;
        if (i12 == 0) {
            ResultKt.b(objA);
            if (!h(str)) {
                onLog(3, getClassTag() + " --> sceneId = " + str + " --> 预请求开关关闭", "ad_ic", false);
                return Unit.f67061a;
            }
            if (!HiSavanaAdManager.f42117a.i()) {
                return Unit.f67061a;
            }
            SceneInterceptManager sceneInterceptManager = SceneInterceptManager.f42200a;
            biddingHisavanaIconProvider$preloadAd$1.L$0 = str;
            biddingHisavanaIconProvider$preloadAd$1.L$1 = map;
            biddingHisavanaIconProvider$preloadAd$1.label = 1;
            objA = sceneInterceptManager.a(str, biddingHisavanaIconProvider$preloadAd$1);
            if (objA == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            map = (Map) biddingHisavanaIconProvider$preloadAd$1.L$1;
            str = (String) biddingHisavanaIconProvider$preloadAd$1.L$0;
            ResultKt.b(objA);
        }
        if (!((Boolean) ((Pair) objA).getFirst()).booleanValue() && !com.transsion.ad.scene.c.b(com.transsion.ad.scene.c.f42203a, str, false, 2, null)) {
            ce.b bVarE = e();
            if (bVarE != null && bVarE.hasAd()) {
                return Unit.f67061a;
            }
            k.d(o0.a(y0.b()), null, null, new BiddingHisavanaIconProvider$preloadAd$2(str, this, map, null), 3, null);
            return Unit.f67061a;
        }
        return Unit.f67061a;
    }

    @Override // oi.b
    public String getClassTag() {
        return oi.b.a.a(this);
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_ic";
    }

    @Override // oi.b
    /* JADX INFO: renamed from: getSceneId */
    public String getMSceneId() {
        String str = this.f41935b;
        return str == null ? "" : str;
    }

    public final void i(String str) {
        this.f41934a = str;
    }

    @Override // oi.b
    public void onLog(int i11, String str, String str2, boolean z10) {
        oi.b.a.b(this, i11, str, str2, z10);
    }
}
