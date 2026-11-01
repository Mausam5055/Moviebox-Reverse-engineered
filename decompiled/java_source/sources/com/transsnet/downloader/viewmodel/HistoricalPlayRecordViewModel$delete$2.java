package com.transsnet.downloader.viewmodel;

import com.transsnet.downloader.bean.HistoricalPlayRecordBean;
import com.transsnet.downloader.bean.HistoricalPlayRecordMultipleEntity;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.viewmodel.HistoricalPlayRecordViewModel$delete$2", f = "HistoricalPlayRecordViewModel.kt", l = {378}, m = "invokeSuspend")
@SourceDebugExtension
final class HistoricalPlayRecordViewModel$delete$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function0<Unit> $callback;
    final /* synthetic */ HistoricalPlayRecordMultipleEntity $section;
    Object L$0;
    int label;
    final /* synthetic */ HistoricalPlayRecordViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HistoricalPlayRecordViewModel$delete$2(HistoricalPlayRecordMultipleEntity historicalPlayRecordMultipleEntity, HistoricalPlayRecordViewModel historicalPlayRecordViewModel, Function0<Unit> function0, Continuation<? super HistoricalPlayRecordViewModel$delete$2> continuation) {
        super(2, continuation);
        this.$section = historicalPlayRecordMultipleEntity;
        this.this$0 = historicalPlayRecordViewModel;
        this.$callback = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HistoricalPlayRecordViewModel$delete$2(this.$section, this.this$0, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((HistoricalPlayRecordViewModel$delete$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        HistoricalPlayRecordBean historical;
        Function0<Unit> function0;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            HistoricalPlayRecordMultipleEntity historicalPlayRecordMultipleEntity = this.$section;
            if (historicalPlayRecordMultipleEntity != null && (historical = historicalPlayRecordMultipleEntity.getHistorical()) != null) {
                HistoricalPlayRecordViewModel historicalPlayRecordViewModel = this.this$0;
                Function0<Unit> function1 = this.$callback;
                this.L$0 = function1;
                this.label = 1;
                if (historicalPlayRecordViewModel.Z(historical, this) == objF) {
                    return objF;
                }
                function0 = function1;
            }
            return Unit.f67061a;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        function0 = (Function0) this.L$0;
        ResultKt.b(obj);
        function0.invoke();
        my.d dVar = new my.d();
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = my.d.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, dVar, 0L);
        return Unit.f67061a;
    }
}
