package com.cloud.tmc.miniapp.ui;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.action.StatusAction;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
@DebugMetadata(c = "com.cloud.tmc.miniapp.ui.MiniFragment$CreateMiniAppFail$onEvent$1", f = "MiniFragment.kt", l = {}, m = "invokeSuspend")
public final class MiniFragment$CreateMiniAppFail$onEvent$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    public int label;
    public final /* synthetic */ MiniFragment.CreateMiniAppFail this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MiniFragment$CreateMiniAppFail$onEvent$1(MiniFragment.CreateMiniAppFail createMiniAppFail, Continuation<? super MiniFragment$CreateMiniAppFail$onEvent$1> continuation) {
        super(2, continuation);
        this.this$0 = createMiniAppFail;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MiniFragment$CreateMiniAppFail$onEvent$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MiniFragment$CreateMiniAppFail$onEvent$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        Fragment fragment = this.this$0.getContextWeakReference().get();
        FragmentActivity activity = fragment != null ? fragment.getActivity() : null;
        StatusAction statusAction = activity instanceof StatusAction ? (StatusAction) activity : null;
        if (statusAction != null) {
            Integer viewThemeMode = this.this$0.getViewThemeMode();
            StatusAction.DefaultImpls.showErrorLayout$default(statusAction, (viewThemeMode != null && viewThemeMode.intValue() == 2) ? R.drawable.mini_ic_error_normal_mode : R.drawable.mini_ic_error, R.string.loading_error_miniapp_went_wrong, R.string.loading_error_miniapp_cant_open_now, null, false, false, null, 112, null);
        }
        return Unit.f67061a;
    }
}
