package com.transsion.home.viewmodel;

import com.transsion.home.bean.SubOperateData;
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
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "Lcom/transsion/home/bean/SubOperateData;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Lcom/transsion/home/bean/SubOperateData;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.viewmodel.SubTabViewModel$fetchOperateData$1$1$operationTask$1", f = "SubTabViewModel.kt", l = {73}, m = "invokeSuspend")
final class SubTabViewModel$fetchOperateData$1$1$operationTask$1 extends SuspendLambda implements Function2<n0, Continuation<? super SubOperateData>, Object> {
    final /* synthetic */ String $grade;
    final /* synthetic */ int $tabId;
    int label;
    final /* synthetic */ SubTabViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubTabViewModel$fetchOperateData$1$1$operationTask$1(SubTabViewModel subTabViewModel, int i11, String str, Continuation<? super SubTabViewModel$fetchOperateData$1$1$operationTask$1> continuation) {
        super(2, continuation);
        this.this$0 = subTabViewModel;
        this.$tabId = i11;
        this.$grade = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SubTabViewModel$fetchOperateData$1$1$operationTask$1(this.this$0, this.$tabId, this.$grade, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super SubOperateData> continuation) {
        return ((SubTabViewModel$fetchOperateData$1$1$operationTask$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            SubTabViewModel subTabViewModel = this.this$0;
            int i12 = this.$tabId;
            String str = this.$grade;
            this.label = 1;
            obj = subTabViewModel.r(i12, str, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return obj;
    }
}
