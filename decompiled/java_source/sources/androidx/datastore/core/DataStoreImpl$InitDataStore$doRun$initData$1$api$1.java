package androidx.datastore.core;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class DataStoreImpl$InitDataStore$doRun$initData$1$api$1 implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ kotlinx.coroutines.sync.a f8573a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Ref.BooleanRef f8574b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef f8575c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ DataStoreImpl f8576d;

    DataStoreImpl$InitDataStore$doRun$initData$1$api$1(kotlinx.coroutines.sync.a aVar, Ref.BooleanRef booleanRef, Ref.ObjectRef objectRef, DataStoreImpl dataStoreImpl) {
        this.f8573a = aVar;
        this.f8574b = booleanRef;
        this.f8575c = objectRef;
        this.f8576d = dataStoreImpl;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00ba A[Catch: all -> 0x0056, TRY_LEAVE, TryCatch #0 {all -> 0x0056, blocks: (B:21:0x0052, B:36:0x00b2, B:38:0x00ba), top: B:53:0x0052 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00c9 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:41:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.datastore.core.j
    public Object a(Function2 function2, Continuation continuation) throws Throwable {
        DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1 dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;
        kotlinx.coroutines.sync.a aVar;
        DataStoreImpl dataStoreImpl;
        Ref.BooleanRef booleanRef;
        Ref.ObjectRef objectRef;
        kotlinx.coroutines.sync.a aVar2;
        kotlinx.coroutines.sync.a aVar3;
        DataStoreImpl dataStoreImpl2;
        T t11;
        Ref.ObjectRef objectRef2;
        if (continuation instanceof DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) {
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1 = (DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) continuation;
            int i11 = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label = i11 - Integer.MIN_VALUE;
            } else {
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1 = new DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1(this, continuation);
            }
        } else {
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1 = new DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1(this, continuation);
        }
        Object obj = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label;
        try {
            if (i12 == 0) {
                ResultKt.b(obj);
                aVar = this.f8573a;
                Ref.BooleanRef booleanRef2 = this.f8574b;
                Ref.ObjectRef objectRef3 = this.f8575c;
                dataStoreImpl = this.f8576d;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0 = function2;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1 = aVar;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2 = booleanRef2;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$3 = objectRef3;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$4 = dataStoreImpl;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label = 1;
                if (aVar.h(null, dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) == objF) {
                    return objF;
                }
                booleanRef = booleanRef2;
                objectRef = objectRef3;
            } else {
                if (i12 != 1) {
                    if (i12 != 2) {
                        if (i12 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        Object obj2 = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2;
                        objectRef2 = (Ref.ObjectRef) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1;
                        aVar2 = (kotlinx.coroutines.sync.a) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0;
                        try {
                            ResultKt.b(obj);
                            t11 = obj2;
                            objectRef2.element = t11;
                            objectRef = objectRef2;
                            T t12 = objectRef.element;
                            aVar2.unlock(null);
                            return t12;
                        } catch (Throwable th2) {
                            th = th2;
                            aVar2.unlock(null);
                            throw th;
                        }
                    }
                    dataStoreImpl2 = (DataStoreImpl) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2;
                    objectRef = (Ref.ObjectRef) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1;
                    aVar3 = (kotlinx.coroutines.sync.a) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0;
                    try {
                        ResultKt.b(obj);
                        if (Intrinsics.c(obj, objectRef.element)) {
                            aVar2 = aVar3;
                        } else {
                            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0 = aVar3;
                            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1 = objectRef;
                            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2 = obj;
                            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label = 3;
                            if (dataStoreImpl2.B(obj, false, dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) == objF) {
                                return objF;
                            }
                            t11 = obj;
                            objectRef2 = objectRef;
                            aVar2 = aVar3;
                            objectRef2.element = t11;
                            objectRef = objectRef2;
                        }
                        T t13 = objectRef.element;
                        aVar2.unlock(null);
                        return t13;
                    } catch (Throwable th3) {
                        th = th3;
                        aVar2 = aVar3;
                        aVar2.unlock(null);
                        throw th;
                    }
                }
                DataStoreImpl dataStoreImpl3 = (DataStoreImpl) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$4;
                objectRef = (Ref.ObjectRef) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$3;
                booleanRef = (Ref.BooleanRef) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2;
                kotlinx.coroutines.sync.a aVar4 = (kotlinx.coroutines.sync.a) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1;
                Function2 function3 = (Function2) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0;
                ResultKt.b(obj);
                aVar = aVar4;
                dataStoreImpl = dataStoreImpl3;
                function2 = function3;
            }
            if (booleanRef.element) {
                throw new IllegalStateException("InitializerApi.updateData should not be called after initialization is complete.");
            }
            Object obj3 = objectRef.element;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0 = aVar;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1 = objectRef;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2 = dataStoreImpl;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$3 = null;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$4 = null;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label = 2;
            Object objInvoke = function2.invoke(obj3, dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1);
            if (objInvoke == objF) {
                return objF;
            }
            aVar3 = aVar;
            obj = objInvoke;
            dataStoreImpl2 = dataStoreImpl;
            if (Intrinsics.c(obj, objectRef.element)) {
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0 = aVar3;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1 = objectRef;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2 = obj;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label = 3;
                if (dataStoreImpl2.B(obj, false, dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) == objF) {
                    return objF;
                }
                t11 = obj;
                objectRef2 = objectRef;
                aVar2 = aVar3;
                objectRef2.element = t11;
                objectRef = objectRef2;
            } else {
                aVar2 = aVar3;
            }
            T t14 = objectRef.element;
            aVar2.unlock(null);
            return t14;
        } catch (Throwable th4) {
            th = th4;
            aVar2 = aVar;
            aVar2.unlock(null);
            throw th;
        }
    }
}
