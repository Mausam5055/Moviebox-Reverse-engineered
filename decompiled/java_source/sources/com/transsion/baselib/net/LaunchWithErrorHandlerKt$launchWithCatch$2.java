package com.transsion.baselib.net;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.baselib.net.LaunchWithErrorHandlerKt$launchWithCatch$2", f = "LaunchWithErrorHandler.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE, Sdk$SDKMetric.SDKMetricType.AD_BACKGROUND_BEFORE_IMPRESSION_VALUE}, m = "invokeSuspend")
final class LaunchWithErrorHandlerKt$launchWithCatch$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function2<n0, Continuation<? super Unit>, Object> $block;
    final /* synthetic */ Function2<Throwable, Continuation<? super Unit>, Object> $onError;
    final /* synthetic */ StackTraceElement[] $stack;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    LaunchWithErrorHandlerKt$launchWithCatch$2(Function2<? super n0, ? super Continuation<? super Unit>, ? extends Object> function2, Function2<? super Throwable, ? super Continuation<? super Unit>, ? extends Object> function3, StackTraceElement[] stackTraceElementArr, Continuation<? super LaunchWithErrorHandlerKt$launchWithCatch$2> continuation) {
        super(2, continuation);
        this.$block = function2;
        this.$onError = function3;
        this.$stack = stackTraceElementArr;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        LaunchWithErrorHandlerKt$launchWithCatch$2 launchWithErrorHandlerKt$launchWithCatch$2 = new LaunchWithErrorHandlerKt$launchWithCatch$2(this.$block, this.$onError, this.$stack, continuation);
        launchWithErrorHandlerKt$launchWithCatch$2.L$0 = obj;
        return launchWithErrorHandlerKt$launchWithCatch$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LaunchWithErrorHandlerKt$launchWithCatch$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x004d  */
    /* JADX WARN: Code duplicated, block: B:27:0x0070  */
    /* JADX WARN: Instruction removed from duplicated block: B:26:0x004d, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Throwable th2;
        StackTraceElement[] stackTraceElementArr;
        String str;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                n0 n0Var = (n0) this.L$0;
                Function2<n0, Continuation<? super Unit>, Object> function2 = this.$block;
                this.label = 1;
                if (function2.invoke(n0Var, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    th2 = (Throwable) this.L$0;
                    ResultKt.b(obj);
                    th = th2;
                    stackTraceElementArr = this.$stack;
                    if (stackTraceElementArr.length > 3) {
                        str = stackTraceElementArr[3].getClassName() + "$" + this.$stack[3].getMethodName();
                    } else {
                        str = "";
                    }
                    LaunchWithErrorHandlerKt.e(th, str);
                    return Unit.f67061a;
                }
                ResultKt.b(obj);
            }
        } catch (Throwable th3) {
            th = th3;
            Function2<Throwable, Continuation<? super Unit>, Object> function3 = this.$onError;
            if (function3 != null) {
                this.L$0 = th;
                this.label = 2;
                if (function3.invoke(th, this) == objF) {
                    return objF;
                }
                th2 = th;
            }
            stackTraceElementArr = this.$stack;
            if (stackTraceElementArr.length > 3) {
                str = stackTraceElementArr[3].getClassName() + "$" + this.$stack[3].getMethodName();
            } else {
                str = "";
            }
            LaunchWithErrorHandlerKt.e(th, str);
            return Unit.f67061a;
        }
        return Unit.f67061a;
    }
}
