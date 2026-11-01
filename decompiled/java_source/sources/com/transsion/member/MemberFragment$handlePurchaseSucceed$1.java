package com.transsion.member;

import androidx.activity.OnBackPressedDispatcher;
import androidx.fragment.app.FragmentActivity;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.memberapi.IMemberApi;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.member.MemberFragment$handlePurchaseSucceed$1", f = "MemberFragment.kt", l = {}, m = "invokeSuspend")
final class MemberFragment$handlePurchaseSucceed$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $buttonTitle;
    final /* synthetic */ String $title;
    int label;
    final /* synthetic */ MemberFragment this$0;

    public static final class a implements zm.k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MemberFragment f46316a;

        a(MemberFragment memberFragment) {
            this.f46316a = memberFragment;
        }

        @Override // zm.k
        public void b() {
            OnBackPressedDispatcher onBackPressedDispatcher;
            if (!(this.f46316a.getActivity() instanceof MemberActivity)) {
                Navigator.x(TheRouter.c("/main/tab").F("tabIndex", 0), this.f46316a.requireContext(), null, 2, null);
                return;
            }
            FragmentActivity activity = this.f46316a.getActivity();
            if (activity == null || (onBackPressedDispatcher = activity.getOnBackPressedDispatcher()) == null) {
                return;
            }
            onBackPressedDispatcher.l();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MemberFragment$handlePurchaseSucceed$1(MemberFragment memberFragment, String str, String str2, Continuation<? super MemberFragment$handlePurchaseSucceed$1> continuation) {
        super(2, continuation);
        this.this$0 = memberFragment;
        this.$title = str;
        this.$buttonTitle = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MemberFragment$handlePurchaseSucceed$1(this.this$0, this.$title, this.$buttonTitle, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MemberFragment$handlePurchaseSucceed$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        if (!Intrinsics.c(this.this$0.getActivity(), com.blankj.utilcode.util.a.b()) || !this.this$0.isVisible()) {
            return Unit.f67061a;
        }
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null) {
            FragmentActivity activity = this.this$0.getActivity();
            String str = this.$title;
            if (str == null) {
                str = "";
            }
            String str2 = this.$buttonTitle;
            iMemberApi.y(activity, str, str2 != null ? str2 : "", new a(this.this$0));
        }
        return Unit.f67061a;
    }
}
