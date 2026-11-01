package com.transsion.subroom.activity;

import com.transsion.baselib.kids.KidsAccountManager;
import com.transsion.usercenter.kids.AccountSwitchDialog;
import com.transsion.usercenter.kids.CreateKidsProfileDialog;
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
@DebugMetadata(c = "com.transsion.subroom.activity.MainActivity$doShowKidsDialog$1", f = "MainActivity.kt", l = {342, 354}, m = "invokeSuspend")
final class MainActivity$doShowKidsDialog$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ MainActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivity$doShowKidsDialog$1(MainActivity mainActivity, Continuation<? super MainActivity$doShowKidsDialog$1> continuation) {
        super(2, continuation);
        this.this$0 = mainActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivity$doShowKidsDialog$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MainActivity$doShowKidsDialog$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x005b  */
    /* JADX WARN: Code duplicated, block: B:27:0x005e  */
    /* JADX WARN: Code duplicated, block: B:44:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:46:0x00a9  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            if (!ak.o.f646a.j()) {
                return Unit.f67061a;
            }
            KidsAccountManager kidsAccountManager = KidsAccountManager.f43286a;
            if (kidsAccountManager.f() != null) {
                if (kidsAccountManager.j()) {
                    lg.a.C0828a.f(lg.a.f68839a, "MainActivity", "switchDialogSuppressed.", false, 4, null);
                    return Unit.f67061a;
                }
                this.label = 1;
                obj = kidsAccountManager.o(this);
                if (obj == objF) {
                    return objF;
                }
                if (!((Boolean) obj).booleanValue()) {
                    return Unit.f67061a;
                }
                if (this.this$0.isDestroyed()) {
                }
                return Unit.f67061a;
            }
            if (kidsAccountManager.g()) {
                lg.a.C0828a.f(lg.a.f68839a, "MainActivity", "createDialogSuppressed.", false, 4, null);
                return Unit.f67061a;
            }
            this.label = 2;
            obj = kidsAccountManager.o(this);
            if (obj == objF) {
                return objF;
            }
            if (!((Boolean) obj).booleanValue()) {
                return Unit.f67061a;
            }
            if (this.this$0.isDestroyed()) {
            }
            return Unit.f67061a;
        }
        if (i11 == 1) {
            ResultKt.b(obj);
            if (!((Boolean) obj).booleanValue()) {
                return Unit.f67061a;
            }
            if (!this.this$0.isDestroyed() || this.this$0.isFinishing()) {
                return Unit.f67061a;
            }
            AccountSwitchDialog.INSTANCE.a(true).X(this.this$0, "AccountSwitchDialog");
        } else {
            if (i11 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            if (!((Boolean) obj).booleanValue()) {
                return Unit.f67061a;
            }
            if (!this.this$0.isDestroyed() || this.this$0.isFinishing()) {
                return Unit.f67061a;
            }
            CreateKidsProfileDialog.Companion.b(CreateKidsProfileDialog.INSTANCE, false, true, false, 1, null).X(this.this$0, "CreateKidsProfileDialog");
        }
        return Unit.f67061a;
    }
}
