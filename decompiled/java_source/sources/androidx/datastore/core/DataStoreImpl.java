package androidx.datastore.core;

import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.ExceptionsKt;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y;

/* JADX INFO: loaded from: classes.dex */
public final class DataStoreImpl implements f {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final a f8558m = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s f8559a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f8560b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final n0 f8561c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlinx.coroutines.flow.b f8562d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlinx.coroutines.sync.a f8563e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f8564f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private t1 f8565g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final h f8566h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final InitDataStore f8567i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Lazy f8568j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Lazy f8569k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final SimpleActor f8570l;

    /* JADX INFO: Access modifiers changed from: private */
    final class InitDataStore extends RunOnce {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private List f8571c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ DataStoreImpl f8572d;

        public InitDataStore(DataStoreImpl dataStoreImpl, List initTasksList) {
            Intrinsics.h(initTasksList, "initTasksList");
            this.f8572d = dataStoreImpl;
            this.f8571c = CollectionsKt.R0(initTasksList);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // androidx.datastore.core.RunOnce
        protected Object b(Continuation continuation) throws Throwable {
            DataStoreImpl$InitDataStore$doRun$1 dataStoreImpl$InitDataStore$doRun$1;
            InitDataStore initDataStore;
            d dVar;
            if (continuation instanceof DataStoreImpl$InitDataStore$doRun$1) {
                dataStoreImpl$InitDataStore$doRun$1 = (DataStoreImpl$InitDataStore$doRun$1) continuation;
                int i11 = dataStoreImpl$InitDataStore$doRun$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    dataStoreImpl$InitDataStore$doRun$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    dataStoreImpl$InitDataStore$doRun$1 = new DataStoreImpl$InitDataStore$doRun$1(this, continuation);
                }
            } else {
                dataStoreImpl$InitDataStore$doRun$1 = new DataStoreImpl$InitDataStore$doRun$1(this, continuation);
            }
            Object objY = dataStoreImpl$InitDataStore$doRun$1.result;
            Object objF = IntrinsicsKt.f();
            int i12 = dataStoreImpl$InitDataStore$doRun$1.label;
            if (i12 == 0) {
                ResultKt.b(objY);
                List list = this.f8571c;
                if (list != null) {
                    Intrinsics.e(list);
                    if (!list.isEmpty()) {
                        k kVarR = this.f8572d.r();
                        DataStoreImpl$InitDataStore$doRun$initData$1 dataStoreImpl$InitDataStore$doRun$initData$1 = new DataStoreImpl$InitDataStore$doRun$initData$1(this.f8572d, this, null);
                        dataStoreImpl$InitDataStore$doRun$1.L$0 = this;
                        dataStoreImpl$InitDataStore$doRun$1.label = 2;
                        objY = kVarR.b(dataStoreImpl$InitDataStore$doRun$initData$1, dataStoreImpl$InitDataStore$doRun$1);
                        if (objY == objF) {
                            return objF;
                        }
                        initDataStore = this;
                        dVar = (d) objY;
                    }
                }
                DataStoreImpl dataStoreImpl = this.f8572d;
                dataStoreImpl$InitDataStore$doRun$1.L$0 = this;
                dataStoreImpl$InitDataStore$doRun$1.label = 1;
                objY = dataStoreImpl.y(false, dataStoreImpl$InitDataStore$doRun$1);
                if (objY == objF) {
                    return objF;
                }
                initDataStore = this;
                dVar = (d) objY;
            } else if (i12 == 1) {
                initDataStore = (InitDataStore) dataStoreImpl$InitDataStore$doRun$1.L$0;
                ResultKt.b(objY);
                dVar = (d) objY;
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                initDataStore = (InitDataStore) dataStoreImpl$InitDataStore$doRun$1.L$0;
                ResultKt.b(objY);
                dVar = (d) objY;
            }
            initDataStore.f8572d.f8566h.c(dVar);
            return Unit.f67061a;
        }
    }

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public DataStoreImpl(s storage, List initTasksList, c corruptionHandler, n0 scope) {
        Intrinsics.h(storage, "storage");
        Intrinsics.h(initTasksList, "initTasksList");
        Intrinsics.h(corruptionHandler, "corruptionHandler");
        Intrinsics.h(scope, "scope");
        this.f8559a = storage;
        this.f8560b = corruptionHandler;
        this.f8561c = scope;
        this.f8562d = kotlinx.coroutines.flow.d.s(new DataStoreImpl$data$1(this, null));
        this.f8563e = kotlinx.coroutines.sync.g.b(false, 1, null);
        this.f8566h = new h();
        this.f8567i = new InitDataStore(this, initTasksList);
        this.f8568j = LazyKt.b(new Function0<t>() { // from class: androidx.datastore.core.DataStoreImpl$storageConnectionDelegate$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final t invoke() {
                return this.this$0.f8559a.a();
            }
        });
        this.f8569k = LazyKt.b(new Function0<k>() { // from class: androidx.datastore.core.DataStoreImpl$coordinator$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final k invoke() {
                return this.this$0.s().e();
            }
        });
        this.f8570l = new SimpleActor(scope, new Function1<Throwable, Unit>() { // from class: androidx.datastore.core.DataStoreImpl$writeActor$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return Unit.f67061a;
            }

            public final void invoke(Throwable th2) {
                if (th2 != null) {
                    this.this$0.f8566h.c(new i(th2));
                }
                if (this.this$0.f8568j.isInitialized()) {
                    this.this$0.s().close();
                }
            }
        }, new Function2<m.a, Throwable, Unit>() { // from class: androidx.datastore.core.DataStoreImpl$writeActor$2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke((m.a) obj, (Throwable) obj2);
                return Unit.f67061a;
            }

            public final void invoke(m.a msg, Throwable th2) {
                Intrinsics.h(msg, "msg");
                kotlinx.coroutines.w wVarA = msg.a();
                if (th2 == null) {
                    th2 = new CancellationException("DataStore scope was cancelled before updateData could complete");
                }
                wVarA.b(th2);
            }
        }, new DataStoreImpl$writeActor$3(this, null));
    }

    private final Object A(Function2 function2, CoroutineContext coroutineContext, Continuation continuation) {
        return r().b(new DataStoreImpl$transformAndWrite$2(this, coroutineContext, function2, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object p(Continuation continuation) throws Throwable {
        DataStoreImpl$decrementCollector$1 dataStoreImpl$decrementCollector$1;
        DataStoreImpl dataStoreImpl;
        kotlinx.coroutines.sync.a aVar;
        if (continuation instanceof DataStoreImpl$decrementCollector$1) {
            dataStoreImpl$decrementCollector$1 = (DataStoreImpl$decrementCollector$1) continuation;
            int i11 = dataStoreImpl$decrementCollector$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$decrementCollector$1.label = i11 - Integer.MIN_VALUE;
            } else {
                dataStoreImpl$decrementCollector$1 = new DataStoreImpl$decrementCollector$1(this, continuation);
            }
        } else {
            dataStoreImpl$decrementCollector$1 = new DataStoreImpl$decrementCollector$1(this, continuation);
        }
        Object obj = dataStoreImpl$decrementCollector$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = dataStoreImpl$decrementCollector$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.sync.a aVar2 = this.f8563e;
            dataStoreImpl$decrementCollector$1.L$0 = this;
            dataStoreImpl$decrementCollector$1.L$1 = aVar2;
            dataStoreImpl$decrementCollector$1.label = 1;
            if (aVar2.h(null, dataStoreImpl$decrementCollector$1) == objF) {
                return objF;
            }
            dataStoreImpl = this;
            aVar = aVar2;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            aVar = (kotlinx.coroutines.sync.a) dataStoreImpl$decrementCollector$1.L$1;
            dataStoreImpl = (DataStoreImpl) dataStoreImpl$decrementCollector$1.L$0;
            ResultKt.b(obj);
        }
        try {
            int i13 = dataStoreImpl.f8564f - 1;
            dataStoreImpl.f8564f = i13;
            if (i13 == 0) {
                t1 t1Var = dataStoreImpl.f8565g;
                if (t1Var != null) {
                    t1.a.b(t1Var, null, 1, null);
                }
                dataStoreImpl.f8565g = null;
            }
            Unit unit = Unit.f67061a;
            return Unit.f67061a;
        } finally {
            aVar.unlock(null);
        }
    }

    private final Object q(boolean z10, Function1 function1, Continuation continuation) {
        return z10 ? function1.invoke(continuation) : r().b(new DataStoreImpl$doWithWriteFileLock$3(function1, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final k r() {
        return (k) this.f8569k.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [androidx.datastore.core.m$a, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16, types: [androidx.datastore.core.m$a] */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v3, types: [kotlinx.coroutines.w] */
    /* JADX WARN: Type inference failed for: r9v31 */
    /* JADX WARN: Type inference failed for: r9v32 */
    /* JADX WARN: Type inference failed for: r9v33 */
    /* JADX WARN: Type inference failed for: r9v34 */
    /* JADX WARN: Type inference failed for: r9v6 */
    public final Object t(m.a aVar, Continuation continuation) throws Throwable {
        DataStoreImpl$handleUpdate$1 dataStoreImpl$handleUpdate$1;
        Object objM454constructorimpl;
        ?? r11;
        kotlinx.coroutines.w wVarA;
        DataStoreImpl dataStoreImpl;
        Object objA;
        ?? r12;
        kotlinx.coroutines.w wVar;
        if (continuation instanceof DataStoreImpl$handleUpdate$1) {
            dataStoreImpl$handleUpdate$1 = (DataStoreImpl$handleUpdate$1) continuation;
            int i11 = dataStoreImpl$handleUpdate$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$handleUpdate$1.label = i11 - Integer.MIN_VALUE;
            } else {
                dataStoreImpl$handleUpdate$1 = new DataStoreImpl$handleUpdate$1(this, continuation);
            }
        } else {
            dataStoreImpl$handleUpdate$1 = new DataStoreImpl$handleUpdate$1(this, continuation);
        }
        Object obj = dataStoreImpl$handleUpdate$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = dataStoreImpl$handleUpdate$1.label;
        boolean z10 = true;
        try {
            if (i12 != 0) {
                if (i12 == 1) {
                    wVar = (kotlinx.coroutines.w) dataStoreImpl$handleUpdate$1.L$0;
                } else if (i12 == 2) {
                    kotlinx.coroutines.w wVar2 = (kotlinx.coroutines.w) dataStoreImpl$handleUpdate$1.L$2;
                    dataStoreImpl = (DataStoreImpl) dataStoreImpl$handleUpdate$1.L$1;
                    m.a aVar2 = (m.a) dataStoreImpl$handleUpdate$1.L$0;
                    ResultKt.b(obj);
                    wVarA = wVar2;
                    r12 = aVar2;
                } else {
                    if (i12 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    wVar = (kotlinx.coroutines.w) dataStoreImpl$handleUpdate$1.L$0;
                }
                ResultKt.b(obj);
                aVar = wVar;
                objM454constructorimpl = Result.m454constructorimpl(obj);
                r11 = aVar;
                y.c(r11, objM454constructorimpl);
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            wVarA = aVar.a();
            try {
                Result.Companion companion = Result.INSTANCE;
                r rVarA = this.f8566h.a();
                if (rVarA instanceof d) {
                    Function2 function2D = aVar.d();
                    CoroutineContext coroutineContextB = aVar.b();
                    dataStoreImpl$handleUpdate$1.L$0 = wVarA;
                    dataStoreImpl$handleUpdate$1.label = 1;
                    objA = A(function2D, coroutineContextB, dataStoreImpl$handleUpdate$1);
                    if (objA == objF) {
                        return objF;
                    }
                } else {
                    if (!(rVarA instanceof o)) {
                        z10 = rVarA instanceof u;
                    }
                    if (!z10) {
                        if (rVarA instanceof i) {
                            throw ((i) rVarA).b();
                        }
                        throw new NoWhenBranchMatchedException();
                    }
                    if (rVarA != aVar.c()) {
                        Intrinsics.f(rVarA, "null cannot be cast to non-null type androidx.datastore.core.ReadException<T of androidx.datastore.core.DataStoreImpl.handleUpdate$lambda$2>");
                        throw ((o) rVarA).b();
                    }
                    dataStoreImpl$handleUpdate$1.L$0 = aVar;
                    dataStoreImpl$handleUpdate$1.L$1 = this;
                    dataStoreImpl$handleUpdate$1.L$2 = wVarA;
                    dataStoreImpl$handleUpdate$1.label = 2;
                    if (v(dataStoreImpl$handleUpdate$1) == objF) {
                        return objF;
                    }
                    dataStoreImpl = this;
                    r12 = aVar;
                }
                kotlinx.coroutines.w wVar3 = wVarA;
                obj = objA;
                aVar = wVar3;
                objM454constructorimpl = Result.m454constructorimpl(obj);
                r11 = aVar;
            } catch (Throwable th2) {
                th = th2;
                aVar = wVarA;
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th));
                r11 = aVar;
            }
            y.c(r11, objM454constructorimpl);
            return Unit.f67061a;
            Function2 function2D2 = r12.d();
            CoroutineContext coroutineContextB2 = r12.b();
            dataStoreImpl$handleUpdate$1.L$0 = wVarA;
            dataStoreImpl$handleUpdate$1.L$1 = null;
            dataStoreImpl$handleUpdate$1.L$2 = null;
            dataStoreImpl$handleUpdate$1.label = 3;
            objA = dataStoreImpl.A(function2D2, coroutineContextB2, dataStoreImpl$handleUpdate$1);
            if (objA == objF) {
                return objF;
            }
            kotlinx.coroutines.w wVar4 = wVarA;
            obj = objA;
            aVar = wVar4;
            objM454constructorimpl = Result.m454constructorimpl(obj);
            r11 = aVar;
        } catch (Throwable th3) {
            th = th3;
        }
        y.c(r11, objM454constructorimpl);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object u(Continuation continuation) throws Throwable {
        DataStoreImpl$incrementCollector$1 dataStoreImpl$incrementCollector$1;
        DataStoreImpl dataStoreImpl;
        kotlinx.coroutines.sync.a aVar;
        if (continuation instanceof DataStoreImpl$incrementCollector$1) {
            dataStoreImpl$incrementCollector$1 = (DataStoreImpl$incrementCollector$1) continuation;
            int i11 = dataStoreImpl$incrementCollector$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$incrementCollector$1.label = i11 - Integer.MIN_VALUE;
            } else {
                dataStoreImpl$incrementCollector$1 = new DataStoreImpl$incrementCollector$1(this, continuation);
            }
        } else {
            dataStoreImpl$incrementCollector$1 = new DataStoreImpl$incrementCollector$1(this, continuation);
        }
        Object obj = dataStoreImpl$incrementCollector$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = dataStoreImpl$incrementCollector$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.sync.a aVar2 = this.f8563e;
            dataStoreImpl$incrementCollector$1.L$0 = this;
            dataStoreImpl$incrementCollector$1.L$1 = aVar2;
            dataStoreImpl$incrementCollector$1.label = 1;
            if (aVar2.h(null, dataStoreImpl$incrementCollector$1) == objF) {
                return objF;
            }
            dataStoreImpl = this;
            aVar = aVar2;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            aVar = (kotlinx.coroutines.sync.a) dataStoreImpl$incrementCollector$1.L$1;
            dataStoreImpl = (DataStoreImpl) dataStoreImpl$incrementCollector$1.L$0;
            ResultKt.b(obj);
        }
        try {
            int i13 = dataStoreImpl.f8564f + 1;
            dataStoreImpl.f8564f = i13;
            if (i13 == 1) {
                dataStoreImpl.f8565g = kotlinx.coroutines.k.d(dataStoreImpl.f8561c, null, null, new DataStoreImpl$incrementCollector$2$1(dataStoreImpl, null), 3, null);
            }
            Unit unit = Unit.f67061a;
            return Unit.f67061a;
        } finally {
            aVar.unlock(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object v(Continuation continuation) throws Throwable {
        DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1 dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;
        DataStoreImpl dataStoreImpl;
        int iIntValue;
        int i11;
        Throwable th2;
        DataStoreImpl dataStoreImpl2;
        if (continuation instanceof DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1) {
            dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1 = (DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1) continuation;
            int i12 = dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.label;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.label = i12 - Integer.MIN_VALUE;
            } else {
                dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1 = new DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1(this, continuation);
            }
        } else {
            dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1 = new DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1(this, continuation);
        }
        Object objA = dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.result;
        Object objF = IntrinsicsKt.f();
        int i13 = dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.label;
        try {
            if (i13 == 0) {
                ResultKt.b(objA);
                k kVarR = r();
                dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.L$0 = this;
                dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.label = 1;
                objA = kVarR.a(dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1);
                if (objA == objF) {
                    return objF;
                }
                dataStoreImpl = this;
            } else {
                if (i13 != 1) {
                    if (i13 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    i11 = dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.I$0;
                    dataStoreImpl2 = (DataStoreImpl) dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.L$0;
                    try {
                        ResultKt.b(objA);
                        return Unit.f67061a;
                    } catch (Throwable th3) {
                        th2 = th3;
                        dataStoreImpl2.f8566h.c(new o(th2, i11));
                        throw th2;
                    }
                }
                dataStoreImpl = (DataStoreImpl) dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.L$0;
                ResultKt.b(objA);
            }
            InitDataStore initDataStore = dataStoreImpl.f8567i;
            dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.L$0 = dataStoreImpl;
            dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.I$0 = iIntValue;
            dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.label = 2;
            if (initDataStore.c(dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1) == objF) {
                return objF;
            }
            return Unit.f67061a;
        } catch (Throwable th4) {
            i11 = iIntValue;
            th2 = th4;
            dataStoreImpl2 = dataStoreImpl;
            dataStoreImpl2.f8566h.c(new o(th2, i11));
            throw th2;
        }
        iIntValue = ((Number) objA).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:43:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object w(boolean z10, Continuation continuation) throws Throwable {
        DataStoreImpl$readDataAndUpdateCache$1 dataStoreImpl$readDataAndUpdateCache$1;
        r rVar;
        Object obj;
        boolean z11;
        DataStoreImpl dataStoreImpl;
        Pair pair;
        r rVar2;
        if (continuation instanceof DataStoreImpl$readDataAndUpdateCache$1) {
            dataStoreImpl$readDataAndUpdateCache$1 = (DataStoreImpl$readDataAndUpdateCache$1) continuation;
            int i11 = dataStoreImpl$readDataAndUpdateCache$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$readDataAndUpdateCache$1.label = i11 - Integer.MIN_VALUE;
            } else {
                dataStoreImpl$readDataAndUpdateCache$1 = new DataStoreImpl$readDataAndUpdateCache$1(this, continuation);
            }
        } else {
            dataStoreImpl$readDataAndUpdateCache$1 = new DataStoreImpl$readDataAndUpdateCache$1(this, continuation);
        }
        Object objD = dataStoreImpl$readDataAndUpdateCache$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = dataStoreImpl$readDataAndUpdateCache$1.label;
        if (i12 == 0) {
            ResultKt.b(objD);
            r rVarA = this.f8566h.a();
            if (rVarA instanceof u) {
                throw new IllegalStateException("This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542");
            }
            k kVarR = r();
            dataStoreImpl$readDataAndUpdateCache$1.L$0 = this;
            dataStoreImpl$readDataAndUpdateCache$1.L$1 = rVarA;
            dataStoreImpl$readDataAndUpdateCache$1.Z$0 = z10;
            dataStoreImpl$readDataAndUpdateCache$1.label = 1;
            Object objA = kVarR.a(dataStoreImpl$readDataAndUpdateCache$1);
            if (objA == objF) {
                return objF;
            }
            rVar = rVarA;
            obj = objA;
            z11 = z10;
            dataStoreImpl = this;
        } else {
            if (i12 != 1) {
                if (i12 == 2) {
                    dataStoreImpl = (DataStoreImpl) dataStoreImpl$readDataAndUpdateCache$1.L$0;
                    ResultKt.b(objD);
                    pair = (Pair) objD;
                    rVar2 = (r) pair.component1();
                    if (((Boolean) pair.component2()).booleanValue()) {
                        dataStoreImpl.f8566h.c(rVar2);
                    }
                    return rVar2;
                }
                if (i12 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                dataStoreImpl = (DataStoreImpl) dataStoreImpl$readDataAndUpdateCache$1.L$0;
                ResultKt.b(objD);
                pair = (Pair) objD;
                rVar2 = (r) pair.component1();
                if (((Boolean) pair.component2()).booleanValue()) {
                    dataStoreImpl.f8566h.c(rVar2);
                }
                return rVar2;
            }
            boolean z12 = dataStoreImpl$readDataAndUpdateCache$1.Z$0;
            r rVar3 = (r) dataStoreImpl$readDataAndUpdateCache$1.L$1;
            DataStoreImpl dataStoreImpl2 = (DataStoreImpl) dataStoreImpl$readDataAndUpdateCache$1.L$0;
            ResultKt.b(objD);
            z11 = z12;
            dataStoreImpl = dataStoreImpl2;
            rVar = rVar3;
            obj = objD;
        }
        int iIntValue = ((Number) obj).intValue();
        boolean z13 = rVar instanceof d;
        int iA = z13 ? rVar.a() : -1;
        if (z13 && iIntValue == iA) {
            return rVar;
        }
        if (z11) {
            k kVarR2 = dataStoreImpl.r();
            DataStoreImpl$readDataAndUpdateCache$3 dataStoreImpl$readDataAndUpdateCache$3 = new DataStoreImpl$readDataAndUpdateCache$3(dataStoreImpl, null);
            dataStoreImpl$readDataAndUpdateCache$1.L$0 = dataStoreImpl;
            dataStoreImpl$readDataAndUpdateCache$1.L$1 = null;
            dataStoreImpl$readDataAndUpdateCache$1.label = 2;
            objD = kVarR2.b(dataStoreImpl$readDataAndUpdateCache$3, dataStoreImpl$readDataAndUpdateCache$1);
            if (objD == objF) {
                return objF;
            }
            pair = (Pair) objD;
            rVar2 = (r) pair.component1();
            if (((Boolean) pair.component2()).booleanValue()) {
                dataStoreImpl.f8566h.c(rVar2);
            }
            return rVar2;
        }
        k kVarR3 = dataStoreImpl.r();
        DataStoreImpl$readDataAndUpdateCache$4 dataStoreImpl$readDataAndUpdateCache$4 = new DataStoreImpl$readDataAndUpdateCache$4(dataStoreImpl, iA, null);
        dataStoreImpl$readDataAndUpdateCache$1.L$0 = dataStoreImpl;
        dataStoreImpl$readDataAndUpdateCache$1.L$1 = null;
        dataStoreImpl$readDataAndUpdateCache$1.label = 3;
        objD = kVarR3.d(dataStoreImpl$readDataAndUpdateCache$4, dataStoreImpl$readDataAndUpdateCache$1);
        if (objD == objF) {
            return objF;
        }
        pair = (Pair) objD;
        rVar2 = (r) pair.component1();
        if (((Boolean) pair.component2()).booleanValue()) {
            dataStoreImpl.f8566h.c(rVar2);
        }
        return rVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object x(Continuation continuation) {
        return StorageConnectionKt.a(s(), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:45:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:48:0x00c6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:49:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:60:0x010b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:65:0x012a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:66:0x012b  */
    /* JADX WARN: Code duplicated, block: B:70:0x014b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:71:0x014c  */
    /* JADX WARN: Code duplicated, block: B:74:0x0154  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:81:0x00a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    public final Object y(boolean z10, Continuation continuation) throws Throwable {
        DataStoreImpl$readDataOrHandleCorruption$1 dataStoreImpl$readDataOrHandleCorruption$1;
        DataStoreImpl dataStoreImpl;
        Ref.ObjectRef objectRef;
        Object objA;
        CorruptionException corruptionException;
        T t11;
        Ref.ObjectRef objectRef2;
        DataStoreImpl dataStoreImpl2;
        Ref.IntRef intRef;
        CorruptionException corruptionException2;
        Function1 dataStoreImpl$readDataOrHandleCorruption$3;
        Ref.IntRef intRef2;
        Ref.ObjectRef objectRef3;
        DataStoreImpl dataStoreImpl3;
        Object objX;
        DataStoreImpl dataStoreImpl4;
        Object obj;
        int iHashCode;
        Object objA2;
        boolean z11;
        int i11;
        Object obj2;
        Object obj3;
        Object obj4;
        Object objD;
        Object obj5;
        if (continuation instanceof DataStoreImpl$readDataOrHandleCorruption$1) {
            dataStoreImpl$readDataOrHandleCorruption$1 = (DataStoreImpl$readDataOrHandleCorruption$1) continuation;
            int i12 = dataStoreImpl$readDataOrHandleCorruption$1.label;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$readDataOrHandleCorruption$1.label = i12 - Integer.MIN_VALUE;
            } else {
                dataStoreImpl$readDataOrHandleCorruption$1 = new DataStoreImpl$readDataOrHandleCorruption$1(this, continuation);
            }
        } else {
            dataStoreImpl$readDataOrHandleCorruption$1 = new DataStoreImpl$readDataOrHandleCorruption$1(this, continuation);
        }
        Object obj6 = dataStoreImpl$readDataOrHandleCorruption$1.result;
        Object objF = IntrinsicsKt.f();
        ?? r11 = dataStoreImpl$readDataOrHandleCorruption$1.label;
        try {
            switch (r11) {
                case 0:
                    ResultKt.b(obj6);
                    try {
                        if (!z10) {
                            k kVarR = r();
                            dataStoreImpl$readDataOrHandleCorruption$1.L$0 = this;
                            dataStoreImpl$readDataOrHandleCorruption$1.Z$0 = z10;
                            dataStoreImpl$readDataOrHandleCorruption$1.label = 3;
                            Object objA3 = kVarR.a(dataStoreImpl$readDataOrHandleCorruption$1);
                            if (objA3 == objF) {
                                return objF;
                            }
                            dataStoreImpl3 = this;
                            obj4 = objA3;
                            int iIntValue = ((Number) obj4).intValue();
                            k kVarR2 = dataStoreImpl3.r();
                            DataStoreImpl$readDataOrHandleCorruption$2 dataStoreImpl$readDataOrHandleCorruption$2 = new DataStoreImpl$readDataOrHandleCorruption$2(dataStoreImpl3, iIntValue, null);
                            dataStoreImpl$readDataOrHandleCorruption$1.L$0 = dataStoreImpl3;
                            dataStoreImpl$readDataOrHandleCorruption$1.Z$0 = z10;
                            dataStoreImpl$readDataOrHandleCorruption$1.label = 4;
                            objD = kVarR2.d(dataStoreImpl$readDataOrHandleCorruption$2, dataStoreImpl$readDataOrHandleCorruption$1);
                            obj5 = objD;
                            if (objD == objF) {
                                return objF;
                            }
                            return (d) obj5;
                        }
                        dataStoreImpl$readDataOrHandleCorruption$1.L$0 = this;
                        dataStoreImpl$readDataOrHandleCorruption$1.Z$0 = z10;
                        dataStoreImpl$readDataOrHandleCorruption$1.label = 1;
                        objX = x(dataStoreImpl$readDataOrHandleCorruption$1);
                        if (objX == objF) {
                            return objF;
                        }
                        dataStoreImpl4 = this;
                        if (obj != null) {
                            try {
                                obj = objX;
                                iHashCode = obj.hashCode();
                            } catch (CorruptionException e11) {
                                e = e11;
                                dataStoreImpl = dataStoreImpl4;
                                objectRef = new Ref.ObjectRef();
                                c cVar = dataStoreImpl.f8560b;
                                dataStoreImpl$readDataOrHandleCorruption$1.L$0 = dataStoreImpl;
                                dataStoreImpl$readDataOrHandleCorruption$1.L$1 = e;
                                dataStoreImpl$readDataOrHandleCorruption$1.L$2 = objectRef;
                                dataStoreImpl$readDataOrHandleCorruption$1.L$3 = objectRef;
                                dataStoreImpl$readDataOrHandleCorruption$1.Z$0 = z10;
                                dataStoreImpl$readDataOrHandleCorruption$1.label = 5;
                                objA = cVar.a(e, dataStoreImpl$readDataOrHandleCorruption$1);
                                if (objA == objF) {
                                    return objF;
                                }
                                corruptionException = e;
                                t11 = objA;
                                objectRef2 = objectRef;
                                dataStoreImpl2 = dataStoreImpl;
                                objectRef2.element = t11;
                                intRef = new Ref.IntRef();
                                try {
                                    dataStoreImpl$readDataOrHandleCorruption$3 = new DataStoreImpl$readDataOrHandleCorruption$3(objectRef, dataStoreImpl2, intRef, null);
                                    dataStoreImpl$readDataOrHandleCorruption$1.L$0 = corruptionException;
                                    dataStoreImpl$readDataOrHandleCorruption$1.L$1 = objectRef;
                                    dataStoreImpl$readDataOrHandleCorruption$1.L$2 = intRef;
                                    dataStoreImpl$readDataOrHandleCorruption$1.L$3 = null;
                                    dataStoreImpl$readDataOrHandleCorruption$1.label = 6;
                                    if (dataStoreImpl2.q(z10, dataStoreImpl$readDataOrHandleCorruption$3, dataStoreImpl$readDataOrHandleCorruption$1) == objF) {
                                        return objF;
                                    }
                                    intRef2 = intRef;
                                    objectRef3 = objectRef;
                                    T t12 = objectRef3.element;
                                    return new d(t12, t12 != 0 ? t12.hashCode() : 0, intRef2.element);
                                } catch (Throwable th2) {
                                    th = th2;
                                    corruptionException2 = corruptionException;
                                    ExceptionsKt.a(corruptionException2, th);
                                    throw corruptionException2;
                                }
                            }
                        } else {
                            obj = objX;
                            iHashCode = 0;
                        }
                        k kVarR3 = dataStoreImpl4.r();
                        dataStoreImpl$readDataOrHandleCorruption$1.L$0 = dataStoreImpl4;
                        dataStoreImpl$readDataOrHandleCorruption$1.L$1 = obj;
                        dataStoreImpl$readDataOrHandleCorruption$1.Z$0 = z10;
                        dataStoreImpl$readDataOrHandleCorruption$1.I$0 = iHashCode;
                        dataStoreImpl$readDataOrHandleCorruption$1.label = 2;
                        objA2 = kVarR3.a(dataStoreImpl$readDataOrHandleCorruption$1);
                        if (objA2 == objF) {
                            return objF;
                        }
                        int i13 = iHashCode;
                        z11 = z10;
                        i11 = i13;
                        obj2 = obj;
                        obj3 = objA2;
                        return new d(obj2, i11, ((Number) obj3).intValue());
                    } catch (CorruptionException e12) {
                        e = e12;
                        dataStoreImpl = this;
                        objectRef = new Ref.ObjectRef();
                        c cVar2 = dataStoreImpl.f8560b;
                        dataStoreImpl$readDataOrHandleCorruption$1.L$0 = dataStoreImpl;
                        dataStoreImpl$readDataOrHandleCorruption$1.L$1 = e;
                        dataStoreImpl$readDataOrHandleCorruption$1.L$2 = objectRef;
                        dataStoreImpl$readDataOrHandleCorruption$1.L$3 = objectRef;
                        dataStoreImpl$readDataOrHandleCorruption$1.Z$0 = z10;
                        dataStoreImpl$readDataOrHandleCorruption$1.label = 5;
                        objA = cVar2.a(e, dataStoreImpl$readDataOrHandleCorruption$1);
                        if (objA == objF) {
                            return objF;
                        }
                        corruptionException = e;
                        t11 = objA;
                        objectRef2 = objectRef;
                        dataStoreImpl2 = dataStoreImpl;
                        objectRef2.element = t11;
                        intRef = new Ref.IntRef();
                        dataStoreImpl$readDataOrHandleCorruption$3 = new DataStoreImpl$readDataOrHandleCorruption$3(objectRef, dataStoreImpl2, intRef, null);
                        dataStoreImpl$readDataOrHandleCorruption$1.L$0 = corruptionException;
                        dataStoreImpl$readDataOrHandleCorruption$1.L$1 = objectRef;
                        dataStoreImpl$readDataOrHandleCorruption$1.L$2 = intRef;
                        dataStoreImpl$readDataOrHandleCorruption$1.L$3 = null;
                        dataStoreImpl$readDataOrHandleCorruption$1.label = 6;
                        if (dataStoreImpl2.q(z10, dataStoreImpl$readDataOrHandleCorruption$3, dataStoreImpl$readDataOrHandleCorruption$1) == objF) {
                            return objF;
                        }
                        intRef2 = intRef;
                        objectRef3 = objectRef;
                        T t13 = objectRef3.element;
                        return new d(t13, t13 != 0 ? t13.hashCode() : 0, intRef2.element);
                    }
                case 1:
                    z10 = dataStoreImpl$readDataOrHandleCorruption$1.Z$0;
                    DataStoreImpl dataStoreImpl5 = (DataStoreImpl) dataStoreImpl$readDataOrHandleCorruption$1.L$0;
                    ResultKt.b(obj6);
                    dataStoreImpl4 = dataStoreImpl5;
                    obj = obj6;
                    if (obj != null) {
                        obj = objX;
                        iHashCode = obj.hashCode();
                    } else {
                        obj = objX;
                        iHashCode = 0;
                    }
                    k kVarR4 = dataStoreImpl4.r();
                    dataStoreImpl$readDataOrHandleCorruption$1.L$0 = dataStoreImpl4;
                    dataStoreImpl$readDataOrHandleCorruption$1.L$1 = obj;
                    dataStoreImpl$readDataOrHandleCorruption$1.Z$0 = z10;
                    dataStoreImpl$readDataOrHandleCorruption$1.I$0 = iHashCode;
                    dataStoreImpl$readDataOrHandleCorruption$1.label = 2;
                    objA2 = kVarR4.a(dataStoreImpl$readDataOrHandleCorruption$1);
                    if (objA2 == objF) {
                        return objF;
                    }
                    int i14 = iHashCode;
                    z11 = z10;
                    i11 = i14;
                    obj2 = obj;
                    obj3 = objA2;
                    return new d(obj2, i11, ((Number) obj3).intValue());
                case 2:
                    i11 = dataStoreImpl$readDataOrHandleCorruption$1.I$0;
                    z11 = dataStoreImpl$readDataOrHandleCorruption$1.Z$0;
                    Object obj7 = dataStoreImpl$readDataOrHandleCorruption$1.L$1;
                    dataStoreImpl4 = (DataStoreImpl) dataStoreImpl$readDataOrHandleCorruption$1.L$0;
                    try {
                        ResultKt.b(obj6);
                        obj2 = obj7;
                        obj3 = obj6;
                        return new d(obj2, i11, ((Number) obj3).intValue());
                    } catch (CorruptionException e13) {
                        e = e13;
                        z10 = z11;
                        dataStoreImpl = dataStoreImpl4;
                        objectRef = new Ref.ObjectRef();
                        c cVar3 = dataStoreImpl.f8560b;
                        dataStoreImpl$readDataOrHandleCorruption$1.L$0 = dataStoreImpl;
                        dataStoreImpl$readDataOrHandleCorruption$1.L$1 = e;
                        dataStoreImpl$readDataOrHandleCorruption$1.L$2 = objectRef;
                        dataStoreImpl$readDataOrHandleCorruption$1.L$3 = objectRef;
                        dataStoreImpl$readDataOrHandleCorruption$1.Z$0 = z10;
                        dataStoreImpl$readDataOrHandleCorruption$1.label = 5;
                        objA = cVar3.a(e, dataStoreImpl$readDataOrHandleCorruption$1);
                        if (objA == objF) {
                            return objF;
                        }
                        corruptionException = e;
                        t11 = objA;
                        objectRef2 = objectRef;
                        dataStoreImpl2 = dataStoreImpl;
                        objectRef2.element = t11;
                        intRef = new Ref.IntRef();
                        dataStoreImpl$readDataOrHandleCorruption$3 = new DataStoreImpl$readDataOrHandleCorruption$3(objectRef, dataStoreImpl2, intRef, null);
                        dataStoreImpl$readDataOrHandleCorruption$1.L$0 = corruptionException;
                        dataStoreImpl$readDataOrHandleCorruption$1.L$1 = objectRef;
                        dataStoreImpl$readDataOrHandleCorruption$1.L$2 = intRef;
                        dataStoreImpl$readDataOrHandleCorruption$1.L$3 = null;
                        dataStoreImpl$readDataOrHandleCorruption$1.label = 6;
                        if (dataStoreImpl2.q(z10, dataStoreImpl$readDataOrHandleCorruption$3, dataStoreImpl$readDataOrHandleCorruption$1) == objF) {
                            return objF;
                        }
                        intRef2 = intRef;
                        objectRef3 = objectRef;
                        T t14 = objectRef3.element;
                        return new d(t14, t14 != 0 ? t14.hashCode() : 0, intRef2.element);
                    }
                case 3:
                    z10 = dataStoreImpl$readDataOrHandleCorruption$1.Z$0;
                    dataStoreImpl3 = (DataStoreImpl) dataStoreImpl$readDataOrHandleCorruption$1.L$0;
                    ResultKt.b(obj6);
                    obj4 = obj6;
                    int iIntValue2 = ((Number) obj4).intValue();
                    k kVarR5 = dataStoreImpl3.r();
                    DataStoreImpl$readDataOrHandleCorruption$2 dataStoreImpl$readDataOrHandleCorruption$4 = new DataStoreImpl$readDataOrHandleCorruption$2(dataStoreImpl3, iIntValue2, null);
                    dataStoreImpl$readDataOrHandleCorruption$1.L$0 = dataStoreImpl3;
                    dataStoreImpl$readDataOrHandleCorruption$1.Z$0 = z10;
                    dataStoreImpl$readDataOrHandleCorruption$1.label = 4;
                    objD = kVarR5.d(dataStoreImpl$readDataOrHandleCorruption$4, dataStoreImpl$readDataOrHandleCorruption$1);
                    obj5 = objD;
                    if (objD == objF) {
                        return objF;
                    }
                    return (d) obj5;
                case 4:
                    boolean z12 = dataStoreImpl$readDataOrHandleCorruption$1.Z$0;
                    ResultKt.b(obj6);
                    obj5 = obj6;
                    return (d) obj5;
                case 5:
                    z10 = dataStoreImpl$readDataOrHandleCorruption$1.Z$0;
                    Ref.ObjectRef objectRef4 = (Ref.ObjectRef) dataStoreImpl$readDataOrHandleCorruption$1.L$3;
                    Ref.ObjectRef objectRef5 = (Ref.ObjectRef) dataStoreImpl$readDataOrHandleCorruption$1.L$2;
                    corruptionException = (CorruptionException) dataStoreImpl$readDataOrHandleCorruption$1.L$1;
                    DataStoreImpl dataStoreImpl6 = (DataStoreImpl) dataStoreImpl$readDataOrHandleCorruption$1.L$0;
                    ResultKt.b(obj6);
                    objectRef2 = objectRef4;
                    objectRef = objectRef5;
                    dataStoreImpl2 = dataStoreImpl6;
                    t11 = obj6;
                    objectRef2.element = t11;
                    intRef = new Ref.IntRef();
                    dataStoreImpl$readDataOrHandleCorruption$3 = new DataStoreImpl$readDataOrHandleCorruption$3(objectRef, dataStoreImpl2, intRef, null);
                    dataStoreImpl$readDataOrHandleCorruption$1.L$0 = corruptionException;
                    dataStoreImpl$readDataOrHandleCorruption$1.L$1 = objectRef;
                    dataStoreImpl$readDataOrHandleCorruption$1.L$2 = intRef;
                    dataStoreImpl$readDataOrHandleCorruption$1.L$3 = null;
                    dataStoreImpl$readDataOrHandleCorruption$1.label = 6;
                    if (dataStoreImpl2.q(z10, dataStoreImpl$readDataOrHandleCorruption$3, dataStoreImpl$readDataOrHandleCorruption$1) == objF) {
                        return objF;
                    }
                    intRef2 = intRef;
                    objectRef3 = objectRef;
                    T t15 = objectRef3.element;
                    return new d(t15, t15 != 0 ? t15.hashCode() : 0, intRef2.element);
                case 6:
                    intRef2 = (Ref.IntRef) dataStoreImpl$readDataOrHandleCorruption$1.L$2;
                    objectRef3 = (Ref.ObjectRef) dataStoreImpl$readDataOrHandleCorruption$1.L$1;
                    corruptionException2 = (CorruptionException) dataStoreImpl$readDataOrHandleCorruption$1.L$0;
                    try {
                        ResultKt.b(obj6);
                        T t16 = objectRef3.element;
                        return new d(t16, t16 != 0 ? t16.hashCode() : 0, intRef2.element);
                    } catch (Throwable th3) {
                        th = th3;
                        ExceptionsKt.a(corruptionException2, th);
                        throw corruptionException2;
                    }
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (CorruptionException e14) {
            e = e14;
            dataStoreImpl = r11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object z(boolean z10, Continuation continuation) {
        return kotlinx.coroutines.i.g(this.f8561c.getCoroutineContext(), new DataStoreImpl$readState$2(this, z10, null), continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object B(Object obj, boolean z10, Continuation continuation) throws Throwable {
        DataStoreImpl$writeData$1 dataStoreImpl$writeData$1;
        Ref.IntRef intRef;
        if (continuation instanceof DataStoreImpl$writeData$1) {
            dataStoreImpl$writeData$1 = (DataStoreImpl$writeData$1) continuation;
            int i11 = dataStoreImpl$writeData$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$writeData$1.label = i11 - Integer.MIN_VALUE;
            } else {
                dataStoreImpl$writeData$1 = new DataStoreImpl$writeData$1(this, continuation);
            }
        } else {
            dataStoreImpl$writeData$1 = new DataStoreImpl$writeData$1(this, continuation);
        }
        Object obj2 = dataStoreImpl$writeData$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = dataStoreImpl$writeData$1.label;
        if (i12 == 0) {
            ResultKt.b(obj2);
            Ref.IntRef intRef2 = new Ref.IntRef();
            t tVarS = s();
            DataStoreImpl$writeData$2 dataStoreImpl$writeData$2 = new DataStoreImpl$writeData$2(intRef2, this, obj, z10, null);
            dataStoreImpl$writeData$1.L$0 = intRef2;
            dataStoreImpl$writeData$1.label = 1;
            if (tVarS.b(dataStoreImpl$writeData$2, dataStoreImpl$writeData$1) == objF) {
                return objF;
            }
            intRef = intRef2;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            intRef = (Ref.IntRef) dataStoreImpl$writeData$1.L$0;
            ResultKt.b(obj2);
        }
        return Boxing.d(intRef.element);
    }

    @Override // androidx.datastore.core.f
    public Object a(Function2 function2, Continuation continuation) {
        v vVar = (v) continuation.getContext().get(v.a.C0073a.f8631a);
        if (vVar != null) {
            vVar.a(this);
        }
        return kotlinx.coroutines.i.g(new v(vVar, this), new DataStoreImpl$updateData$2(this, function2, null), continuation);
    }

    @Override // androidx.datastore.core.f
    public kotlinx.coroutines.flow.b getData() {
        return this.f8562d;
    }

    public final t s() {
        return (t) this.f8568j.getValue();
    }
}
