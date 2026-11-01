package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0004\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0004\u0012\u00020\u00030\u0001\"\u0004\b\u0000\u0010\u0000H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"T", "Lkotlin/Pair;", "Landroidx/datastore/core/r;", "", "<anonymous>", "()Lkotlin/Pair;"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$3", f = "DataStoreImpl.kt", l = {298, 300}, m = "invokeSuspend")
final class DataStoreImpl$readDataAndUpdateCache$3 extends SuspendLambda implements Function1<Continuation<? super Pair<? extends r, ? extends Boolean>>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ DataStoreImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DataStoreImpl$readDataAndUpdateCache$3(DataStoreImpl dataStoreImpl, Continuation<? super DataStoreImpl$readDataAndUpdateCache$3> continuation) {
        super(1, continuation);
        this.this$0 = dataStoreImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new DataStoreImpl$readDataAndUpdateCache$3(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation<? super Pair<? extends r, Boolean>> continuation) {
        return ((DataStoreImpl$readDataAndUpdateCache$3) create(continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Throwable th2;
        r oVar;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                DataStoreImpl dataStoreImpl = this.this$0;
                this.label = 1;
                obj = dataStoreImpl.y(true, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    th2 = (Throwable) this.L$0;
                    ResultKt.b(obj);
                    oVar = new o(th2, ((Number) obj).intValue());
                    return TuplesKt.a(oVar, Boxing.a(true));
                }
                ResultKt.b(obj);
            }
            oVar = (r) obj;
        } catch (Throwable th3) {
            k kVarR = this.this$0.r();
            this.L$0 = th3;
            this.label = 2;
            Object objA = kVarR.a(this);
            if (objA == objF) {
                return objF;
            }
            th2 = th3;
            obj = objA;
        }
        return TuplesKt.a(oVar, Boxing.a(true));
    }
}
