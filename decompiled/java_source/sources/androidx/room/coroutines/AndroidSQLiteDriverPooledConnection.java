package androidx.room.coroutines;

import android.database.sqlite.SQLiteDatabase;
import androidx.room.Transactor;
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
final class AndroidSQLiteDriverPooledConnection implements Transactor, j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c4.a f14595a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Transactor.SQLiteTransactionType f14596b;

    private final class a implements n0, j {
        public a() {
        }

        @Override // androidx.room.coroutines.j
        public z3.b c() {
            return AndroidSQLiteDriverPooledConnection.this.c();
        }

        @Override // androidx.room.p
        public Object d(String str, Function1 function1, Continuation continuation) {
            return AndroidSQLiteDriverPooledConnection.this.d(str, function1, continuation);
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f14598a;

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
            f14598a = iArr;
        }
    }

    public AndroidSQLiteDriverPooledConnection(c4.a delegate) {
        Intrinsics.h(delegate, "delegate");
        this.f14595a = delegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:50:0x00af  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r8v2 */
    public final Object g(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, Continuation continuation) throws Throwable {
        AndroidSQLiteDriverPooledConnection$transaction$1 androidSQLiteDriverPooledConnection$transaction$1;
        AndroidSQLiteDriverPooledConnection androidSQLiteDriverPooledConnection;
        ConnectionPool.RollbackException e11;
        SQLiteDatabase sQLiteDatabase;
        if (continuation instanceof AndroidSQLiteDriverPooledConnection$transaction$1) {
            androidSQLiteDriverPooledConnection$transaction$1 = (AndroidSQLiteDriverPooledConnection$transaction$1) continuation;
            int i11 = androidSQLiteDriverPooledConnection$transaction$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                androidSQLiteDriverPooledConnection$transaction$1.label = i11 - Integer.MIN_VALUE;
            } else {
                androidSQLiteDriverPooledConnection$transaction$1 = new AndroidSQLiteDriverPooledConnection$transaction$1(this, continuation);
            }
        } else {
            androidSQLiteDriverPooledConnection$transaction$1 = new AndroidSQLiteDriverPooledConnection$transaction$1(this, continuation);
        }
        Object obj = androidSQLiteDriverPooledConnection$transaction$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = androidSQLiteDriverPooledConnection$transaction$1.label;
        try {
            if (i12 == 0) {
                ResultKt.b(obj);
                SQLiteDatabase sQLiteDatabaseD = this.f14595a.d();
                if (!sQLiteDatabaseD.inTransaction()) {
                    this.f14596b = sQLiteTransactionType;
                }
                int i13 = b.f14598a[sQLiteTransactionType.ordinal()];
                if (i13 == 1 || i13 == 2) {
                    sQLiteDatabaseD.beginTransactionNonExclusive();
                } else {
                    if (i13 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    sQLiteDatabaseD.beginTransaction();
                }
                try {
                    a aVar = new a();
                    androidSQLiteDriverPooledConnection$transaction$1.L$0 = this;
                    androidSQLiteDriverPooledConnection$transaction$1.L$1 = sQLiteDatabaseD;
                    androidSQLiteDriverPooledConnection$transaction$1.label = 1;
                    Object objInvoke = function2.invoke(aVar, androidSQLiteDriverPooledConnection$transaction$1);
                    if (objInvoke == objF) {
                        return objF;
                    }
                    androidSQLiteDriverPooledConnection = this;
                    obj = objInvoke;
                    sQLiteDatabase = sQLiteDatabaseD;
                } catch (ConnectionPool.RollbackException e12) {
                    androidSQLiteDriverPooledConnection = this;
                    e11 = e12;
                    sQLiteDatabase = sQLiteDatabaseD;
                    Object result = e11.getResult();
                    sQLiteDatabase.endTransaction();
                    if (!sQLiteDatabase.inTransaction()) {
                        androidSQLiteDriverPooledConnection.f14596b = null;
                    }
                    return result;
                } catch (Throwable th2) {
                    function2 = this;
                    th = th2;
                    sQLiteTransactionType = sQLiteDatabaseD;
                    sQLiteTransactionType.endTransaction();
                    if (!sQLiteTransactionType.inTransaction()) {
                        function2.f14596b = null;
                    }
                    throw th;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                sQLiteDatabase = (SQLiteDatabase) androidSQLiteDriverPooledConnection$transaction$1.L$1;
                androidSQLiteDriverPooledConnection = (AndroidSQLiteDriverPooledConnection) androidSQLiteDriverPooledConnection$transaction$1.L$0;
                try {
                    ResultKt.b(obj);
                } catch (ConnectionPool.RollbackException e13) {
                    e11 = e13;
                    Object result2 = e11.getResult();
                    sQLiteDatabase.endTransaction();
                    if (!sQLiteDatabase.inTransaction()) {
                        androidSQLiteDriverPooledConnection.f14596b = null;
                    }
                    return result2;
                }
            }
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
            if (!sQLiteDatabase.inTransaction()) {
                androidSQLiteDriverPooledConnection.f14596b = null;
            }
            return obj;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // androidx.room.Transactor
    public Object a(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, Continuation continuation) {
        return g(sQLiteTransactionType, function2, continuation);
    }

    @Override // androidx.room.Transactor
    public Object b(Continuation continuation) {
        return Boxing.a(this.f14595a.d().inTransaction());
    }

    @Override // androidx.room.coroutines.j
    public z3.b c() {
        return this.f14595a;
    }

    @Override // androidx.room.p
    public Object d(String str, Function1 function1, Continuation continuation) throws Exception {
        z3.e eVarD0 = this.f14595a.D0(str);
        try {
            Object objInvoke = function1.invoke(eVarD0);
            AutoCloseableKt.a(eVarD0, null);
            return objInvoke;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarD0, th2);
                throw th3;
            }
        }
    }

    public final c4.a f() {
        return this.f14595a;
    }
}
