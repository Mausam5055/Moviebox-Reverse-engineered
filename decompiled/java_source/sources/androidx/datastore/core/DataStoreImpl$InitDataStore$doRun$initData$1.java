package androidx.datastore.core;

import androidx.datastore.core.DataStoreImpl.InitDataStore;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"T", "Landroidx/datastore/core/d;", "<anonymous>", "()Landroidx/datastore/core/d;"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$initData$1", f = "DataStoreImpl.kt", l = {437, 458, 546, 468}, m = "invokeSuspend")
@SourceDebugExtension
final class DataStoreImpl$InitDataStore$doRun$initData$1 extends SuspendLambda implements Function1<Continuation<? super d>, Object> {
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    final /* synthetic */ DataStoreImpl this$0;
    final /* synthetic */ InitDataStore this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DataStoreImpl$InitDataStore$doRun$initData$1(DataStoreImpl dataStoreImpl, InitDataStore initDataStore, Continuation<? super DataStoreImpl$InitDataStore$doRun$initData$1> continuation) {
        super(1, continuation);
        this.this$0 = dataStoreImpl;
        this.this$1 = initDataStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new DataStoreImpl$InitDataStore$doRun$initData$1(this.this$0, this.this$1, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation<? super d> continuation) {
        return ((DataStoreImpl$InitDataStore$doRun$initData$1) create(continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:30:0x00e6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:31:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:35:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:38:0x010d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:39:0x010e  */
    /* JADX WARN: Code duplicated, block: B:48:0x00c8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:? A[LOOP:0: B:21:0x00aa->B:50:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v5, types: [T, java.lang.Object] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlinx.coroutines.sync.a aVarB;
        Ref.BooleanRef booleanRef;
        Ref.ObjectRef objectRef;
        Ref.ObjectRef objectRef2;
        Ref.BooleanRef booleanRef2;
        kotlinx.coroutines.sync.a aVar;
        Iterator it;
        kotlinx.coroutines.sync.a aVar2;
        Ref.BooleanRef booleanRef3;
        Ref.ObjectRef objectRef3;
        DataStoreImpl$InitDataStore$doRun$initData$1$api$1 dataStoreImpl$InitDataStore$doRun$initData$1$api$1;
        Ref.ObjectRef objectRef4;
        Function2 function2;
        Object obj2;
        int iHashCode;
        int i11;
        Object objF = IntrinsicsKt.f();
        int i12 = this.label;
        if (i12 != 0) {
            if (i12 == 1) {
                objectRef = (Ref.ObjectRef) this.L$3;
                objectRef2 = (Ref.ObjectRef) this.L$2;
                booleanRef = (Ref.BooleanRef) this.L$1;
                aVarB = (kotlinx.coroutines.sync.a) this.L$0;
                ResultKt.b(obj);
            } else if (i12 == 2) {
                it = (Iterator) this.L$4;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1 = (DataStoreImpl$InitDataStore$doRun$initData$1$api$1) this.L$3;
                objectRef3 = (Ref.ObjectRef) this.L$2;
                booleanRef3 = (Ref.BooleanRef) this.L$1;
                aVar2 = (kotlinx.coroutines.sync.a) this.L$0;
                ResultKt.b(obj);
                while (it.hasNext()) {
                    function2 = (Function2) it.next();
                    this.L$0 = aVar2;
                    this.L$1 = booleanRef3;
                    this.L$2 = objectRef3;
                    this.L$3 = dataStoreImpl$InitDataStore$doRun$initData$1$api$1;
                    this.L$4 = it;
                    this.label = 2;
                    if (function2.invoke(dataStoreImpl$InitDataStore$doRun$initData$1$api$1, this) == objF) {
                        return objF;
                    }
                }
                objectRef2 = objectRef3;
                booleanRef2 = booleanRef3;
                aVar = aVar2;
                ((DataStoreImpl.InitDataStore) this.this$1).f8571c = null;
                this.L$0 = booleanRef2;
                this.L$1 = objectRef2;
                this.L$2 = aVar;
                this.L$3 = null;
                this.L$4 = null;
                this.label = 3;
                if (aVar.h(null, this) == objF) {
                    return objF;
                }
                objectRef4 = objectRef2;
                booleanRef2.element = true;
                Unit unit = Unit.f67061a;
                aVar.unlock(null);
                obj2 = objectRef4.element;
                if (obj2 != null) {
                }
                k kVarR = this.this$0.r();
                this.L$0 = obj2;
                this.L$1 = null;
                this.L$2 = null;
                this.I$0 = iHashCode;
                this.label = 4;
                obj = kVarR.a(this);
                if (obj == objF) {
                    return objF;
                }
                i11 = iHashCode;
            } else if (i12 == 3) {
                aVar = (kotlinx.coroutines.sync.a) this.L$2;
                objectRef4 = (Ref.ObjectRef) this.L$1;
                booleanRef2 = (Ref.BooleanRef) this.L$0;
                ResultKt.b(obj);
                try {
                    booleanRef2.element = true;
                    Unit unit2 = Unit.f67061a;
                    aVar.unlock(null);
                    obj2 = objectRef4.element;
                    iHashCode = obj2 != null ? obj2.hashCode() : 0;
                    k kVarR2 = this.this$0.r();
                    this.L$0 = obj2;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.I$0 = iHashCode;
                    this.label = 4;
                    obj = kVarR2.a(this);
                    if (obj == objF) {
                        return objF;
                    }
                    i11 = iHashCode;
                } catch (Throwable th2) {
                    aVar.unlock(null);
                    throw th2;
                }
            } else {
                if (i12 != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                i11 = this.I$0;
                obj2 = this.L$0;
                ResultKt.b(obj);
            }
            return new d(obj2, i11, ((Number) obj).intValue());
        }
        ResultKt.b(obj);
        aVarB = kotlinx.coroutines.sync.g.b(false, 1, null);
        booleanRef = new Ref.BooleanRef();
        objectRef = new Ref.ObjectRef();
        DataStoreImpl dataStoreImpl = this.this$0;
        this.L$0 = aVarB;
        this.L$1 = booleanRef;
        this.L$2 = objectRef;
        this.L$3 = objectRef;
        this.label = 1;
        obj = dataStoreImpl.y(true, this);
        if (obj == objF) {
            return objF;
        }
        objectRef2 = objectRef;
        objectRef.element = ((d) obj).c();
        DataStoreImpl$InitDataStore$doRun$initData$1$api$1 dataStoreImpl$InitDataStore$doRun$initData$1$api$2 = new DataStoreImpl$InitDataStore$doRun$initData$1$api$1(aVarB, booleanRef, objectRef2, this.this$0);
        List list = ((DataStoreImpl.InitDataStore) this.this$1).f8571c;
        if (list != null) {
            it = list.iterator();
            aVar2 = aVarB;
            booleanRef3 = booleanRef;
            objectRef3 = objectRef2;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1 = dataStoreImpl$InitDataStore$doRun$initData$1$api$2;
            while (it.hasNext()) {
                function2 = (Function2) it.next();
                this.L$0 = aVar2;
                this.L$1 = booleanRef3;
                this.L$2 = objectRef3;
                this.L$3 = dataStoreImpl$InitDataStore$doRun$initData$1$api$1;
                this.L$4 = it;
                this.label = 2;
                if (function2.invoke(dataStoreImpl$InitDataStore$doRun$initData$1$api$1, this) == objF) {
                    return objF;
                }
            }
            objectRef2 = objectRef3;
            booleanRef2 = booleanRef3;
            aVar = aVar2;
        } else {
            booleanRef2 = booleanRef;
            aVar = aVarB;
        }
        ((DataStoreImpl.InitDataStore) this.this$1).f8571c = null;
        this.L$0 = booleanRef2;
        this.L$1 = objectRef2;
        this.L$2 = aVar;
        this.L$3 = null;
        this.L$4 = null;
        this.label = 3;
        if (aVar.h(null, this) == objF) {
            return objF;
        }
        objectRef4 = objectRef2;
        booleanRef2.element = true;
        Unit unit3 = Unit.f67061a;
        aVar.unlock(null);
        obj2 = objectRef4.element;
        if (obj2 != null) {
        }
        k kVarR3 = this.this$0.r();
        this.L$0 = obj2;
        this.L$1 = null;
        this.L$2 = null;
        this.I$0 = iHashCode;
        this.label = 4;
        obj = kVarR3.a(this);
        if (obj == objF) {
            return objF;
        }
        i11 = iHashCode;
        return new d(obj2, i11, ((Number) obj).intValue());
    }
}
