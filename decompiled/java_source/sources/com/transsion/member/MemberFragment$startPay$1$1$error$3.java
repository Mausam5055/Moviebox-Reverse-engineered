package com.transsion.member;

import android.content.Context;
import com.transsion.member.dialog.PayFailedDialog;
import com.transsion.memberapi.SkuCategory;
import com.transsion.memberapi.SkuItem;
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

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.member.MemberFragment$startPay$1$1$error$3", f = "MemberFragment.kt", l = {}, m = "invokeSuspend")
final class MemberFragment$startPay$1$1$error$3 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ MemberFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MemberFragment$startPay$1$1$error$3(MemberFragment memberFragment, Continuation<? super MemberFragment$startPay$1$1$error$3> continuation) {
        super(2, continuation);
        this.this$0 = memberFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(MemberFragment memberFragment) {
        SkuItem skuItem = memberFragment.selectedSkuItem;
        if (skuItem != null) {
            memberFragment.q1(skuItem.getSkuId(), Intrinsics.c(skuItem.getCategory(), SkuCategory.AUTO_RENEW.getValue()));
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(MemberFragment memberFragment) {
        memberFragment.c1();
        return Unit.f67061a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MemberFragment$startPay$1$1$error$3(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MemberFragment$startPay$1$1$error$3) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        PayFailedDialog payFailedDialogA = PayFailedDialog.INSTANCE.a();
        Context context = this.this$0.getContext();
        PayFailedDialog payFailedDialogY0 = payFailedDialogA.y0(context != null ? context.getString(R$string.member_pay_failed) : null);
        Context context2 = this.this$0.getContext();
        PayFailedDialog payFailedDialogU0 = payFailedDialogY0.u0(context2 != null ? context2.getString(R$string.member_pay_failed_dialog_content) : null);
        Context context3 = this.this$0.getContext();
        PayFailedDialog payFailedDialogX0 = payFailedDialogU0.x0(context3 != null ? context3.getString(R$string.member_pay_failed_dialog_retry) : null);
        Context context4 = this.this$0.getContext();
        PayFailedDialog payFailedDialogT0 = payFailedDialogX0.t0(context4 != null ? context4.getString(R$string.member_pay_failed_dialog_feedback) : null);
        final MemberFragment memberFragment = this.this$0;
        PayFailedDialog payFailedDialogW0 = payFailedDialogT0.w0(new Function0() { // from class: com.transsion.member.z
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MemberFragment$startPay$1$1$error$3.g(memberFragment);
            }
        });
        final MemberFragment memberFragment2 = this.this$0;
        payFailedDialogW0.v0(new Function0() { // from class: com.transsion.member.a0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MemberFragment$startPay$1$1$error$3.h(memberFragment2);
            }
        }).l0(this.this$0, "PayFailedDialog");
        return Unit.f67061a;
    }
}
