package com.transsion.usercenter.me;

import com.tencent.mmkv.MMKV;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.usercenter.profile.bean.ZeroBody;
import com.transsion.usercenter.profile.bean.ZeroConfig;
import com.transsion.usercenter.profile.bean.ZeroInfo;
import com.transsion.usercenter.profile.bean.ZeroResponse;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.usercenter.me.MeViewmodel$fetchPurchase$1", f = "MeViewmodel.kt", l = {Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE}, m = "invokeSuspend")
final class MeViewmodel$fetchPurchase$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ MeViewmodel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MeViewmodel$fetchPurchase$1(MeViewmodel meViewmodel, Continuation<? super MeViewmodel$fetchPurchase$1> continuation) {
        super(2, continuation);
        this.this$0 = meViewmodel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        MeViewmodel$fetchPurchase$1 meViewmodel$fetchPurchase$1 = new MeViewmodel$fetchPurchase$1(this.this$0, continuation);
        meViewmodel$fetchPurchase$1.L$0 = obj;
        return meViewmodel$fetchPurchase$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MeViewmodel$fetchPurchase$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        String upperCase;
        Object objA;
        MeViewmodel meViewmodel;
        String string;
        UserInfo userInfoI;
        UserInfo userInfoI2;
        List<ZeroInfo> listL;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                MeViewmodel meViewmodel2 = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                String string2 = TimeZone.getDefault().getID().toString();
                ILoginApi iLoginApiF = meViewmodel2.F();
                String phone = (iLoginApiF == null || (userInfoI2 = iLoginApiF.i()) == null) ? null : userInfoI2.getPhone();
                ILoginApi iLoginApiF2 = meViewmodel2.F();
                String userId = (iLoginApiF2 == null || (userInfoI = iLoginApiF2.i()) == null) ? null : userInfoI.getUserId();
                String strI = ih.b.f65241a.i();
                MMKV mmkvC = bh.a.f16469a.c();
                if (mmkvC == null || (string = mmkvC.getString("custom_local_iso", "")) == null) {
                    upperCase = null;
                } else {
                    upperCase = string.toUpperCase(Locale.ROOT);
                    Intrinsics.g(upperCase, "toUpperCase(...)");
                }
                bh.b.a aVar = bh.b.f16471a;
                String strJ = com.blankj.utilcode.util.o.j(new ZeroBody(upperCase == null ? "" : upperCase, phone, userId, strI, string2, 0, null, 96, null));
                Intrinsics.g(strJ, "toJson(...)");
                RequestBody requestBodyA = aVar.a(strJ);
                if (requestBodyA == null) {
                    return Unit.f67061a;
                }
                ZeroConfig zeroConfig = meViewmodel2.f56898g;
                String urlPath = zeroConfig != null ? zeroConfig.getUrlPath() : null;
                if (urlPath == null || urlPath.length() == 0) {
                    urlPath = "campaign/v1/freebuy/campaign/recent";
                }
                com.transsion.usercenter.profile.d dVarH = meViewmodel2.H();
                this.L$0 = meViewmodel2;
                this.label = 1;
                objA = dVarH.a(requestBodyA, urlPath, this);
                if (objA == objF) {
                    return objF;
                }
                meViewmodel = meViewmodel2;
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                meViewmodel = (MeViewmodel) this.L$0;
                ResultKt.b(obj);
                objA = obj;
            }
            BaseDto baseDto = (BaseDto) objA;
            lg.a.C0828a.f(lg.a.f68839a, "MeViewmodel", "zero entrance:" + baseDto, false, 4, null);
            if (Intrinsics.c(baseDto.getCode(), "0")) {
                meViewmodel.f56897f.clear();
                List list = meViewmodel.f56897f;
                ZeroResponse zeroResponse = (ZeroResponse) baseDto.getData();
                if (zeroResponse == null || (listL = zeroResponse.getItems()) == null) {
                    listL = CollectionsKt.l();
                }
                list.addAll(listL);
                meViewmodel.T();
            }
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("error:");
            sb2.append(thM457exceptionOrNullimpl);
        }
        return Unit.f67061a;
    }
}
