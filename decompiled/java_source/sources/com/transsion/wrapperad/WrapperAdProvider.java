package com.transsion.wrapperad;

import ak.k;
import android.app.Activity;
import android.os.Build;
import android.text.TextUtils;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.net.dns.or.CacheIpPool;
import com.transsion.ad.MBAd;
import com.transsion.ad.strategy.AdOverridePendingTransitionManager;
import com.transsion.ad.strategy.AppManager;
import com.transsion.baselib.report.l;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.MemberSource;
import com.transsion.web.api.WebConstants;
import com.transsion.web.api.WebPageIdentity;
import com.transsion.wrapperad.h5.H5InterstitialAdProvider;
import com.transsion.wrapperad.h5.H5VideoAdProvider;
import com.transsion.wrapperadapi.H5AdStateEnum;
import com.transsion.wrapperadapi.IWrapperAdApi;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i;
import kotlinx.coroutines.y0;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class WrapperAdProvider implements IWrapperAdApi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f58140a = new a(null);

    /* JADX INFO: loaded from: classes7.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b implements hi.a {
        b() {
        }

        @Override // hi.a
        public void a(String str, AdOverridePendingTransitionManager.AdOverridePendingTransitionEnum adOverridePendingTransitionEnum) {
            Pair pairA = AdOverridePendingTransitionManager.f42211a.a(adOverridePendingTransitionEnum);
            Activity activityO = l.f43359a.o();
            Navigator navigatorK = TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", str).K(WebConstants.PAGE_FROM, "MB_AD");
            if (activityO == null || activityO.isFinishing() || activityO.isDestroyed()) {
                k.p(navigatorK);
                return;
            }
            if (pairA != null) {
                activityO.overridePendingTransition(((Number) pairA.getFirst()).intValue(), ((Number) pairA.getSecond()).intValue());
            }
            Navigator.x(navigatorK, activityO, null, 2, null);
        }

        @Override // hi.a
        public void b(String str) {
            Object objM454constructorimpl;
            if (str != null) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    if (Build.VERSION.SDK_INT < 36) {
                        com.transsion.lib_web.cache.a.f46142a.f(str);
                    }
                    objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
                }
                Result.m453boximpl(objM454constructorimpl);
            }
        }

        @Override // hi.a
        public void c(String sceneId) {
            IMemberApi iMemberApi;
            Intrinsics.h(sceneId, "sceneId");
            Activity activityB = com.blankj.utilcode.util.a.b();
            if (activityB == null || (iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0])) == null) {
                return;
            }
            iMemberApi.a(activityB, MemberSource.SOURCE_AD, null, false, sceneId);
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00bf A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.transsion.wrapperadapi.IWrapperAdApi
    public Object a(Continuation continuation) throws Throwable {
        WrapperAdProvider$initAd$1 wrapperAdProvider$initAd$1;
        a2 a2VarC;
        WrapperAdProvider$initAd$4 wrapperAdProvider$initAd$4;
        if (continuation instanceof WrapperAdProvider$initAd$1) {
            wrapperAdProvider$initAd$1 = (WrapperAdProvider$initAd$1) continuation;
            int i11 = wrapperAdProvider$initAd$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                wrapperAdProvider$initAd$1.label = i11 - Integer.MIN_VALUE;
            } else {
                wrapperAdProvider$initAd$1 = new WrapperAdProvider$initAd$1(this, continuation);
            }
        } else {
            wrapperAdProvider$initAd$1 = new WrapperAdProvider$initAd$1(this, continuation);
        }
        Object obj = wrapperAdProvider$initAd$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = wrapperAdProvider$initAd$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                ResultKt.b(obj);
            } else if (i12 == 2) {
                ResultKt.b(obj);
                a2VarC = y0.c();
                wrapperAdProvider$initAd$4 = new WrapperAdProvider$initAd$4(null);
                wrapperAdProvider$initAd$1.label = 3;
                if (i.g(a2VarC, wrapperAdProvider$initAd$4, wrapperAdProvider$initAd$1) == objF) {
                    return objF;
                }
            } else {
                if (i12 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        a2 a2VarC2 = y0.c();
        WrapperAdProvider$initAd$2 wrapperAdProvider$initAd$2 = new WrapperAdProvider$initAd$2(null);
        wrapperAdProvider$initAd$1.label = 1;
        if (i.g(a2VarC2, wrapperAdProvider$initAd$2, wrapperAdProvider$initAd$1) == objF) {
            return objF;
        }
        MBAd mBAd = MBAd.f41751a;
        MBAd.a aVarA = new MBAd.b().g("2301069UF9YjuO").d(false).i(false).e(AppManager.AppEnum.APP_MOVIE_BOX).h("HotStartScene").c("/wefeed-mobile-bff/ad/config").b(CacheIpPool.f40825a.l()).j(true).k(true).l(true).m(true).f(new b()).a();
        wrapperAdProvider$initAd$1.label = 2;
        if (mBAd.e(aVarA, wrapperAdProvider$initAd$1) == objF) {
            return objF;
        }
        a2VarC = y0.c();
        wrapperAdProvider$initAd$4 = new WrapperAdProvider$initAd$4(null);
        wrapperAdProvider$initAd$1.label = 3;
        if (i.g(a2VarC, wrapperAdProvider$initAd$4, wrapperAdProvider$initAd$1) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }

    @Override // com.transsion.wrapperadapi.IWrapperAdApi
    public void b(String str, jy.a callback) {
        Object objM454constructorimpl;
        Intrinsics.h(callback, "callback");
        if (TextUtils.isEmpty(str)) {
            callback.onAdStateCallback(H5AdStateEnum.MB_H5_AD_STATE_ON_FAIL.getValue(), "adConfig is empty");
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            if (str == null) {
                str = "{}";
            }
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("sceneId");
            if (TextUtils.isEmpty(strOptString)) {
                callback.onAdStateCallback(H5AdStateEnum.MB_H5_AD_STATE_ON_FAIL.getValue(), "sceneId is empty");
                return;
            }
            int iOptInt = jSONObject.optInt("adType");
            if (iOptInt == 3) {
                H5VideoAdProvider.f58169a.h(strOptString, callback);
            } else if (iOptInt == 4) {
                H5InterstitialAdProvider.f58165a.f(strOptString, callback);
            }
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
            if (thM457exceptionOrNullimpl == null) {
                return;
            }
            callback.onAdStateCallback(H5AdStateEnum.MB_H5_AD_STATE_ON_FAIL.getValue(), thM457exceptionOrNullimpl.getMessage());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    @Override // com.transsion.wrapperadapi.IWrapperAdApi
    public Object c(Continuation continuation) {
        Object objF = MBAd.f41751a.f("/wefeed-mobile-bff/ad/config", continuation);
        return objF == IntrinsicsKt.f() ? objF : Unit.f67061a;
    }
}
