package com.transsion.postdetail.helper;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.baseui.util.m;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.bean.NegativeFeedbackRequest;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.helper.NegativeFeedbackHelper$submitFeedback$1", f = "NegativeFeedbackHelper.kt", l = {Sdk$SDKError.Reason.OMSDK_JS_WRITE_FAILED_VALUE}, m = "invokeSuspend")
@SourceDebugExtension
final class NegativeFeedbackHelper$submitFeedback$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $actionType;
    final /* synthetic */ String $authorId;
    final /* synthetic */ Function0<Unit> $onSuccess;
    final /* synthetic */ String $postId;
    final /* synthetic */ String $submitToastText;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NegativeFeedbackHelper$submitFeedback$1(String str, String str2, String str3, String str4, Function0<Unit> function0, Continuation<? super NegativeFeedbackHelper$submitFeedback$1> continuation) {
        super(2, continuation);
        this.$postId = str;
        this.$authorId = str2;
        this.$actionType = str3;
        this.$submitToastText = str4;
        this.$onSuccess = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        NegativeFeedbackHelper$submitFeedback$1 negativeFeedbackHelper$submitFeedback$1 = new NegativeFeedbackHelper$submitFeedback$1(this.$postId, this.$authorId, this.$actionType, this.$submitToastText, this.$onSuccess, continuation);
        negativeFeedbackHelper$submitFeedback$1.L$0 = obj;
        return negativeFeedbackHelper$submitFeedback$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((NegativeFeedbackHelper$submitFeedback$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                String str = this.$postId;
                String str2 = this.$authorId;
                String str3 = this.$actionType;
                Result.Companion companion = Result.INSTANCE;
                xo.b bVarG = NegativeFeedbackHelper.f48849a.g();
                NegativeFeedbackRequest negativeFeedbackRequest = new NegativeFeedbackRequest(str, (str2 == null || str2.length() <= 0) ? null : str2, str3, null, null, null, null, 120, null);
                this.label = 1;
                obj = xo.b.a.b(bVarG, null, negativeFeedbackRequest, this, 1, null);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            objM454constructorimpl = Result.m454constructorimpl((BaseDto) obj);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        String str4 = this.$submitToastText;
        Function0<Unit> function0 = this.$onSuccess;
        if (Result.m461isSuccessimpl(objM454constructorimpl)) {
            BaseDto baseDto = (BaseDto) objM454constructorimpl;
            if (str4 != null) {
                m.d(str4);
            }
            if (function0 != null) {
                function0.invoke();
            }
            lg.a.f68839a.c(NegativeFeedbackHelper.f48850b, "postNegativeFeedback success: code=" + baseDto.getCode() + ", msg=" + baseDto.getMsg(), true);
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.f68839a.i(NegativeFeedbackHelper.f48850b, "postNegativeFeedback error: " + thM457exceptionOrNullimpl.getMessage(), true);
            m.e(R$string.post_feedback_fail);
        }
        return Unit.f67061a;
    }
}
