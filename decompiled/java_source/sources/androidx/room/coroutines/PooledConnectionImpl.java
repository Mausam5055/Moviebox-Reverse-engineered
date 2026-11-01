package androidx.room.coroutines;

import android.database.SQLException;
import androidx.room.Transactor;
import androidx.room.n0;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ExceptionsKt;
import kotlin.KotlinNothingValueException;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
final class PooledConnectionImpl implements Transactor, j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f14622a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f14623b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayDeque f14624c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicBoolean f14625d;

    private final class a implements z3.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final z3.e f14626a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f14627b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ PooledConnectionImpl f14628c;

        public a(PooledConnectionImpl pooledConnectionImpl, z3.e delegate) {
            Intrinsics.h(delegate, "delegate");
            this.f14628c = pooledConnectionImpl;
            this.f14626a = delegate;
            this.f14627b = x3.d.b();
        }

        @Override // z3.e
        public boolean A0() {
            if (this.f14628c.m()) {
                z3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14627b == x3.d.b()) {
                return this.f14626a.A0();
            }
            z3.a.b(21, "Attempted to use statement on a different thread");
            throw new KotlinNothingValueException();
        }

        @Override // z3.e
        public void a(int i11, double d11) {
            if (this.f14628c.m()) {
                z3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14627b == x3.d.b()) {
                this.f14626a.a(i11, d11);
            } else {
                z3.a.b(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
        }

        @Override // z3.e
        public void c(int i11, long j11) {
            if (this.f14628c.m()) {
                z3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14627b == x3.d.b()) {
                this.f14626a.c(i11, j11);
            } else {
                z3.a.b(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
        }

        @Override // z3.e, java.lang.AutoCloseable
        public void close() {
            if (this.f14628c.m()) {
                z3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14627b == x3.d.b()) {
                this.f14626a.close();
            } else {
                z3.a.b(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
        }

        @Override // z3.e
        public void e(int i11, byte[] value) {
            Intrinsics.h(value, "value");
            if (this.f14628c.m()) {
                z3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14627b == x3.d.b()) {
                this.f14626a.e(i11, value);
            } else {
                z3.a.b(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
        }

        @Override // z3.e
        public void g(int i11) {
            if (this.f14628c.m()) {
                z3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14627b == x3.d.b()) {
                this.f14626a.g(i11);
            } else {
                z3.a.b(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
        }

        @Override // z3.e
        public byte[] getBlob(int i11) {
            if (this.f14628c.m()) {
                z3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14627b == x3.d.b()) {
                return this.f14626a.getBlob(i11);
            }
            z3.a.b(21, "Attempted to use statement on a different thread");
            throw new KotlinNothingValueException();
        }

        @Override // z3.e
        public /* synthetic */ boolean getBoolean(int i11) {
            return z3.d.a(this, i11);
        }

        @Override // z3.e
        public int getColumnCount() {
            if (this.f14628c.m()) {
                z3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14627b == x3.d.b()) {
                return this.f14626a.getColumnCount();
            }
            z3.a.b(21, "Attempted to use statement on a different thread");
            throw new KotlinNothingValueException();
        }

        @Override // z3.e
        public String getColumnName(int i11) {
            if (this.f14628c.m()) {
                z3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14627b == x3.d.b()) {
                return this.f14626a.getColumnName(i11);
            }
            z3.a.b(21, "Attempted to use statement on a different thread");
            throw new KotlinNothingValueException();
        }

        @Override // z3.e
        public double getDouble(int i11) {
            if (this.f14628c.m()) {
                z3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14627b == x3.d.b()) {
                return this.f14626a.getDouble(i11);
            }
            z3.a.b(21, "Attempted to use statement on a different thread");
            throw new KotlinNothingValueException();
        }

        @Override // z3.e
        public long getLong(int i11) {
            if (this.f14628c.m()) {
                z3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14627b == x3.d.b()) {
                return this.f14626a.getLong(i11);
            }
            z3.a.b(21, "Attempted to use statement on a different thread");
            throw new KotlinNothingValueException();
        }

        @Override // z3.e
        public boolean isNull(int i11) {
            if (this.f14628c.m()) {
                z3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14627b == x3.d.b()) {
                return this.f14626a.isNull(i11);
            }
            z3.a.b(21, "Attempted to use statement on a different thread");
            throw new KotlinNothingValueException();
        }

        @Override // z3.e
        public void j(int i11, String value) {
            Intrinsics.h(value, "value");
            if (this.f14628c.m()) {
                z3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14627b == x3.d.b()) {
                this.f14626a.j(i11, value);
            } else {
                z3.a.b(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
        }

        @Override // z3.e
        public String n0(int i11) {
            if (this.f14628c.m()) {
                z3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14627b == x3.d.b()) {
                return this.f14626a.n0(i11);
            }
            z3.a.b(21, "Attempted to use statement on a different thread");
            throw new KotlinNothingValueException();
        }

        @Override // z3.e
        public void reset() {
            if (this.f14628c.m()) {
                z3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14627b == x3.d.b()) {
                this.f14626a.reset();
            } else {
                z3.a.b(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
        }
    }

    private final class b implements n0, j {
        public b() {
        }

        @Override // androidx.room.coroutines.j
        public z3.b c() {
            return PooledConnectionImpl.this.c();
        }

        @Override // androidx.room.p
        public Object d(String str, Function1 function1, Continuation continuation) {
            return PooledConnectionImpl.this.d(str, function1, continuation);
        }
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f14630a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f14631b;

        public c(int i11, boolean z10) {
            this.f14630a = i11;
            this.f14631b = z10;
        }

        public final int a() {
            return this.f14630a;
        }

        public final boolean b() {
            return this.f14631b;
        }
    }

    public /* synthetic */ class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f14632a;

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
            f14632a = iArr;
        }
    }

    public PooledConnectionImpl(i delegate, boolean z10) {
        Intrinsics.h(delegate, "delegate");
        this.f14622a = delegate;
        this.f14623b = z10;
        this.f14624c = new ArrayDeque();
        this.f14625d = new AtomicBoolean(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object i(Transactor.SQLiteTransactionType sQLiteTransactionType, Continuation continuation) throws Throwable {
        PooledConnectionImpl$beginTransaction$1 pooledConnectionImpl$beginTransaction$1;
        kotlinx.coroutines.sync.a aVar;
        PooledConnectionImpl pooledConnectionImpl;
        if (continuation instanceof PooledConnectionImpl$beginTransaction$1) {
            pooledConnectionImpl$beginTransaction$1 = (PooledConnectionImpl$beginTransaction$1) continuation;
            int i11 = pooledConnectionImpl$beginTransaction$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                pooledConnectionImpl$beginTransaction$1.label = i11 - Integer.MIN_VALUE;
            } else {
                pooledConnectionImpl$beginTransaction$1 = new PooledConnectionImpl$beginTransaction$1(this, continuation);
            }
        } else {
            pooledConnectionImpl$beginTransaction$1 = new PooledConnectionImpl$beginTransaction$1(this, continuation);
        }
        Object obj = pooledConnectionImpl$beginTransaction$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = pooledConnectionImpl$beginTransaction$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            aVar = this.f14622a;
            pooledConnectionImpl$beginTransaction$1.L$0 = this;
            pooledConnectionImpl$beginTransaction$1.L$1 = sQLiteTransactionType;
            pooledConnectionImpl$beginTransaction$1.L$2 = aVar;
            pooledConnectionImpl$beginTransaction$1.label = 1;
            if (aVar.h(null, pooledConnectionImpl$beginTransaction$1) == objF) {
                return objF;
            }
            pooledConnectionImpl = this;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlinx.coroutines.sync.a aVar2 = (kotlinx.coroutines.sync.a) pooledConnectionImpl$beginTransaction$1.L$2;
            Transactor.SQLiteTransactionType sQLiteTransactionType2 = (Transactor.SQLiteTransactionType) pooledConnectionImpl$beginTransaction$1.L$1;
            pooledConnectionImpl = (PooledConnectionImpl) pooledConnectionImpl$beginTransaction$1.L$0;
            ResultKt.b(obj);
            aVar = aVar2;
            sQLiteTransactionType = sQLiteTransactionType2;
        }
        try {
            int size = pooledConnectionImpl.f14624c.size();
            if (pooledConnectionImpl.f14624c.isEmpty()) {
                int i13 = d.f14632a[sQLiteTransactionType.ordinal()];
                if (i13 == 1) {
                    z3.a.a(pooledConnectionImpl.f14622a, "BEGIN DEFERRED TRANSACTION");
                } else if (i13 == 2) {
                    z3.a.a(pooledConnectionImpl.f14622a, "BEGIN IMMEDIATE TRANSACTION");
                } else {
                    if (i13 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    z3.a.a(pooledConnectionImpl.f14622a, "BEGIN EXCLUSIVE TRANSACTION");
                }
            } else {
                z3.a.a(pooledConnectionImpl.f14622a, "SAVEPOINT '" + size + '\'');
            }
            pooledConnectionImpl.f14624c.addLast(new c(size, false));
            Unit unit = Unit.f67061a;
            aVar.unlock(null);
            return unit;
        } catch (Throwable th2) {
            aVar.unlock(null);
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object j(boolean z10, Continuation continuation) throws Throwable {
        PooledConnectionImpl$endTransaction$1 pooledConnectionImpl$endTransaction$1;
        PooledConnectionImpl pooledConnectionImpl;
        kotlinx.coroutines.sync.a aVar;
        if (continuation instanceof PooledConnectionImpl$endTransaction$1) {
            pooledConnectionImpl$endTransaction$1 = (PooledConnectionImpl$endTransaction$1) continuation;
            int i11 = pooledConnectionImpl$endTransaction$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                pooledConnectionImpl$endTransaction$1.label = i11 - Integer.MIN_VALUE;
            } else {
                pooledConnectionImpl$endTransaction$1 = new PooledConnectionImpl$endTransaction$1(this, continuation);
            }
        } else {
            pooledConnectionImpl$endTransaction$1 = new PooledConnectionImpl$endTransaction$1(this, continuation);
        }
        Object obj = pooledConnectionImpl$endTransaction$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = pooledConnectionImpl$endTransaction$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            i iVar = this.f14622a;
            pooledConnectionImpl$endTransaction$1.L$0 = this;
            pooledConnectionImpl$endTransaction$1.L$1 = iVar;
            pooledConnectionImpl$endTransaction$1.Z$0 = z10;
            pooledConnectionImpl$endTransaction$1.label = 1;
            if (iVar.h(null, pooledConnectionImpl$endTransaction$1) == objF) {
                return objF;
            }
            pooledConnectionImpl = this;
            aVar = iVar;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z10 = pooledConnectionImpl$endTransaction$1.Z$0;
            aVar = (kotlinx.coroutines.sync.a) pooledConnectionImpl$endTransaction$1.L$1;
            pooledConnectionImpl = (PooledConnectionImpl) pooledConnectionImpl$endTransaction$1.L$0;
            ResultKt.b(obj);
        }
        try {
            if (pooledConnectionImpl.f14624c.isEmpty()) {
                throw new IllegalStateException("Not in a transaction");
            }
            c cVar = (c) CollectionsKt.L(pooledConnectionImpl.f14624c);
            if (!z10 || cVar.b()) {
                if (pooledConnectionImpl.f14624c.isEmpty()) {
                    z3.a.a(pooledConnectionImpl.f14622a, "ROLLBACK TRANSACTION");
                } else {
                    z3.a.a(pooledConnectionImpl.f14622a, "ROLLBACK TRANSACTION TO SAVEPOINT '" + cVar.a() + '\'');
                }
            } else if (pooledConnectionImpl.f14624c.isEmpty()) {
                z3.a.a(pooledConnectionImpl.f14622a, "END TRANSACTION");
            } else {
                z3.a.a(pooledConnectionImpl.f14622a, "RELEASE SAVEPOINT '" + cVar.a() + '\'');
            }
            Unit unit = Unit.f67061a;
            aVar.unlock(null);
            return unit;
        } catch (Throwable th2) {
            aVar.unlock(null);
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean m() {
        return this.f14625d.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:42:0x009e  */
    /* JADX WARN: Code duplicated, block: B:45:0x00a9 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:46:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:52:0x00b4 A[Catch: all -> 0x00c8, TRY_LEAVE, TryCatch #3 {, blocks: (B:50:0x00b0, B:52:0x00b4), top: B:77:0x00b0 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00c6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:64:0x00da A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:68:0x00df  */
    /* JADX WARN: Code duplicated, block: B:70:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:79:0x00ca A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:84:? A[RETURN, SYNTHETIC] */
    public final Object o(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, Continuation continuation) throws Throwable {
        PooledConnectionImpl$transaction$1 pooledConnectionImpl$transaction$1;
        PooledConnectionImpl pooledConnectionImpl;
        PooledConnectionImpl pooledConnectionImpl2;
        ConnectionPool.RollbackException th2;
        int i11;
        Throwable th3;
        Object result;
        boolean z10;
        if (continuation instanceof PooledConnectionImpl$transaction$1) {
            pooledConnectionImpl$transaction$1 = (PooledConnectionImpl$transaction$1) continuation;
            int i12 = pooledConnectionImpl$transaction$1.label;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                pooledConnectionImpl$transaction$1.label = i12 - Integer.MIN_VALUE;
            } else {
                pooledConnectionImpl$transaction$1 = new PooledConnectionImpl$transaction$1(this, continuation);
            }
        } else {
            pooledConnectionImpl$transaction$1 = new PooledConnectionImpl$transaction$1(this, continuation);
        }
        Object objInvoke = pooledConnectionImpl$transaction$1.result;
        Object objF = IntrinsicsKt.f();
        int i13 = pooledConnectionImpl$transaction$1.label;
        ConnectionPool.RollbackException rollbackException = null;
        try {
            if (i13 == 0) {
                ResultKt.b(objInvoke);
                if (sQLiteTransactionType == null) {
                    sQLiteTransactionType = Transactor.SQLiteTransactionType.DEFERRED;
                }
                pooledConnectionImpl$transaction$1.L$0 = this;
                pooledConnectionImpl$transaction$1.L$1 = function2;
                pooledConnectionImpl$transaction$1.label = 1;
                if (i(sQLiteTransactionType, pooledConnectionImpl$transaction$1) == objF) {
                    return objF;
                }
                pooledConnectionImpl = this;
            } else {
                if (i13 != 1) {
                    if (i13 != 2) {
                        if (i13 == 3) {
                            Object obj = pooledConnectionImpl$transaction$1.L$0;
                            ResultKt.b(objInvoke);
                            return obj;
                        }
                        if (i13 == 4) {
                            Object obj2 = pooledConnectionImpl$transaction$1.L$0;
                            ResultKt.b(objInvoke);
                            return obj2;
                        }
                        if (i13 != 5) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        th = (Throwable) pooledConnectionImpl$transaction$1.L$1;
                        th3 = (Throwable) pooledConnectionImpl$transaction$1.L$0;
                        try {
                            ResultKt.b(objInvoke);
                        } catch (SQLException e11) {
                            e = e11;
                            if (th3 != null) {
                                throw e;
                            }
                            ExceptionsKt.a(th3, e);
                        }
                        throw th;
                    }
                    i11 = pooledConnectionImpl$transaction$1.I$0;
                    pooledConnectionImpl2 = (PooledConnectionImpl) pooledConnectionImpl$transaction$1.L$0;
                    try {
                        ResultKt.b(objInvoke);
                        z10 = i11 != 0;
                        pooledConnectionImpl$transaction$1.L$0 = objInvoke;
                        pooledConnectionImpl$transaction$1.label = 3;
                        if (pooledConnectionImpl2.j(z10, pooledConnectionImpl$transaction$1) == objF) {
                            return objF;
                        }
                        return objInvoke;
                    } catch (Throwable th4) {
                        th2 = th4;
                        if (!(th2 instanceof ConnectionPool.RollbackException)) {
                            result = th2.getResult();
                            pooledConnectionImpl$transaction$1.L$0 = result;
                            pooledConnectionImpl$transaction$1.L$1 = null;
                            pooledConnectionImpl$transaction$1.label = 4;
                            if (pooledConnectionImpl2.j(false, pooledConnectionImpl$transaction$1) == objF) {
                                return objF;
                            }
                            return result;
                        }
                        try {
                            throw th2;
                        } catch (Throwable th5) {
                            rollbackException = th2;
                            th = th5;
                            pooledConnectionImpl$transaction$1.L$0 = rollbackException;
                            pooledConnectionImpl$transaction$1.L$1 = th;
                            pooledConnectionImpl$transaction$1.label = 5;
                            if (pooledConnectionImpl2.j(false, pooledConnectionImpl$transaction$1) == objF) {
                                return objF;
                            }
                            throw th;
                        }
                        try {
                            pooledConnectionImpl$transaction$1.L$0 = rollbackException;
                            pooledConnectionImpl$transaction$1.L$1 = th;
                            pooledConnectionImpl$transaction$1.label = 5;
                            if (pooledConnectionImpl2.j(false, pooledConnectionImpl$transaction$1) == objF) {
                                return objF;
                            }
                        } catch (SQLException e12) {
                            e = e12;
                            th3 = rollbackException;
                            if (th3 != null) {
                                throw e;
                            }
                            ExceptionsKt.a(th3, e);
                        }
                        throw th;
                    }
                }
                function2 = (Function2) pooledConnectionImpl$transaction$1.L$1;
                pooledConnectionImpl = (PooledConnectionImpl) pooledConnectionImpl$transaction$1.L$0;
                ResultKt.b(objInvoke);
            }
            b bVar = pooledConnectionImpl.new b();
            pooledConnectionImpl$transaction$1.L$0 = pooledConnectionImpl;
            pooledConnectionImpl$transaction$1.L$1 = null;
            pooledConnectionImpl$transaction$1.I$0 = 1;
            pooledConnectionImpl$transaction$1.label = 2;
            objInvoke = function2.invoke(bVar, pooledConnectionImpl$transaction$1);
            if (objInvoke == objF) {
                return objF;
            }
            pooledConnectionImpl2 = pooledConnectionImpl;
            i11 = 1;
            if (i11 != 0) {
            }
            pooledConnectionImpl$transaction$1.L$0 = objInvoke;
            pooledConnectionImpl$transaction$1.label = 3;
            if (pooledConnectionImpl2.j(z10, pooledConnectionImpl$transaction$1) == objF) {
                return objF;
            }
            return objInvoke;
        } catch (Throwable th6) {
            pooledConnectionImpl2 = pooledConnectionImpl;
            th2 = th6;
            if (!(th2 instanceof ConnectionPool.RollbackException)) {
                throw th2;
            }
            result = th2.getResult();
            pooledConnectionImpl$transaction$1.L$0 = result;
            pooledConnectionImpl$transaction$1.L$1 = null;
            pooledConnectionImpl$transaction$1.label = 4;
            if (pooledConnectionImpl2.j(false, pooledConnectionImpl$transaction$1) == objF) {
                return objF;
            }
            return result;
            pooledConnectionImpl$transaction$1.L$0 = rollbackException;
            pooledConnectionImpl$transaction$1.L$1 = th;
            pooledConnectionImpl$transaction$1.label = 5;
            if (pooledConnectionImpl2.j(false, pooledConnectionImpl$transaction$1) == objF) {
                return objF;
            }
            throw th;
        }
    }

    @Override // androidx.room.Transactor
    public Object a(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, Continuation continuation) {
        if (m()) {
            z3.a.b(21, "Connection is recycled");
            throw new KotlinNothingValueException();
        }
        androidx.room.coroutines.c cVar = (androidx.room.coroutines.c) continuation.getF67028a().get(androidx.room.coroutines.c.f14637b);
        if (cVar != null && cVar.a() == this) {
            return o(sQLiteTransactionType, function2, continuation);
        }
        z3.a.b(21, "Attempted to use connection on a different coroutine");
        throw new KotlinNothingValueException();
    }

    @Override // androidx.room.Transactor
    public Object b(Continuation continuation) {
        if (m()) {
            z3.a.b(21, "Connection is recycled");
            throw new KotlinNothingValueException();
        }
        androidx.room.coroutines.c cVar = (androidx.room.coroutines.c) continuation.getF67028a().get(androidx.room.coroutines.c.f14637b);
        if (cVar != null && cVar.a() == this) {
            return Boxing.a(!this.f14624c.isEmpty());
        }
        z3.a.b(21, "Attempted to use connection on a different coroutine");
        throw new KotlinNothingValueException();
    }

    @Override // androidx.room.coroutines.j
    public z3.b c() {
        return this.f14622a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.room.p
    public Object d(String str, Function1 function1, Continuation continuation) throws Throwable {
        PooledConnectionImpl$usePrepared$1 pooledConnectionImpl$usePrepared$1;
        kotlinx.coroutines.sync.a aVar;
        PooledConnectionImpl pooledConnectionImpl;
        if (continuation instanceof PooledConnectionImpl$usePrepared$1) {
            pooledConnectionImpl$usePrepared$1 = (PooledConnectionImpl$usePrepared$1) continuation;
            int i11 = pooledConnectionImpl$usePrepared$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                pooledConnectionImpl$usePrepared$1.label = i11 - Integer.MIN_VALUE;
            } else {
                pooledConnectionImpl$usePrepared$1 = new PooledConnectionImpl$usePrepared$1(this, continuation);
            }
        } else {
            pooledConnectionImpl$usePrepared$1 = new PooledConnectionImpl$usePrepared$1(this, continuation);
        }
        Object obj = pooledConnectionImpl$usePrepared$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = pooledConnectionImpl$usePrepared$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            if (m()) {
                z3.a.b(21, "Connection is recycled");
                throw new KotlinNothingValueException();
            }
            androidx.room.coroutines.c cVar = (androidx.room.coroutines.c) pooledConnectionImpl$usePrepared$1.getF67028a().get(androidx.room.coroutines.c.f14637b);
            if (cVar == null || cVar.a() != this) {
                z3.a.b(21, "Attempted to use connection on a different coroutine");
                throw new KotlinNothingValueException();
            }
            aVar = this.f14622a;
            pooledConnectionImpl$usePrepared$1.L$0 = this;
            pooledConnectionImpl$usePrepared$1.L$1 = str;
            pooledConnectionImpl$usePrepared$1.L$2 = function1;
            pooledConnectionImpl$usePrepared$1.L$3 = aVar;
            pooledConnectionImpl$usePrepared$1.label = 1;
            if (aVar.h(null, pooledConnectionImpl$usePrepared$1) == objF) {
                return objF;
            }
            pooledConnectionImpl = this;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlinx.coroutines.sync.a aVar2 = (kotlinx.coroutines.sync.a) pooledConnectionImpl$usePrepared$1.L$3;
            function1 = (Function1) pooledConnectionImpl$usePrepared$1.L$2;
            String str2 = (String) pooledConnectionImpl$usePrepared$1.L$1;
            pooledConnectionImpl = (PooledConnectionImpl) pooledConnectionImpl$usePrepared$1.L$0;
            ResultKt.b(obj);
            aVar = aVar2;
            str = str2;
        }
        try {
            a aVar3 = new a(pooledConnectionImpl, pooledConnectionImpl.f14622a.D0(str));
            try {
                Object objInvoke = function1.invoke(aVar3);
                AutoCloseableKt.a(aVar3, null);
                aVar.unlock(null);
                return objInvoke;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    AutoCloseableKt.a(aVar3, th2);
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            aVar.unlock(null);
            throw th4;
        }
    }

    public final i k() {
        return this.f14622a;
    }

    public final boolean l() {
        return this.f14623b;
    }

    public final void n() throws Exception {
        if (this.f14625d.compareAndSet(false, true)) {
            try {
                z3.a.a(this.f14622a, "ROLLBACK TRANSACTION");
            } catch (SQLException unused) {
            }
        }
    }
}
