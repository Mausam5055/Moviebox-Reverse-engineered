package com.transsion.mpush.core.activity;

import android.content.Context;
import com.transsion.mpush.core.db.PushDatabase;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import lg.a;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.mpush.core.activity.SdkPushClickActivity$handleIntent$3", f = "SdkPushClickActivity.kt", l = {Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE}, m = "invokeSuspend")
final class SdkPushClickActivity$handleIntent$3 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $msgId;
    int label;
    final /* synthetic */ SdkPushClickActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SdkPushClickActivity$handleIntent$3(String str, SdkPushClickActivity sdkPushClickActivity, Continuation<? super SdkPushClickActivity$handleIntent$3> continuation) {
        super(2, continuation);
        this.$msgId = str;
        this.this$0 = sdkPushClickActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SdkPushClickActivity$handleIntent$3(this.$msgId, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SdkPushClickActivity$handleIntent$3) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                a.C0828a.r(a.f68839a, "M_PUSH_SDK", new String[]{"【点击处理】更新消息状态为已点击，消息ID：" + this.$msgId}, false, 4, null);
                PushDatabase.Companion companion = PushDatabase.INSTANCE;
                Context applicationContext = this.this$0.getApplicationContext();
                Intrinsics.g(applicationContext, "getApplicationContext(...)");
                mn.a aVarJ0 = companion.b(applicationContext).j0();
                String str = this.$msgId;
                this.label = 1;
                if (aVarJ0.c(str, 2, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
        } catch (Exception e11) {
            a.C0828a.l(a.f68839a, "M_PUSH_SDK", "【点击处理】更新状态异常，消息ID：" + this.$msgId + "，异常：" + e11, false, 4, null);
            e11.printStackTrace();
        }
        return Unit.f67061a;
    }
}
