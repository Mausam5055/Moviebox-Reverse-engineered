package com.transsion.member;

import com.transsion.memberapi.MemberCheckResult;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.member.MemberProvider$checkShowAdState$1", f = "MemberProvider.kt", l = {Sdk$SDKError.Reason.AD_RESPONSE_INVALID_TEMPLATE_TYPE_VALUE}, m = "invokeSuspend")
final class MemberProvider$checkShowAdState$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function0<Unit> $callback;
    int label;
    final /* synthetic */ MemberProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MemberProvider$checkShowAdState$1(MemberProvider memberProvider, Function0<Unit> function0, Continuation<? super MemberProvider$checkShowAdState$1> continuation) {
        super(2, continuation);
        this.this$0 = memberProvider;
        this.$callback = function0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final native Unit d(MemberProvider memberProvider, Function0 function0, MemberCheckResult memberCheckResult);

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final native Continuation create(Object obj, Continuation continuation);

    @Override // kotlin.jvm.functions.Function2
    public final native Object invoke(kotlinx.coroutines.n0 n0Var, Continuation continuation);

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final native Object invokeSuspend(Object obj);
}
