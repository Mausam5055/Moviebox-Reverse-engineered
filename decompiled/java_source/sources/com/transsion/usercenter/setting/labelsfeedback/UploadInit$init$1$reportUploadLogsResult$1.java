package com.transsion.usercenter.setting.labelsfeedback;

import com.google.gson.JsonObject;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.upload.bean.LoggerBean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.usercenter.setting.labelsfeedback.UploadInit$init$1$reportUploadLogsResult$1", f = "UploadInit.kt", l = {73}, m = "invokeSuspend")
final class UploadInit$init$1$reportUploadLogsResult$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<LoggerBean, Unit> $callback;
    final /* synthetic */ JsonObject $json;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    UploadInit$init$1$reportUploadLogsResult$1(JsonObject jsonObject, Function1<? super LoggerBean, Unit> function1, Continuation<? super UploadInit$init$1$reportUploadLogsResult$1> continuation) {
        super(2, continuation);
        this.$json = jsonObject;
        this.$callback = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UploadInit$init$1$reportUploadLogsResult$1(this.$json, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UploadInit$init$1$reportUploadLogsResult$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Function1<LoggerBean, Unit> function1;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            bh.b.a aVar = bh.b.f16471a;
            String string = this.$json.toString();
            Intrinsics.g(string, "toString(...)");
            RequestBody requestBodyA = aVar.a(string);
            if (requestBodyA != null) {
                Function1<LoggerBean, Unit> function2 = this.$callback;
                yw.a aVarF = UploadInit.f57418a.f();
                this.L$0 = function2;
                this.label = 1;
                Object objB = yw.a.C0971a.b(aVarF, null, requestBodyA, this, 1, null);
                if (objB == objF) {
                    return objF;
                }
                function1 = function2;
                obj = objB;
            }
            return Unit.f67061a;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        function1 = (Function1) this.L$0;
        ResultKt.b(obj);
        BaseDto baseDto = (BaseDto) obj;
        lg.a.C0828a.f(lg.a.f68839a, "UploadLoggerManager", "reportUploadLogsResult code=" + baseDto.getCode(), false, 4, null);
        function1.invoke(baseDto.getData());
        return Unit.f67061a;
    }
}
