package androidx.room.driver;

import androidx.room.Transactor;
import androidx.room.coroutines.ConnectionPool;
import androidx.room.coroutines.j;
import androidx.room.n0;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
final class SupportSQLitePooledConnection implements Transactor, j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.room.driver.a f14656a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Transactor.SQLiteTransactionType f14657b;

    private final class a implements n0, j {
        public a() {
        }

        @Override // androidx.room.coroutines.j
        public z3.b c() {
            return SupportSQLitePooledConnection.this.c();
        }

        @Override // androidx.room.p
        public Object d(String str, Function1 function1, Continuation continuation) {
            return SupportSQLitePooledConnection.this.d(str, function1, continuation);
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f14659a;

        static {
            int[] iArr = new int[Transactor.SQLiteTransactionType.values().length];
            try {
                iArr[Transactor.SQLiteTransactionType.DEFERRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Transactor.SQLiteTransactionType.IMMEDIATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Transactor.SQLiteTransactionType.EXCLUSIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f14659a = iArr;
        }
    }

    public SupportSQLitePooledConnection(androidx.room.driver.a delegate) {
        Intrinsics.h(delegate, "delegate");
        this.f14656a = delegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:50:0x00af  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [androidx.room.Transactor$SQLiteTransactionType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r7v1, types: [a4.d] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r8v0, types: [kotlin.jvm.functions.Function2] */
    /* JADX WARN: Type inference failed for: r8v1, types: [androidx.room.driver.SupportSQLitePooledConnection] */
    /* JADX WARN: Type inference failed for: r8v2 */
    public final Object f(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, Continuation continuation) throws Throwable {
        SupportSQLitePooledConnection$transaction$1 supportSQLitePooledConnection$transaction$1;
        SupportSQLitePooledConnection supportSQLitePooledConnection;
        ConnectionPool.RollbackException e11;
        a4.d dVar;
        if (continuation instanceof SupportSQLitePooledConnection$transaction$1) {
            supportSQLitePooledConnection$transaction$1 = (SupportSQLitePooledConnection$transaction$1) continuation;
            int i11 = supportSQLitePooledConnection$transaction$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                supportSQLitePooledConnection$transaction$1.label = i11 - Integer.MIN_VALUE;
            } else {
                supportSQLitePooledConnection$transaction$1 = new SupportSQLitePooledConnection$transaction$1(this, continuation);
            }
        } else {
            supportSQLitePooledConnection$transaction$1 = new SupportSQLitePooledConnection$transaction$1(this, continuation);
        }
        Object obj = supportSQLitePooledConnection$transaction$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = supportSQLitePooledConnection$transaction$1.label;
        try {
            if (i12 == 0) {
                ResultKt.b(obj);
                a4.d dVarD = this.f14656a.d();
                if (!dVarD.s0()) {
                    this.f14657b = sQLiteTransactionType;
                }
                int i13 = b.f14659a[sQLiteTransactionType.ordinal()];
                if (i13 == 1) {
                    dVarD.Y();
                } else if (i13 == 2) {
                    dVarD.K();
                } else {
                    if (i13 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    dVarD.A();
                }
                try {
                    a aVar = new a();
                    supportSQLitePooledConnection$transaction$1.L$0 = this;
                    supportSQLitePooledConnection$transaction$1.L$1 = dVarD;
                    supportSQLitePooledConnection$transaction$1.label = 1;
                    Object objInvoke = function2.invoke(aVar, supportSQLitePooledConnection$transaction$1);
                    if (objInvoke == objF) {
                        return objF;
                    }
                    supportSQLitePooledConnection = this;
                    obj = objInvoke;
                    dVar = dVarD;
                } catch (ConnectionPool.RollbackException e12) {
                    supportSQLitePooledConnection = this;
                    e11 = e12;
                    dVar = dVarD;
                    Object result = e11.getResult();
                    dVar.L();
                    if (!dVar.s0()) {
                        supportSQLitePooledConnection.f14657b = null;
                    }
                    return result;
                } catch (Throwable th2) {
                    function2 = this;
                    th = th2;
                    sQLiteTransactionType = dVarD;
                    sQLiteTransactionType.L();
                    if (!sQLiteTransactionType.s0()) {
                        function2.f14657b = null;
                    }
                    throw th;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                dVar = (a4.d) supportSQLitePooledConnection$transaction$1.L$1;
                supportSQLitePooledConnection = (SupportSQLitePooledConnection) supportSQLitePooledConnection$transaction$1.L$0;
                try {
                    ResultKt.b(obj);
                } catch (ConnectionPool.RollbackException e13) {
                    e11 = e13;
                    Object result2 = e11.getResult();
                    dVar.L();
                    if (!dVar.s0()) {
                        supportSQLitePooledConnection.f14657b = null;
                    }
                    return result2;
                }
            }
            dVar.I();
            dVar.L();
            if (!dVar.s0()) {
                supportSQLitePooledConnection.f14657b = null;
            }
            return obj;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // androidx.room.Transactor
    public Object a(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, Continuation continuation) {
        return f(sQLiteTransactionType, function2, continuation);
    }

    @Override // androidx.room.Transactor
    public Object b(Continuation continuation) {
        return Boxing.a(this.f14656a.d().s0());
    }

    @Override // androidx.room.coroutines.j
    public z3.b c() {
        return this.f14656a;
    }

    @Override // androidx.room.p
    public Object d(String str, Function1 function1, Continuation continuation) throws Exception {
        d dVarD0 = this.f14656a.D0(str);
        try {
            Object objInvoke = function1.invoke(dVarD0);
            AutoCloseableKt.a(dVarD0, null);
            return objInvoke;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(dVarD0, th2);
                throw th3;
            }
        }
    }
}
