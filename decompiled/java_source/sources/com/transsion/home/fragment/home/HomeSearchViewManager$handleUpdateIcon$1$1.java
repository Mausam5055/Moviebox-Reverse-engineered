package com.transsion.home.fragment.home;

import android.app.Activity;
import android.content.Context;
import com.transsion.version.update.UpdateManager;
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

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.fragment.home.HomeSearchViewManager$handleUpdateIcon$1$1", f = "HomeSearchViewManager.kt", l = {Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE}, m = "invokeSuspend")
final class HomeSearchViewManager$handleUpdateIcon$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ HomeSearchViewManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HomeSearchViewManager$handleUpdateIcon$1$1(HomeSearchViewManager homeSearchViewManager, Continuation<? super HomeSearchViewManager$handleUpdateIcon$1$1> continuation) {
        super(2, continuation);
        this.this$0 = homeSearchViewManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HomeSearchViewManager$handleUpdateIcon$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((HomeSearchViewManager$handleUpdateIcon$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            UpdateManager updateManagerA = UpdateManager.f57518f.a();
            Context context = this.this$0.f45135d;
            if (context == null) {
                Intrinsics.z("context");
                context = null;
            }
            this.label = 1;
            obj = updateManagerA.i((Activity) context, "app_center", "wefeed-mobile-bff", "", true, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        lg.a.C0828a.f(lg.a.f68839a, "update", "checkUpdate " + zBooleanValue, false, 4, null);
        return Unit.f67061a;
    }
}
