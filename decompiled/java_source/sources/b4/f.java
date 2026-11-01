package b4;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.database.sqlite.SQLiteStatement;
import android.database.sqlite.SQLiteTransactionListener;
import android.os.CancellationSignal;
import android.text.TextUtils;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class f implements a4.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f16215b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String[] f16216c = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String[] f16217d = new String[0];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Lazy f16218e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Lazy f16219f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SQLiteDatabase f16220a;

    /* JADX INFO: loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Method c() {
            return (Method) f.f16219f.getValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Method d() {
            return (Method) f.f16218e.getValue();
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        f16218e = LazyKt.a(lazyThreadSafetyMode, new Function0() { // from class: b4.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return f.q();
            }
        });
        f16219f = LazyKt.a(lazyThreadSafetyMode, new Function0() { // from class: b4.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return f.o();
            }
        });
    }

    public f(SQLiteDatabase delegate) {
        Intrinsics.h(delegate, "delegate");
        this.f16220a = delegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Method o() {
        Class<?> returnType;
        try {
            Method methodD = f16215b.d();
            if (methodD == null || (returnType = methodD.getReturnType()) == null) {
                return null;
            }
            Class<?> cls = Integer.TYPE;
            return returnType.getDeclaredMethod("beginTransaction", cls, SQLiteTransactionListener.class, cls, CancellationSignal.class);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Method q() {
        try {
            Method declaredMethod = SQLiteDatabase.class.getDeclaredMethod("getThreadSession", null);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    private final void r(SQLiteTransactionListener sQLiteTransactionListener) throws IllegalAccessException, InvocationTargetException {
        a aVar = f16215b;
        if (aVar.c() == null || aVar.d() == null) {
            if (sQLiteTransactionListener != null) {
                p(sQLiteTransactionListener);
                return;
            } else {
                A();
                return;
            }
        }
        Method methodC = aVar.c();
        Intrinsics.e(methodC);
        Method methodD = aVar.d();
        Intrinsics.e(methodD);
        Object objInvoke = methodD.invoke(this.f16220a, null);
        if (objInvoke == null) {
            throw new IllegalStateException("Required value was null.");
        }
        methodC.invoke(objInvoke, 0, sQLiteTransactionListener, 0, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SQLiteCursor t(a4.g gVar, SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        Intrinsics.e(sQLiteQuery);
        gVar.b(new i(sQLiteQuery));
        return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Cursor u(Function4 function4, SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        return (Cursor) function4.invoke(sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Cursor v(a4.g gVar, SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        Intrinsics.e(sQLiteQuery);
        gVar.b(new i(sQLiteQuery));
        return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
    }

    @Override // a4.d
    public void A() {
        this.f16220a.beginTransaction();
    }

    @Override // a4.d
    public List D() {
        return this.f16220a.getAttachedDbs();
    }

    @Override // a4.d
    public void E(String sql) {
        Intrinsics.h(sql, "sql");
        this.f16220a.execSQL(sql);
    }

    @Override // a4.d
    public void I() {
        this.f16220a.setTransactionSuccessful();
    }

    @Override // a4.d
    public void J(String sql, Object[] bindArgs) {
        Intrinsics.h(sql, "sql");
        Intrinsics.h(bindArgs, "bindArgs");
        this.f16220a.execSQL(sql, bindArgs);
    }

    @Override // a4.d
    public void K() {
        this.f16220a.beginTransactionNonExclusive();
    }

    @Override // a4.d
    public void L() {
        this.f16220a.endTransaction();
    }

    @Override // a4.d
    public void S(int i11) {
        this.f16220a.setVersion(i11);
    }

    @Override // a4.d
    public a4.h W(String sql) {
        Intrinsics.h(sql, "sql");
        SQLiteStatement sQLiteStatementCompileStatement = this.f16220a.compileStatement(sql);
        Intrinsics.g(sQLiteStatementCompileStatement, "compileStatement(...)");
        return new j(sQLiteStatementCompileStatement);
    }

    @Override // a4.d
    public void Y() throws IllegalAccessException, InvocationTargetException {
        r(null);
    }

    @Override // a4.d
    public Cursor b0(final a4.g query) {
        Intrinsics.h(query, "query");
        final Function4 function4 = new Function4() { // from class: b4.b
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return f.t(query, (SQLiteDatabase) obj, (SQLiteCursorDriver) obj2, (String) obj3, (SQLiteQuery) obj4);
            }
        };
        Cursor cursorRawQueryWithFactory = this.f16220a.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: b4.c
            @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
            public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                return f.u(function4, sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
            }
        }, query.d(), f16217d, null);
        Intrinsics.g(cursorRawQueryWithFactory, "rawQueryWithFactory(...)");
        return cursorRawQueryWithFactory;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f16220a.close();
    }

    @Override // a4.d
    public Cursor e0(final a4.g query, CancellationSignal cancellationSignal) {
        Intrinsics.h(query, "query");
        SQLiteDatabase sQLiteDatabase = this.f16220a;
        SQLiteDatabase.CursorFactory cursorFactory = new SQLiteDatabase.CursorFactory() { // from class: b4.a
            @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
            public final Cursor newCursor(SQLiteDatabase sQLiteDatabase2, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                return f.v(query, sQLiteDatabase2, sQLiteCursorDriver, str, sQLiteQuery);
            }
        };
        String strD = query.d();
        String[] strArr = f16217d;
        Intrinsics.e(cancellationSignal);
        Cursor cursorRawQueryWithFactory = sQLiteDatabase.rawQueryWithFactory(cursorFactory, strD, strArr, null, cancellationSignal);
        Intrinsics.g(cursorRawQueryWithFactory, "rawQueryWithFactory(...)");
        return cursorRawQueryWithFactory;
    }

    @Override // a4.d
    public int f0(String table, int i11, ContentValues values, String str, Object[] objArr) {
        Intrinsics.h(table, "table");
        Intrinsics.h(values, "values");
        if (values.size() == 0) {
            throw new IllegalArgumentException("Empty values");
        }
        int size = values.size();
        int length = objArr == null ? size : objArr.length + size;
        Object[] objArr2 = new Object[length];
        StringBuilder sb2 = new StringBuilder();
        sb2.append("UPDATE ");
        sb2.append(f16216c[i11]);
        sb2.append(table);
        sb2.append(" SET ");
        int i12 = 0;
        for (String str2 : values.keySet()) {
            sb2.append(i12 > 0 ? "," : "");
            sb2.append(str2);
            objArr2[i12] = values.get(str2);
            sb2.append("=?");
            i12++;
        }
        if (objArr != null) {
            for (int i13 = size; i13 < length; i13++) {
                objArr2[i13] = objArr[i13 - size];
            }
        }
        if (!TextUtils.isEmpty(str)) {
            sb2.append(" WHERE ");
            sb2.append(str);
        }
        a4.h hVarW = W(sb2.toString());
        a4.a.f149c.b(hVarW, objArr2);
        return hVarW.F();
    }

    @Override // a4.d
    public String getPath() {
        return this.f16220a.getPath();
    }

    @Override // a4.d
    public int getVersion() {
        return this.f16220a.getVersion();
    }

    @Override // a4.d
    public Cursor i0(String query) {
        Intrinsics.h(query, "query");
        return b0(new a4.a(query));
    }

    @Override // a4.d
    public boolean isOpen() {
        return this.f16220a.isOpen();
    }

    @Override // a4.d
    public long j0(String table, int i11, ContentValues values) {
        Intrinsics.h(table, "table");
        Intrinsics.h(values, "values");
        return this.f16220a.insertWithOnConflict(table, null, values, i11);
    }

    public void p(SQLiteTransactionListener transactionListener) {
        Intrinsics.h(transactionListener, "transactionListener");
        this.f16220a.beginTransactionWithListener(transactionListener);
    }

    public final boolean s(SQLiteDatabase sqLiteDatabase) {
        Intrinsics.h(sqLiteDatabase, "sqLiteDatabase");
        return Intrinsics.c(this.f16220a, sqLiteDatabase);
    }

    @Override // a4.d
    public boolean s0() {
        return this.f16220a.inTransaction();
    }

    @Override // a4.d
    public boolean w0() {
        return this.f16220a.isWriteAheadLoggingEnabled();
    }
}
