package com.transsion.usercenter.me;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.usercenter.profile.bean.MinePageInfo;
import com.transsion.usercenter.profile.e0;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.usercenter.me.MeViewmodel$fetchProfile$1", f = "MeViewmodel.kt", l = {Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE, Sdk$SDKError.Reason.TPAT_ERROR_VALUE}, m = "invokeSuspend")
final class MeViewmodel$fetchProfile$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ MeViewmodel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MeViewmodel$fetchProfile$1(MeViewmodel meViewmodel, Continuation<? super MeViewmodel$fetchProfile$1> continuation) {
        super(2, continuation);
        this.this$0 = meViewmodel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        MeViewmodel$fetchProfile$1 meViewmodel$fetchProfile$1 = new MeViewmodel$fetchProfile$1(this.this$0, continuation);
        meViewmodel$fetchProfile$1.L$0 = obj;
        return meViewmodel$fetchProfile$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MeViewmodel$fetchProfile$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        MeViewmodel meViewmodel;
        BaseDto baseDto;
        MinePageInfo minePageInfo;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                MeViewmodel meViewmodel2 = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                meViewmodel2.J();
                if (ak.g.f639a.b()) {
                    com.transsion.usercenter.profile.b bVarG = meViewmodel2.G();
                    this.L$0 = meViewmodel2;
                    this.label = 1;
                    Object objJ = com.transsion.usercenter.profile.b.a.j(bVarG, null, null, this, 3, null);
                    if (objJ == objF) {
                        return objF;
                    }
                    meViewmodel = meViewmodel2;
                    obj = objJ;
                    baseDto = (BaseDto) obj;
                } else {
                    com.transsion.usercenter.profile.b bVarG2 = meViewmodel2.G();
                    this.L$0 = meViewmodel2;
                    this.label = 2;
                    Object objC = com.transsion.usercenter.profile.b.a.c(bVarG2, null, null, this, 3, null);
                    if (objC == objF) {
                        return objF;
                    }
                    meViewmodel = meViewmodel2;
                    obj = objC;
                    baseDto = (BaseDto) obj;
                }
            } else if (i11 == 1) {
                meViewmodel = (MeViewmodel) this.L$0;
                ResultKt.b(obj);
                baseDto = (BaseDto) obj;
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                meViewmodel = (MeViewmodel) this.L$0;
                ResultKt.b(obj);
                baseDto = (BaseDto) obj;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("fetchProfile, result:");
            sb2.append(baseDto);
            if (Intrinsics.c(baseDto.getCode(), "0") && (minePageInfo = (MinePageInfo) baseDto.getData()) != null) {
                UserInfo userInfo = minePageInfo.getUserInfo();
                if (userInfo != null) {
                    e0.f57130a.b().putString("PROFILE_JSON", com.blankj.utilcode.util.o.j(userInfo));
                }
                meViewmodel.f56907p = minePageInfo;
                qw.c cVar = qw.c.f73882a;
                UserInfo userInfo2 = minePageInfo.getUserInfo();
                cVar.d(userInfo2 != null ? userInfo2.getUsername() : null);
                meViewmodel.T();
            }
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("fetchProfile, error:");
            sb3.append(thM457exceptionOrNullimpl);
        }
        return Unit.f67061a;
    }
}
