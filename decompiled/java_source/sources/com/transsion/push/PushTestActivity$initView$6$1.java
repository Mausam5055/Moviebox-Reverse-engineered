package com.transsion.push;

import android.widget.Toast;
import androidx.appcompat.widget.AppCompatButton;
import com.transsion.pushapi.TriggerSource;
import kotlin.Metadata;
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
@DebugMetadata(c = "com.transsion.push.PushTestActivity$initView$6$1", f = "PushTestActivity.kt", l = {78}, m = "invokeSuspend")
final class PushTestActivity$initView$6$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ AppCompatButton $showScheduleButton;
    int label;
    final /* synthetic */ PushTestActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PushTestActivity$initView$6$1(AppCompatButton appCompatButton, PushTestActivity pushTestActivity, Continuation<? super PushTestActivity$initView$6$1> continuation) {
        super(2, continuation);
        this.$showScheduleButton = appCompatButton;
        this.this$0 = pushTestActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PushTestActivity$initView$6$1(this.$showScheduleButton, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PushTestActivity$initView$6$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            this.$showScheduleButton.setEnabled(false);
            PushTestActivity pushTestActivity = this.this$0;
            this.label = 1;
            obj = pushTestActivity.s0(this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        int iIntValue = ((Number) obj).intValue();
        if (iIntValue <= 0) {
            PushTestActivity pushTestActivity2 = this.this$0;
            Toast.makeText(pushTestActivity2, pushTestActivity2.getString(com.transsion.lib.push.R$string.push_test_pull_parse_failed), 0).show();
            this.$showScheduleButton.setEnabled(true);
            return Unit.f67061a;
        }
        f.f50806a.l(TriggerSource.APP_INNER);
        PushTestActivity pushTestActivity3 = this.this$0;
        Toast.makeText(pushTestActivity3, pushTestActivity3.getString(com.transsion.lib.push.R$string.push_test_pull_done) + " (" + iIntValue + ")", 0).show();
        this.$showScheduleButton.setEnabled(true);
        return Unit.f67061a;
    }
}
