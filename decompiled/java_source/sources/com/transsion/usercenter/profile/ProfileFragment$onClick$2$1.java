package com.transsion.usercenter.profile;

import androidx.fragment.app.FragmentActivity;
import com.transsion.usercenter.R$string;
import com.transsion.version.update.UpdateManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.usercenter.profile.ProfileFragment$onClick$2$1", f = "ProfileFragment.kt", l = {949}, m = "invokeSuspend")
final class ProfileFragment$onClick$2$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ FragmentActivity $it;
    int label;
    final /* synthetic */ ProfileFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProfileFragment$onClick$2$1(FragmentActivity fragmentActivity, ProfileFragment profileFragment, Continuation<? super ProfileFragment$onClick$2$1> continuation) {
        super(2, continuation);
        this.$it = fragmentActivity;
        this.this$0 = profileFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ProfileFragment$onClick$2$1(this.$it, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ProfileFragment$onClick$2$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            UpdateManager updateManagerA = UpdateManager.f57518f.a();
            FragmentActivity fragmentActivity = this.$it;
            this.label = 1;
            obj = updateManagerA.i(fragmentActivity, "profile_page", "wefeed-mobile-bff", "", true, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        if (!((Boolean) obj).booleanValue()) {
            com.tn.lib.widget.toast.core.h.f41479a.l(this.this$0.getString(R$string.profile_setting_check_update_tip));
        }
        return Unit.f67061a;
    }
}
