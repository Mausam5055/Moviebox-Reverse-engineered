package com.transsion.home.preload;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.transsion.home.R$layout;
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
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/n0;", "Landroid/view/View;", "kotlin.jvm.PlatformType", "<anonymous>", "(Lkotlinx/coroutines/n0;)Landroid/view/View;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.preload.MainXMLPreloadControlImp$1$rankingResult$1", f = "MainXMLPreloadControlImp.kt", l = {}, m = "invokeSuspend")
final class MainXMLPreloadControlImp$1$rankingResult$1 extends SuspendLambda implements Function2<n0, Continuation<? super View>, Object> {
    final /* synthetic */ Activity $activity;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainXMLPreloadControlImp$1$rankingResult$1(Activity activity, Continuation<? super MainXMLPreloadControlImp$1$rankingResult$1> continuation) {
        super(2, continuation);
        this.$activity = activity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainXMLPreloadControlImp$1$rankingResult$1(this.$activity, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super View> continuation) {
        return ((MainXMLPreloadControlImp$1$rankingResult$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        return LayoutInflater.from(this.$activity).inflate(R$layout.post_list_item_op_ranking, (ViewGroup) null);
    }
}
