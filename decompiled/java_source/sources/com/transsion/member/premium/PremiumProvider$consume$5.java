package com.transsion.member.premium;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.member.c0;
import com.transsion.memberapi.EntitlementsBean;
import com.transsion.memberapi.MemberDetail;
import com.transsion.memberapi.PremiumConsumeDto;
import com.transsion.memberapi.PropertiesBean;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.member.premium.PremiumProvider$consume$5", f = "PremiumProvider.kt", l = {436}, m = "invokeSuspend")
@SourceDebugExtension
final class PremiumProvider$consume$5 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ RequestBody $body;
    Object L$0;
    int label;
    final /* synthetic */ PremiumProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PremiumProvider$consume$5(PremiumProvider premiumProvider, RequestBody requestBody, Continuation<? super PremiumProvider$consume$5> continuation) {
        super(2, continuation);
        this.this$0 = premiumProvider;
        this.$body = requestBody;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PremiumProvider$consume$5(this.this$0, this.$body, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PremiumProvider$consume$5) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        PremiumProvider premiumProvider;
        Unit unit;
        MemberDetail memberDetailB;
        List<EntitlementsBean> entitlements;
        List<PropertiesBean> properties;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                PremiumProvider premiumProvider2 = this.this$0;
                RequestBody requestBody = this.$body;
                Result.Companion companion = Result.INSTANCE;
                vm.a aVarE = premiumProvider2.E();
                this.L$0 = premiumProvider2;
                this.label = 1;
                Object objA = vm.a.C0951a.a(aVarE, null, requestBody, this, 1, null);
                if (objA == objF) {
                    return objF;
                }
                premiumProvider = premiumProvider2;
                obj = objA;
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                premiumProvider = (PremiumProvider) this.L$0;
                ResultKt.b(obj);
            }
            PremiumConsumeDto premiumConsumeDto = (PremiumConsumeDto) ((BaseDto) obj).getData();
            if (premiumConsumeDto != null) {
                if (Intrinsics.c(premiumConsumeDto.getSuccess(), Boxing.a(true)) && (memberDetailB = premiumProvider.b()) != null && (entitlements = memberDetailB.getEntitlements()) != null) {
                    for (EntitlementsBean entitlementsBean : entitlements) {
                        if (Intrinsics.c(entitlementsBean.getEntitlementKey(), "subject_download") && (properties = entitlementsBean.getProperties()) != null) {
                            for (PropertiesBean propertiesBean : properties) {
                                if (Intrinsics.c(propertiesBean.getKey(), "free_download_count")) {
                                    propertiesBean.setRemaining(premiumConsumeDto.getRemaining());
                                    c0.f46429a.b().putString("a81j4vNmh4ta13ST", com.blankj.utilcode.util.o.j(memberDetailB));
                                    premiumProvider.f46631c = memberDetailB;
                                }
                            }
                        }
                    }
                }
                unit = Unit.f67061a;
            } else {
                unit = null;
            }
            objM454constructorimpl = Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            com.transsion.member.a.f46406a.b("PremiumProvider --> checkMemberRights() ---> getOrElse() --> it = " + thM457exceptionOrNullimpl);
        }
        return Unit.f67061a;
    }
}
