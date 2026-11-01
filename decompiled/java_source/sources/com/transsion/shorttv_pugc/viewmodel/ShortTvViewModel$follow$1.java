package com.transsion.shorttv_pugc.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel$follow$1", f = "ShortTvViewModel.kt", l = {358}, m = "invokeSuspend")
final class ShortTvViewModel$follow$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $hasSubscribe;
    final /* synthetic */ String $userId;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ ShortTvViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvViewModel$follow$1(ShortTvViewModel shortTvViewModel, String str, boolean z10, Continuation<? super ShortTvViewModel$follow$1> continuation) {
        super(2, continuation);
        this.this$0 = shortTvViewModel;
        this.$userId = str;
        this.$hasSubscribe = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ShortTvViewModel$follow$1 shortTvViewModel$follow$1 = new ShortTvViewModel$follow$1(this.this$0, this.$userId, this.$hasSubscribe, continuation);
        shortTvViewModel$follow$1.L$0 = obj;
        return shortTvViewModel$follow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvViewModel$follow$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                ShortTvViewModel shortTvViewModel = this.this$0;
                String str = this.$userId;
                boolean z10 = this.$hasSubscribe;
                Result.Companion companion = Result.INSTANCE;
                this.label = 1;
                obj = rt.a.C0909a.g(shortTvViewModel.f54466a, null, str, !z10, this, 1, null);
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
        if (Result.m461isSuccessimpl(objM454constructorimpl)) {
        }
        Result.m457exceptionOrNullimpl(objM454constructorimpl);
        return Unit.f67061a;
    }
}
