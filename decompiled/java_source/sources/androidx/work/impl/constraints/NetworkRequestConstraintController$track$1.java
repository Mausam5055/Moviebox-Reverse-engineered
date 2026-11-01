package androidx.work.impl.constraints;

import android.net.NetworkRequest;
import android.os.Build;
import androidx.work.impl.utils.x;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.o;
import kotlinx.coroutines.channels.r;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/channels/o;", "Landroidx/work/impl/constraints/b;", "", "<anonymous>", "(Lkotlinx/coroutines/channels/o;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "androidx.work.impl.constraints.NetworkRequestConstraintController$track$1", f = "WorkConstraintsTracker.kt", l = {191}, m = "invokeSuspend")
final class NetworkRequestConstraintController$track$1 extends SuspendLambda implements Function2<o, Continuation<? super Unit>, Object> {
    final /* synthetic */ androidx.work.d $constraints;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ NetworkRequestConstraintController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NetworkRequestConstraintController$track$1(androidx.work.d dVar, NetworkRequestConstraintController networkRequestConstraintController, Continuation<? super NetworkRequestConstraintController$track$1> continuation) {
        super(2, continuation);
        this.$constraints = dVar;
        this.this$0 = networkRequestConstraintController;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(t1 t1Var, o oVar, b bVar) {
        t1.a.b(t1Var, null, 1, null);
        oVar.c(bVar);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(Function0 function0) {
        function0.invoke();
        return Unit.f67061a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        NetworkRequestConstraintController$track$1 networkRequestConstraintController$track$1 = new NetworkRequestConstraintController$track$1(this.$constraints, this.this$0, continuation);
        networkRequestConstraintController$track$1.L$0 = obj;
        return networkRequestConstraintController$track$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(o oVar, Continuation<? super Unit> continuation) {
        return ((NetworkRequestConstraintController$track$1) create(oVar, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            final o oVar = (o) this.L$0;
            NetworkRequest networkRequestD = this.$constraints.d();
            if (networkRequestD == null) {
                networkRequestD = x.a(this.$constraints.f());
            }
            if (networkRequestD == null) {
                r.a.a(oVar.d(), null, 1, null);
                return Unit.f67061a;
            }
            final t1 t1VarD = kotlinx.coroutines.k.d(oVar, null, null, new NetworkRequestConstraintController$track$1$timeoutJob$1(this.this$0, oVar, null), 3, null);
            Function1 function1 = new Function1() { // from class: androidx.work.impl.constraints.e
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return NetworkRequestConstraintController$track$1.g(t1VarD, oVar, (b) obj2);
                }
            };
            final Function0 function0B = Build.VERSION.SDK_INT >= 30 ? k.f15625a.b(this.this$0.f15584a, networkRequestD, function1) : d.f15613b.b(this.this$0.f15584a, networkRequestD, function1);
            Function0 function0 = new Function0() { // from class: androidx.work.impl.constraints.f
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return NetworkRequestConstraintController$track$1.h(function0B);
                }
            };
            this.label = 1;
            if (ProduceKt.a(oVar, function0, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f67061a;
    }
}
