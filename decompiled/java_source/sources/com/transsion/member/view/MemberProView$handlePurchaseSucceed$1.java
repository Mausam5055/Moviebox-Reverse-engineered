package com.transsion.member.view;

import androidx.appcompat.app.AppCompatActivity;
import com.therouter.TheRouter;
import com.transsion.memberapi.IMemberApi;
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
@DebugMetadata(c = "com.transsion.member.view.MemberProView$handlePurchaseSucceed$1", f = "MemberProView.kt", l = {}, m = "invokeSuspend")
final class MemberProView$handlePurchaseSucceed$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $buttonTitle;
    final /* synthetic */ String $title;
    int label;
    final /* synthetic */ MemberProView this$0;

    public static final class a implements zm.k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MemberProView f46844a;

        a(MemberProView memberProView) {
            this.f46844a = memberProView;
        }

        @Override // zm.k
        public void b() {
            Function0 function0 = this.f46844a.onPurchaseSucceed;
            if (function0 != null) {
                function0.invoke();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MemberProView$handlePurchaseSucceed$1(MemberProView memberProView, String str, String str2, Continuation<? super MemberProView$handlePurchaseSucceed$1> continuation) {
        super(2, continuation);
        this.this$0 = memberProView;
        this.$title = str;
        this.$buttonTitle = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MemberProView$handlePurchaseSucceed$1(this.this$0, this.$title, this.$buttonTitle, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MemberProView$handlePurchaseSucceed$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        AppCompatActivity appCompatActivityT = this.this$0.t();
        if (appCompatActivityT == null) {
            return Unit.f67061a;
        }
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null) {
            iMemberApi.y(appCompatActivityT, this.$title, this.$buttonTitle, new a(this.this$0));
        }
        return Unit.f67061a;
    }
}
