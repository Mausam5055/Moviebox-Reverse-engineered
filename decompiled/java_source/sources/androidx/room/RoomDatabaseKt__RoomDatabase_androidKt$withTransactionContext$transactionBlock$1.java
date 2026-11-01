package androidx.room;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\n"}, d2 = {"R", "Lkotlinx/coroutines/n0;", "<anonymous>"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "androidx.room.RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1", f = "RoomDatabase.android.kt", l = {2015}, m = "invokeSuspend")
final class RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<Object>, Object> {
    final /* synthetic */ Function1<Continuation<Object>, Object> $block;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1(Function1<? super Continuation<Object>, ? extends Object> function1, Continuation<? super RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1> continuation) {
        super(2, continuation);
        this.$block = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1 roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1 = new RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1(this.$block, continuation);
        roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1.L$0 = obj;
        return roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<Object> continuation) {
        return ((RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        k0 k0Var;
        Throwable th2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k0Var = (k0) this.L$0;
            try {
                ResultKt.b(obj);
                k0Var.d();
                return obj;
            } catch (Throwable th3) {
                th2 = th3;
                k0Var.d();
                throw th2;
            }
        }
        ResultKt.b(obj);
        CoroutineContext.Element element = ((kotlinx.coroutines.n0) this.L$0).getCoroutineContext().get(k0.f14706c);
        Intrinsics.e(element);
        k0 k0Var2 = (k0) element;
        k0Var2.a();
        try {
            Function1<Continuation<Object>, Object> function1 = this.$block;
            this.L$0 = k0Var2;
            this.label = 1;
            Object objInvoke = function1.invoke(this);
            if (objInvoke == objF) {
                return objF;
            }
            k0Var = k0Var2;
            obj = objInvoke;
            k0Var.d();
            return obj;
        } catch (Throwable th4) {
            k0Var = k0Var2;
            th2 = th4;
            k0Var.d();
            throw th2;
        }
    }
}
