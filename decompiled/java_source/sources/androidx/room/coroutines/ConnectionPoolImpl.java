package androidx.room.coroutines;

import android.database.SQLException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ExceptionsKt;
import kotlin.KotlinNothingValueException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes2.dex */
public final class ConnectionPoolImpl implements ConnectionPool {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z3.c f14599a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Pool f14600b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Pool f14601c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ThreadLocal f14602d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicBoolean f14603e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f14604f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f14605g;

    public ConnectionPoolImpl(final z3.c driver, final String fileName) {
        Intrinsics.h(driver, "driver");
        Intrinsics.h(fileName, "fileName");
        this.f14602d = new ThreadLocal();
        this.f14603e = new AtomicBoolean(false);
        Duration.Companion companion = Duration.INSTANCE;
        this.f14604f = DurationKt.s(30, DurationUnit.SECONDS);
        this.f14599a = driver;
        Pool pool = new Pool(1, new Function0() { // from class: androidx.room.coroutines.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ConnectionPoolImpl.k(driver, fileName);
            }
        });
        this.f14600b = pool;
        this.f14601c = pool;
    }

    public ConnectionPoolImpl(final z3.c driver, final String fileName, int i11, int i12) {
        Intrinsics.h(driver, "driver");
        Intrinsics.h(fileName, "fileName");
        this.f14602d = new ThreadLocal();
        this.f14603e = new AtomicBoolean(false);
        Duration.Companion companion = Duration.INSTANCE;
        this.f14604f = DurationKt.s(30, DurationUnit.SECONDS);
        if (i11 <= 0) {
            throw new IllegalArgumentException("Maximum number of readers must be greater than 0");
        }
        if (i12 <= 0) {
            throw new IllegalArgumentException("Maximum number of writers must be greater than 0");
        }
        this.f14599a = driver;
        this.f14600b = new Pool(i11, new Function0() { // from class: androidx.room.coroutines.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ConnectionPoolImpl.l(driver, fileName);
            }
        });
        this.f14601c = new Pool(i12, new Function0() { // from class: androidx.room.coroutines.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ConnectionPoolImpl.m(driver, fileName);
            }
        });
    }

    private final boolean isClosed() {
        return this.f14603e.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final z3.b k(z3.c cVar, String str) {
        return cVar.open(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final z3.b l(z3.c cVar, String str) throws Exception {
        z3.b bVarOpen = cVar.open(str);
        z3.a.a(bVarOpen, "PRAGMA query_only = 1");
        return bVarOpen;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final z3.b m(z3.c cVar, String str) {
        return cVar.open(str);
    }

    private final CoroutineContext n(PooledConnectionImpl pooledConnectionImpl) {
        return new c(pooledConnectionImpl).plus(x3.d.a(this.f14602d, pooledConnectionImpl));
    }

    private final void o(boolean z10) {
        String str = z10 ? "reader" : "writer";
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Timed out attempting to acquire a " + str + " connection.");
        sb2.append('\n');
        sb2.append('\n');
        sb2.append("Writer pool:");
        sb2.append('\n');
        this.f14601c.d(sb2);
        sb2.append("Reader pool:");
        sb2.append('\n');
        this.f14600b.d(sb2);
        try {
            z3.a.b(5, sb2.toString());
            throw new KotlinNothingValueException();
        } catch (SQLException e11) {
            if (this.f14605g) {
                throw e11;
            }
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p(ConnectionPoolImpl connectionPoolImpl, boolean z10) {
        connectionPoolImpl.o(z10);
        return Unit.f67061a;
    }

    @Override // androidx.room.coroutines.ConnectionPool, java.lang.AutoCloseable
    public void close() {
        if (this.f14603e.compareAndSet(false, true)) {
            this.f14600b.c();
            this.f14601c.c();
        }
    }

    /* JADX WARN: Code duplicated, block: B:66:0x0137 A[Catch: all -> 0x0171, TRY_LEAVE, TryCatch #1 {all -> 0x0171, blocks: (B:60:0x011d, B:64:0x012c, B:66:0x0137, B:76:0x0176, B:77:0x017d), top: B:95:0x011d }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0156 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:69:0x0157  */
    /* JADX WARN: Code duplicated, block: B:72:0x015f A[Catch: all -> 0x0170, TRY_LEAVE, TryCatch #0 {all -> 0x0170, blocks: (B:70:0x0159, B:72:0x015f), top: B:93:0x0159 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x0176 A[Catch: all -> 0x0171, TRY_ENTER, TryCatch #1 {all -> 0x0171, blocks: (B:60:0x011d, B:64:0x012c, B:66:0x0137, B:76:0x0176, B:77:0x017d), top: B:95:0x011d }] */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [T, androidx.room.coroutines.PooledConnectionImpl] */
    @Override // androidx.room.coroutines.ConnectionPool
    public Object f(boolean z10, Function2 function2, Continuation continuation) throws Throwable {
        ConnectionPoolImpl$useConnection$1 connectionPoolImpl$useConnection$1;
        Ref.ObjectRef objectRef;
        Pool pool;
        Ref.ObjectRef objectRef2;
        ConnectionPoolImpl connectionPoolImpl;
        Function2 function3;
        Ref.ObjectRef objectRef3;
        Pool pool2;
        CoroutineContext coroutineContext;
        Throwable th2;
        T t11;
        PooledConnectionImpl pooledConnectionImpl;
        final boolean z11 = z10;
        if (continuation instanceof ConnectionPoolImpl$useConnection$1) {
            connectionPoolImpl$useConnection$1 = (ConnectionPoolImpl$useConnection$1) continuation;
            int i11 = connectionPoolImpl$useConnection$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                connectionPoolImpl$useConnection$1.label = i11 - Integer.MIN_VALUE;
            } else {
                connectionPoolImpl$useConnection$1 = new ConnectionPoolImpl$useConnection$1(this, continuation);
            }
        } else {
            connectionPoolImpl$useConnection$1 = new ConnectionPoolImpl$useConnection$1(this, continuation);
        }
        Object objInvoke = connectionPoolImpl$useConnection$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = connectionPoolImpl$useConnection$1.label;
        boolean z12 = false;
        if (i12 != 0) {
            if (i12 == 1 || i12 == 2) {
                ResultKt.b(objInvoke);
                return objInvoke;
            }
            if (i12 == 3) {
                z11 = connectionPoolImpl$useConnection$1.Z$0;
                objectRef3 = (Ref.ObjectRef) connectionPoolImpl$useConnection$1.L$5;
                CoroutineContext coroutineContext2 = (CoroutineContext) connectionPoolImpl$useConnection$1.L$4;
                Ref.ObjectRef objectRef4 = (Ref.ObjectRef) connectionPoolImpl$useConnection$1.L$3;
                pool2 = (Pool) connectionPoolImpl$useConnection$1.L$2;
                function3 = (Function2) connectionPoolImpl$useConnection$1.L$1;
                connectionPoolImpl = (ConnectionPoolImpl) connectionPoolImpl$useConnection$1.L$0;
                try {
                    ResultKt.b(objInvoke);
                    coroutineContext = coroutineContext2;
                    objectRef = objectRef4;
                    try {
                        i iVarK = ((i) objInvoke).k(coroutineContext);
                        if (connectionPoolImpl.f14600b != connectionPoolImpl.f14601c && z11) {
                            z12 = true;
                        }
                        objectRef3.element = new PooledConnectionImpl(iVarK, z12);
                        t11 = objectRef.element;
                        if (t11 != 0) {
                            throw new IllegalArgumentException("Required value was null.");
                        }
                        CoroutineContext coroutineContextN = connectionPoolImpl.n((PooledConnectionImpl) t11);
                        ConnectionPoolImpl$useConnection$4 connectionPoolImpl$useConnection$4 = new ConnectionPoolImpl$useConnection$4(function3, objectRef, null);
                        connectionPoolImpl$useConnection$1.L$0 = pool2;
                        connectionPoolImpl$useConnection$1.L$1 = objectRef;
                        connectionPoolImpl$useConnection$1.L$2 = null;
                        connectionPoolImpl$useConnection$1.L$3 = null;
                        connectionPoolImpl$useConnection$1.L$4 = null;
                        connectionPoolImpl$useConnection$1.L$5 = null;
                        connectionPoolImpl$useConnection$1.label = 4;
                        objInvoke = kotlinx.coroutines.i.g(coroutineContextN, connectionPoolImpl$useConnection$4, connectionPoolImpl$useConnection$1);
                        if (objInvoke == objF) {
                            return objF;
                        }
                        objectRef2 = objectRef;
                        pool = pool2;
                    } catch (Throwable th3) {
                        th2 = th3;
                        objectRef2 = objectRef;
                        pool = pool2;
                        throw th2;
                    }
                } catch (Throwable th4) {
                    th2 = th4;
                    objectRef2 = objectRef4;
                    pool = pool2;
                    throw th2;
                }
            } else {
                if (i12 != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                objectRef2 = (Ref.ObjectRef) connectionPoolImpl$useConnection$1.L$1;
                pool = (Pool) connectionPoolImpl$useConnection$1.L$0;
                try {
                    ResultKt.b(objInvoke);
                } catch (Throwable th5) {
                    th = th5;
                    th2 = th;
                    throw th2;
                }
            }
            try {
                pooledConnectionImpl = (PooledConnectionImpl) objectRef2.element;
                if (pooledConnectionImpl != null) {
                    pooledConnectionImpl.n();
                    pooledConnectionImpl.k().l();
                    pool.e(pooledConnectionImpl.k());
                }
            } catch (Throwable unused) {
            }
            return objInvoke;
        }
        ResultKt.b(objInvoke);
        if (isClosed()) {
            z3.a.b(21, "Connection pool is closed");
            throw new KotlinNothingValueException();
        }
        PooledConnectionImpl pooledConnectionImplA = (PooledConnectionImpl) this.f14602d.get();
        if (pooledConnectionImplA == null) {
            c cVar = (c) connectionPoolImpl$useConnection$1.getF67179a().get(c.f14637b);
            pooledConnectionImplA = cVar != null ? cVar.a() : null;
        }
        if (pooledConnectionImplA != null) {
            if (!z11 && pooledConnectionImplA.l()) {
                z3.a.b(1, "Cannot upgrade connection from reader to writer");
                throw new KotlinNothingValueException();
            }
            if (connectionPoolImpl$useConnection$1.getF67179a().get(c.f14637b) == null) {
                CoroutineContext coroutineContextN2 = n(pooledConnectionImplA);
                ConnectionPoolImpl$useConnection$2 connectionPoolImpl$useConnection$2 = new ConnectionPoolImpl$useConnection$2(function2, pooledConnectionImplA, null);
                connectionPoolImpl$useConnection$1.label = 1;
                objInvoke = kotlinx.coroutines.i.g(coroutineContextN2, connectionPoolImpl$useConnection$2, connectionPoolImpl$useConnection$1);
                if (objInvoke == objF) {
                    return objF;
                }
            } else {
                connectionPoolImpl$useConnection$1.label = 2;
                objInvoke = function2.invoke(pooledConnectionImplA, connectionPoolImpl$useConnection$1);
                if (objInvoke == objF) {
                    return objF;
                }
            }
            return objInvoke;
        }
        Pool pool3 = z11 ? this.f14600b : this.f14601c;
        objectRef = new Ref.ObjectRef();
        try {
            CoroutineContext f67179a = connectionPoolImpl$useConnection$1.getF67179a();
            long j11 = this.f14604f;
            Function0 function0 = new Function0() { // from class: androidx.room.coroutines.g
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ConnectionPoolImpl.p(this.f14645a, z11);
                }
            };
            connectionPoolImpl$useConnection$1.L$0 = this;
            connectionPoolImpl$useConnection$1.L$1 = function2;
            connectionPoolImpl$useConnection$1.L$2 = pool3;
            connectionPoolImpl$useConnection$1.L$3 = objectRef;
            connectionPoolImpl$useConnection$1.L$4 = f67179a;
            connectionPoolImpl$useConnection$1.L$5 = objectRef;
            connectionPoolImpl$useConnection$1.Z$0 = z11;
            connectionPoolImpl$useConnection$1.label = 3;
            Object objB = pool3.b(j11, function0, connectionPoolImpl$useConnection$1);
            if (objB == objF) {
                return objF;
            }
            connectionPoolImpl = this;
            function3 = function2;
            objectRef3 = objectRef;
            pool2 = pool3;
            objInvoke = objB;
            coroutineContext = f67179a;
            i iVarK2 = ((i) objInvoke).k(coroutineContext);
            if (connectionPoolImpl.f14600b != connectionPoolImpl.f14601c) {
                z12 = true;
            }
            objectRef3.element = new PooledConnectionImpl(iVarK2, z12);
            t11 = objectRef.element;
            if (t11 != 0) {
                throw new IllegalArgumentException("Required value was null.");
            }
            CoroutineContext coroutineContextN3 = connectionPoolImpl.n((PooledConnectionImpl) t11);
            ConnectionPoolImpl$useConnection$4 connectionPoolImpl$useConnection$5 = new ConnectionPoolImpl$useConnection$4(function3, objectRef, null);
            connectionPoolImpl$useConnection$1.L$0 = pool2;
            connectionPoolImpl$useConnection$1.L$1 = objectRef;
            connectionPoolImpl$useConnection$1.L$2 = null;
            connectionPoolImpl$useConnection$1.L$3 = null;
            connectionPoolImpl$useConnection$1.L$4 = null;
            connectionPoolImpl$useConnection$1.L$5 = null;
            connectionPoolImpl$useConnection$1.label = 4;
            objInvoke = kotlinx.coroutines.i.g(coroutineContextN3, connectionPoolImpl$useConnection$5, connectionPoolImpl$useConnection$1);
            if (objInvoke == objF) {
                return objF;
            }
            objectRef2 = objectRef;
            pool = pool2;
            pooledConnectionImpl = (PooledConnectionImpl) objectRef2.element;
            if (pooledConnectionImpl != null) {
                pooledConnectionImpl.n();
                pooledConnectionImpl.k().l();
                pool.e(pooledConnectionImpl.k());
            }
            return objInvoke;
        } catch (Throwable th6) {
            th = th6;
            pool = pool3;
            objectRef2 = objectRef;
            th2 = th;
            throw th2;
        }
        try {
            throw th2;
        } catch (Throwable th7) {
            try {
                PooledConnectionImpl pooledConnectionImpl2 = (PooledConnectionImpl) objectRef2.element;
                if (pooledConnectionImpl2 == null) {
                    throw th7;
                }
                pooledConnectionImpl2.n();
                pooledConnectionImpl2.k().l();
                pool.e(pooledConnectionImpl2.k());
                throw th7;
            } catch (Throwable th8) {
                ExceptionsKt.a(th2, th8);
                throw th7;
            }
        }
    }
}
