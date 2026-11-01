package androidx.room;

import java.util.concurrent.RejectedExecutionException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.n2;

/* JADX INFO: loaded from: classes2.dex */
abstract /* synthetic */ class RoomDatabaseKt__RoomDatabase_androidKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final CoroutineContext b(RoomDatabase roomDatabase, ContinuationInterceptor continuationInterceptor) {
        k0 k0Var = new k0(continuationInterceptor);
        return continuationInterceptor.plus(k0Var).plus(n2.a(roomDatabase.G(), Integer.valueOf(System.identityHashCode(k0Var))));
    }

    private static final Object c(final RoomDatabase roomDatabase, final CoroutineContext coroutineContext, final Function2 function2, Continuation continuation) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        try {
            roomDatabase.I().execute(new Runnable() { // from class: androidx.room.RoomDatabaseKt__RoomDatabase_androidKt$startTransactionCoroutine$2$1

                /* JADX INFO: renamed from: androidx.room.RoomDatabaseKt__RoomDatabase_androidKt$startTransactionCoroutine$2$1$1, reason: invalid class name */
                @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 0, 0})
                @DebugMetadata(c = "androidx.room.RoomDatabaseKt__RoomDatabase_androidKt$startTransactionCoroutine$2$1$1", f = "RoomDatabase.android.kt", l = {2048}, m = "invokeSuspend")
                static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
                    final /* synthetic */ kotlinx.coroutines.n $continuation;
                    final /* synthetic */ RoomDatabase $this_startTransactionCoroutine;
                    final /* synthetic */ Function2<kotlinx.coroutines.n0, Continuation<Object>, Object> $transactionBlock;
                    private /* synthetic */ Object L$0;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    AnonymousClass1(RoomDatabase roomDatabase, kotlinx.coroutines.n nVar, Function2<? super kotlinx.coroutines.n0, ? super Continuation<Object>, ? extends Object> function2, Continuation<? super AnonymousClass1> continuation) {
                        super(2, continuation);
                        this.$this_startTransactionCoroutine = roomDatabase;
                        this.$continuation = nVar;
                        this.$transactionBlock = function2;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_startTransactionCoroutine, this.$continuation, this.$transactionBlock, continuation);
                        anonymousClass1.L$0 = obj;
                        return anonymousClass1;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
                        return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) throws Throwable {
                        Continuation continuation;
                        Object objF = IntrinsicsKt.f();
                        int i11 = this.label;
                        if (i11 == 0) {
                            ResultKt.b(obj);
                            CoroutineContext.Element element = ((kotlinx.coroutines.n0) this.L$0).getCoroutineContext().get(ContinuationInterceptor.INSTANCE);
                            Intrinsics.e(element);
                            CoroutineContext coroutineContextB = RoomDatabaseKt__RoomDatabase_androidKt.b(this.$this_startTransactionCoroutine, (ContinuationInterceptor) element);
                            kotlinx.coroutines.n nVar = this.$continuation;
                            Result.Companion companion = Result.INSTANCE;
                            Function2<kotlinx.coroutines.n0, Continuation<Object>, Object> function2 = this.$transactionBlock;
                            this.L$0 = nVar;
                            this.label = 1;
                            obj = kotlinx.coroutines.i.g(coroutineContextB, function2, this);
                            if (obj == objF) {
                                return objF;
                            }
                            continuation = nVar;
                        } else {
                            if (i11 != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            continuation = (Continuation) this.L$0;
                            ResultKt.b(obj);
                        }
                        continuation.resumeWith(Result.m454constructorimpl(obj));
                        return Unit.f67061a;
                    }
                }

                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        kotlinx.coroutines.i.e(coroutineContext.minusKey(ContinuationInterceptor.INSTANCE), new AnonymousClass1(roomDatabase, cancellableContinuationImpl, function2, null));
                    } catch (Throwable th2) {
                        cancellableContinuationImpl.cancel(th2);
                    }
                }
            });
        } catch (RejectedExecutionException e11) {
            cancellableContinuationImpl.cancel(new IllegalStateException("Unable to acquire a thread to perform the database transaction.", e11));
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result;
    }

    public static final Object d(RoomDatabase roomDatabase, Function1 function1, Continuation continuation) {
        RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1 roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1 = new RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1(function1, null);
        k0 k0Var = (k0) continuation.getContext().get(k0.f14706c);
        ContinuationInterceptor continuationInterceptorC = k0Var != null ? k0Var.c() : null;
        return continuationInterceptorC != null ? kotlinx.coroutines.i.g(continuationInterceptorC, roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1, continuation) : c(roomDatabase, continuation.getContext(), roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1, continuation);
    }
}
