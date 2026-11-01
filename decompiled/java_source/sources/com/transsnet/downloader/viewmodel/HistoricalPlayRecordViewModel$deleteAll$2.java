package com.transsnet.downloader.viewmodel;

import com.transsion.baselib.db.video.ShortTVPlayDao;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
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
@DebugMetadata(c = "com.transsnet.downloader.viewmodel.HistoricalPlayRecordViewModel$deleteAll$2", f = "HistoricalPlayRecordViewModel.kt", l = {364, 365, 366}, m = "invokeSuspend")
@SourceDebugExtension
final class HistoricalPlayRecordViewModel$deleteAll$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function0<Unit> $callback;
    int label;
    final /* synthetic */ HistoricalPlayRecordViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HistoricalPlayRecordViewModel$deleteAll$2(HistoricalPlayRecordViewModel historicalPlayRecordViewModel, Function0<Unit> function0, Continuation<? super HistoricalPlayRecordViewModel$deleteAll$2> continuation) {
        super(2, continuation);
        this.this$0 = historicalPlayRecordViewModel;
        this.$callback = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HistoricalPlayRecordViewModel$deleteAll$2(this.this$0, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((HistoricalPlayRecordViewModel$deleteAll$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0054 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        UGCVideoDetailPlayDao uGCVideoDetailPlayDaoU;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
            } else if (i11 == 2) {
                ResultKt.b(obj);
                uGCVideoDetailPlayDaoU = this.this$0.U();
                this.label = 3;
                if (uGCVideoDetailPlayDaoU.a(this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            this.$callback.invoke();
            my.d dVar = new my.d();
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = my.d.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, dVar, 0L);
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        VideoDetailPlayDao videoDetailPlayDaoV = this.this$0.V();
        this.label = 1;
        if (videoDetailPlayDaoV.a(this) == objF) {
            return objF;
        }
        ShortTVPlayDao shortTVPlayDaoQ = this.this$0.Q();
        this.label = 2;
        if (shortTVPlayDaoQ.a(this) == objF) {
            return objF;
        }
        uGCVideoDetailPlayDaoU = this.this$0.U();
        this.label = 3;
        if (uGCVideoDetailPlayDaoU.a(this) == objF) {
            return objF;
        }
        this.$callback.invoke();
        my.d dVar2 = new my.d();
        FlowEventBus flowEventBus2 = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = my.d.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.postEvent(name2, dVar2, 0L);
        return Unit.f67061a;
    }
}
