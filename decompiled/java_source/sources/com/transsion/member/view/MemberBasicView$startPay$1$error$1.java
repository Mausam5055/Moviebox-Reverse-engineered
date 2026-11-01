package com.transsion.member.view;

import android.app.Activity;
import android.content.Context;
import com.transsion.member.R$string;
import com.transsion.member.dialog.PayFailedDialog;
import com.transsion.memberapi.MemberPriceItem;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.member.view.MemberBasicView$startPay$1$error$1", f = "MemberBasicView.kt", l = {}, m = "invokeSuspend")
final class MemberBasicView$startPay$1$error$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Integer $errorCode;
    final /* synthetic */ String $message;
    int label;
    final /* synthetic */ MemberBasicView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MemberBasicView$startPay$1$error$1(MemberBasicView memberBasicView, Integer num, String str, Continuation<? super MemberBasicView$startPay$1$error$1> continuation) {
        super(2, continuation);
        this.this$0 = memberBasicView;
        this.$errorCode = num;
        this.$message = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(MemberBasicView memberBasicView) {
        MemberPriceItem memberPriceItem = memberBasicView.selectedSkuItem;
        if (memberPriceItem != null) {
            String skuId = memberPriceItem.getSkuId();
            if (skuId == null) {
                skuId = "";
            }
            MemberBasicView.v(memberBasicView, skuId, false, 2, null);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(MemberBasicView memberBasicView) {
        memberBasicView.j();
        return Unit.f67061a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MemberBasicView$startPay$1$error$1(this.this$0, this.$errorCode, this.$message, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MemberBasicView$startPay$1$error$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
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
        final MemberBasicView memberBasicView = this.this$0;
        PayFailedDialog payFailedDialogW0 = payFailedDialogT0.w0(new Function0() { // from class: com.transsion.member.view.n
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MemberBasicView$startPay$1$error$1.g(memberBasicView);
            }
        });
        final MemberBasicView memberBasicView2 = this.this$0;
        PayFailedDialog payFailedDialogV0 = payFailedDialogW0.v0(new Function0() { // from class: com.transsion.member.view.o
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MemberBasicView$startPay$1$error$1.h(memberBasicView2);
            }
        });
        WeakReference weakReference = this.this$0.hostActivity;
        payFailedDialogV0.k0(weakReference != null ? (Activity) weakReference.get() : null, "PayFailedDialog");
        zm.f fVar = this.this$0.purchaseListener;
        if (fVar != null) {
            fVar.a(this.$errorCode, this.$message);
        }
        return Unit.f67061a;
    }
}
