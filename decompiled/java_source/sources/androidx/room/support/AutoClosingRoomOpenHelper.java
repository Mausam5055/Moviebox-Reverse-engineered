package androidx.room.support;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.CharArrayBuffer;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import java.util.Arrays;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.PropertyReference1Impl;

/* JADX INFO: loaded from: classes2.dex */
public final class AutoClosingRoomOpenHelper implements a4.e, androidx.room.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a4.e f14745a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AutoCloser f14746b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AutoClosingSupportSQLiteDatabase f14747c;

    public static final class AutoClosingSupportSQLiteDatabase implements a4.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AutoCloser f14748a;

        public AutoClosingSupportSQLiteDatabase(AutoCloser autoCloser) {
            Intrinsics.h(autoCloser, "autoCloser");
            this.f14748a = autoCloser;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit m(int i11, a4.d db2) {
            Intrinsics.h(db2, "db");
            db2.S(i11);
            return Unit.f67061a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit n(String str, a4.d db2) {
            Intrinsics.h(db2, "db");
            db2.E(str);
            return Unit.f67061a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit o(String str, Object[] objArr, a4.d db2) {
            Intrinsics.h(db2, "db");
            db2.J(str, objArr);
            return Unit.f67061a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final long p(String str, int i11, ContentValues contentValues, a4.d db2) {
            Intrinsics.h(db2, "db");
            return db2.j0(str, i11, contentValues);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Object r(a4.d it) {
            Intrinsics.h(it, "it");
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final int s(String str, int i11, ContentValues contentValues, String str2, Object[] objArr, a4.d db2) {
            Intrinsics.h(db2, "db");
            return db2.f0(str, i11, contentValues, str2, objArr);
        }

        @Override // a4.d
        public void A() {
            try {
                this.f14748a.j().A();
            } catch (Throwable th2) {
                this.f14748a.g();
                throw th2;
            }
        }

        @Override // a4.d
        public List D() {
            return (List) this.f14748a.h(new PropertyReference1Impl() { // from class: androidx.room.support.AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$attachedDbs$1
                @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.jvm.internal.PropertyReference1
                public Object get(Object obj) {
                    return ((a4.d) obj).D();
                }
            });
        }

        @Override // a4.d
        public void E(final String sql) {
            Intrinsics.h(sql, "sql");
            this.f14748a.h(new Function1() { // from class: androidx.room.support.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.n(sql, (a4.d) obj);
                }
            });
        }

        @Override // a4.d
        public void I() {
            a4.d dVarI = this.f14748a.i();
            Intrinsics.e(dVarI);
            dVarI.I();
        }

        @Override // a4.d
        public void J(final String sql, final Object[] bindArgs) {
            Intrinsics.h(sql, "sql");
            Intrinsics.h(bindArgs, "bindArgs");
            this.f14748a.h(new Function1() { // from class: androidx.room.support.e
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.o(sql, bindArgs, (a4.d) obj);
                }
            });
        }

        @Override // a4.d
        public void K() {
            try {
                this.f14748a.j().K();
            } catch (Throwable th2) {
                this.f14748a.g();
                throw th2;
            }
        }

        @Override // a4.d
        public void L() {
            try {
                a4.d dVarI = this.f14748a.i();
                Intrinsics.e(dVarI);
                dVarI.L();
            } finally {
                this.f14748a.g();
            }
        }

        @Override // a4.d
        public void S(final int i11) {
            this.f14748a.h(new Function1() { // from class: androidx.room.support.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.m(i11, (a4.d) obj);
                }
            });
        }

        @Override // a4.d
        public a4.h W(String sql) {
            Intrinsics.h(sql, "sql");
            return new a(sql, this.f14748a);
        }

        @Override // a4.d
        public /* synthetic */ void Y() {
            a4.c.a(this);
        }

        @Override // a4.d
        public Cursor b0(a4.g query) {
            Intrinsics.h(query, "query");
            try {
                return new b(this.f14748a.j().b0(query), this.f14748a);
            } catch (Throwable th2) {
                this.f14748a.g();
                throw th2;
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f14748a.f();
        }

        @Override // a4.d
        public Cursor e0(a4.g query, CancellationSignal cancellationSignal) {
            Intrinsics.h(query, "query");
            try {
                return new b(this.f14748a.j().e0(query, cancellationSignal), this.f14748a);
            } catch (Throwable th2) {
                this.f14748a.g();
                throw th2;
            }
        }

        @Override // a4.d
        public int f0(final String table, final int i11, final ContentValues values, final String str, final Object[] objArr) {
            Intrinsics.h(table, "table");
            Intrinsics.h(values, "values");
            return ((Number) this.f14748a.h(new Function1() { // from class: androidx.room.support.g
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Integer.valueOf(AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.s(table, i11, values, str, objArr, (a4.d) obj));
                }
            })).intValue();
        }

        @Override // a4.d
        public String getPath() {
            return (String) this.f14748a.h(new PropertyReference1Impl() { // from class: androidx.room.support.AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$path$1
                @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.jvm.internal.PropertyReference1
                public Object get(Object obj) {
                    return ((a4.d) obj).getPath();
                }
            });
        }

        @Override // a4.d
        public int getVersion() {
            return ((Number) this.f14748a.h(new MutablePropertyReference1Impl() { // from class: androidx.room.support.AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$version$1
                @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.jvm.internal.MutablePropertyReference1
                public Object get(Object obj) {
                    return Integer.valueOf(((a4.d) obj).getVersion());
                }

                @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.jvm.internal.MutablePropertyReference1
                public void set(Object obj, Object obj2) {
                    ((a4.d) obj).S(((Number) obj2).intValue());
                }
            })).intValue();
        }

        @Override // a4.d
        public Cursor i0(String query) {
            Intrinsics.h(query, "query");
            try {
                return new b(this.f14748a.j().i0(query), this.f14748a);
            } catch (Throwable th2) {
                this.f14748a.g();
                throw th2;
            }
        }

        @Override // a4.d
        public boolean isOpen() {
            a4.d dVarI = this.f14748a.i();
            if (dVarI != null) {
                return dVarI.isOpen();
            }
            return false;
        }

        @Override // a4.d
        public long j0(final String table, final int i11, final ContentValues values) {
            Intrinsics.h(table, "table");
            Intrinsics.h(values, "values");
            return ((Number) this.f14748a.h(new Function1() { // from class: androidx.room.support.f
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Long.valueOf(AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.p(table, i11, values, (a4.d) obj));
                }
            })).longValue();
        }

        public final void q() {
            this.f14748a.h(new Function1() { // from class: androidx.room.support.c
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.r((a4.d) obj);
                }
            });
        }

        @Override // a4.d
        public boolean s0() {
            if (this.f14748a.i() == null) {
                return false;
            }
            return ((Boolean) this.f14748a.h(AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$inTransaction$1.INSTANCE)).booleanValue();
        }

        @Override // a4.d
        public boolean w0() {
            return ((Boolean) this.f14748a.h(new PropertyReference1Impl() { // from class: androidx.room.support.AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$isWriteAheadLoggingEnabled$1
                @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.jvm.internal.PropertyReference1
                public Object get(Object obj) {
                    return Boolean.valueOf(((a4.d) obj).w0());
                }
            })).booleanValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class a implements a4.h {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final C0119a f14749h = new C0119a(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f14750a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final AutoCloser f14751b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int[] f14752c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long[] f14753d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private double[] f14754e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String[] f14755f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private byte[][] f14756g;

        /* JADX INFO: renamed from: androidx.room.support.AutoClosingRoomOpenHelper$a$a, reason: collision with other inner class name */
        public static final class C0119a {
            private C0119a() {
            }

            public /* synthetic */ C0119a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public a(String sql, AutoCloser autoCloser) {
            Intrinsics.h(sql, "sql");
            Intrinsics.h(autoCloser, "autoCloser");
            this.f14750a = sql;
            this.f14751b = autoCloser;
            this.f14752c = new int[0];
            this.f14753d = new long[0];
            this.f14754e = new double[0];
            this.f14755f = new String[0];
            this.f14756g = new byte[0][];
        }

        private final void k(a4.f fVar) {
            int length = this.f14752c.length;
            for (int i11 = 1; i11 < length; i11++) {
                int i12 = this.f14752c[i11];
                if (i12 == 1) {
                    fVar.c(i11, this.f14753d[i11]);
                } else if (i12 == 2) {
                    fVar.a(i11, this.f14754e[i11]);
                } else if (i12 == 3) {
                    String str = this.f14755f[i11];
                    Intrinsics.e(str);
                    fVar.y(i11, str);
                } else if (i12 == 4) {
                    byte[] bArr = this.f14756g[i11];
                    Intrinsics.e(bArr);
                    fVar.e(i11, bArr);
                } else if (i12 == 5) {
                    fVar.g(i11);
                }
            }
        }

        private final void m(int i11, int i12) {
            int i13 = i12 + 1;
            int[] iArr = this.f14752c;
            if (iArr.length < i13) {
                int[] iArrCopyOf = Arrays.copyOf(iArr, i13);
                Intrinsics.g(iArrCopyOf, "copyOf(...)");
                this.f14752c = iArrCopyOf;
            }
            if (i11 == 1) {
                long[] jArr = this.f14753d;
                if (jArr.length < i13) {
                    long[] jArrCopyOf = Arrays.copyOf(jArr, i13);
                    Intrinsics.g(jArrCopyOf, "copyOf(...)");
                    this.f14753d = jArrCopyOf;
                    return;
                }
                return;
            }
            if (i11 == 2) {
                double[] dArr = this.f14754e;
                if (dArr.length < i13) {
                    double[] dArrCopyOf = Arrays.copyOf(dArr, i13);
                    Intrinsics.g(dArrCopyOf, "copyOf(...)");
                    this.f14754e = dArrCopyOf;
                    return;
                }
                return;
            }
            if (i11 == 3) {
                String[] strArr = this.f14755f;
                if (strArr.length < i13) {
                    Object[] objArrCopyOf = Arrays.copyOf(strArr, i13);
                    Intrinsics.g(objArrCopyOf, "copyOf(...)");
                    this.f14755f = (String[]) objArrCopyOf;
                    return;
                }
                return;
            }
            if (i11 != 4) {
                return;
            }
            byte[][] bArr = this.f14756g;
            if (bArr.length < i13) {
                Object[] objArrCopyOf2 = Arrays.copyOf(bArr, i13);
                Intrinsics.g(objArrCopyOf2, "copyOf(...)");
                this.f14756g = (byte[][]) objArrCopyOf2;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit n(a4.h statement) {
            Intrinsics.h(statement, "statement");
            statement.execute();
            return Unit.f67061a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final long o(a4.h obj) {
            Intrinsics.h(obj, "obj");
            return obj.R();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final int p(a4.h obj) {
            Intrinsics.h(obj, "obj");
            return obj.F();
        }

        private final Object q(final Function1 function1) {
            return this.f14751b.h(new Function1() { // from class: androidx.room.support.k
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AutoClosingRoomOpenHelper.a.r(this.f14771a, function1, (a4.d) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Object r(a aVar, Function1 function1, a4.d db2) {
            Intrinsics.h(db2, "db");
            a4.h hVarW = db2.W(aVar.f14750a);
            aVar.k(hVarW);
            return function1.invoke(hVarW);
        }

        @Override // a4.h
        public int F() {
            return ((Number) q(new Function1() { // from class: androidx.room.support.h
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Integer.valueOf(AutoClosingRoomOpenHelper.a.p((a4.h) obj));
                }
            })).intValue();
        }

        @Override // a4.h
        public long R() {
            return ((Number) q(new Function1() { // from class: androidx.room.support.i
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Long.valueOf(AutoClosingRoomOpenHelper.a.o((a4.h) obj));
                }
            })).longValue();
        }

        @Override // a4.f
        public void a(int i11, double d11) {
            m(2, i11);
            this.f14752c[i11] = 2;
            this.f14754e[i11] = d11;
        }

        @Override // a4.f
        public void c(int i11, long j11) {
            m(1, i11);
            this.f14752c[i11] = 1;
            this.f14753d[i11] = j11;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            l();
        }

        @Override // a4.f
        public void e(int i11, byte[] value) {
            Intrinsics.h(value, "value");
            m(4, i11);
            this.f14752c[i11] = 4;
            this.f14756g[i11] = value;
        }

        @Override // a4.h
        public void execute() {
            q(new Function1() { // from class: androidx.room.support.j
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AutoClosingRoomOpenHelper.a.n((a4.h) obj);
                }
            });
        }

        @Override // a4.f
        public void g(int i11) {
            m(5, i11);
            this.f14752c[i11] = 5;
        }

        public void l() {
            this.f14752c = new int[0];
            this.f14753d = new long[0];
            this.f14754e = new double[0];
            this.f14755f = new String[0];
            this.f14756g = new byte[0][];
        }

        @Override // a4.f
        public void y(int i11, String value) {
            Intrinsics.h(value, "value");
            m(3, i11);
            this.f14752c[i11] = 3;
            this.f14755f[i11] = value;
        }
    }

    private static final class b implements Cursor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Cursor f14757a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final AutoCloser f14758b;

        public b(Cursor delegate, AutoCloser autoCloser) {
            Intrinsics.h(delegate, "delegate");
            Intrinsics.h(autoCloser, "autoCloser");
            this.f14757a = delegate;
            this.f14758b = autoCloser;
        }

        @Override // android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f14757a.close();
            this.f14758b.g();
        }

        @Override // android.database.Cursor
        public void copyStringToBuffer(int i11, CharArrayBuffer charArrayBuffer) {
            this.f14757a.copyStringToBuffer(i11, charArrayBuffer);
        }

        @Override // android.database.Cursor
        public void deactivate() {
            this.f14757a.deactivate();
        }

        @Override // android.database.Cursor
        public byte[] getBlob(int i11) {
            return this.f14757a.getBlob(i11);
        }

        @Override // android.database.Cursor
        public int getColumnCount() {
            return this.f14757a.getColumnCount();
        }

        @Override // android.database.Cursor
        public int getColumnIndex(String str) {
            return this.f14757a.getColumnIndex(str);
        }

        @Override // android.database.Cursor
        public int getColumnIndexOrThrow(String str) {
            return this.f14757a.getColumnIndexOrThrow(str);
        }

        @Override // android.database.Cursor
        public String getColumnName(int i11) {
            return this.f14757a.getColumnName(i11);
        }

        @Override // android.database.Cursor
        public String[] getColumnNames() {
            return this.f14757a.getColumnNames();
        }

        @Override // android.database.Cursor
        public int getCount() {
            return this.f14757a.getCount();
        }

        @Override // android.database.Cursor
        public double getDouble(int i11) {
            return this.f14757a.getDouble(i11);
        }

        @Override // android.database.Cursor
        public Bundle getExtras() {
            return this.f14757a.getExtras();
        }

        @Override // android.database.Cursor
        public float getFloat(int i11) {
            return this.f14757a.getFloat(i11);
        }

        @Override // android.database.Cursor
        public int getInt(int i11) {
            return this.f14757a.getInt(i11);
        }

        @Override // android.database.Cursor
        public long getLong(int i11) {
            return this.f14757a.getLong(i11);
        }

        @Override // android.database.Cursor
        public Uri getNotificationUri() {
            return this.f14757a.getNotificationUri();
        }

        @Override // android.database.Cursor
        public int getPosition() {
            return this.f14757a.getPosition();
        }

        @Override // android.database.Cursor
        public short getShort(int i11) {
            return this.f14757a.getShort(i11);
        }

        @Override // android.database.Cursor
        public String getString(int i11) {
            return this.f14757a.getString(i11);
        }

        @Override // android.database.Cursor
        public int getType(int i11) {
            return this.f14757a.getType(i11);
        }

        @Override // android.database.Cursor
        public boolean getWantsAllOnMoveCalls() {
            return this.f14757a.getWantsAllOnMoveCalls();
        }

        @Override // android.database.Cursor
        public boolean isAfterLast() {
            return this.f14757a.isAfterLast();
        }

        @Override // android.database.Cursor
        public boolean isBeforeFirst() {
            return this.f14757a.isBeforeFirst();
        }

        @Override // android.database.Cursor
        public boolean isClosed() {
            return this.f14757a.isClosed();
        }

        @Override // android.database.Cursor
        public boolean isFirst() {
            return this.f14757a.isFirst();
        }

        @Override // android.database.Cursor
        public boolean isLast() {
            return this.f14757a.isLast();
        }

        @Override // android.database.Cursor
        public boolean isNull(int i11) {
            return this.f14757a.isNull(i11);
        }

        @Override // android.database.Cursor
        public boolean move(int i11) {
            return this.f14757a.move(i11);
        }

        @Override // android.database.Cursor
        public boolean moveToFirst() {
            return this.f14757a.moveToFirst();
        }

        @Override // android.database.Cursor
        public boolean moveToLast() {
            return this.f14757a.moveToLast();
        }

        @Override // android.database.Cursor
        public boolean moveToNext() {
            return this.f14757a.moveToNext();
        }

        @Override // android.database.Cursor
        public boolean moveToPosition(int i11) {
            return this.f14757a.moveToPosition(i11);
        }

        @Override // android.database.Cursor
        public boolean moveToPrevious() {
            return this.f14757a.moveToPrevious();
        }

        @Override // android.database.Cursor
        public void registerContentObserver(ContentObserver contentObserver) {
            this.f14757a.registerContentObserver(contentObserver);
        }

        @Override // android.database.Cursor
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            this.f14757a.registerDataSetObserver(dataSetObserver);
        }

        @Override // android.database.Cursor
        public boolean requery() {
            return this.f14757a.requery();
        }

        @Override // android.database.Cursor
        public Bundle respond(Bundle bundle) {
            return this.f14757a.respond(bundle);
        }

        @Override // android.database.Cursor
        public void setExtras(Bundle bundle) {
            this.f14757a.setExtras(bundle);
        }

        @Override // android.database.Cursor
        public void setNotificationUri(ContentResolver contentResolver, Uri uri) {
            this.f14757a.setNotificationUri(contentResolver, uri);
        }

        @Override // android.database.Cursor
        public void unregisterContentObserver(ContentObserver contentObserver) {
            this.f14757a.unregisterContentObserver(contentObserver);
        }

        @Override // android.database.Cursor
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            this.f14757a.unregisterDataSetObserver(dataSetObserver);
        }
    }

    public AutoClosingRoomOpenHelper(a4.e delegate, AutoCloser autoCloser) {
        Intrinsics.h(delegate, "delegate");
        Intrinsics.h(autoCloser, "autoCloser");
        this.f14745a = delegate;
        this.f14746b = autoCloser;
        this.f14747c = new AutoClosingSupportSQLiteDatabase(autoCloser);
        autoCloser.l(getDelegate());
    }

    @Override // a4.e, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f14747c.close();
    }

    public final AutoCloser d() {
        return this.f14746b;
    }

    @Override // a4.e
    public String getDatabaseName() {
        return this.f14745a.getDatabaseName();
    }

    @Override // androidx.room.d
    public a4.e getDelegate() {
        return this.f14745a;
    }

    @Override // a4.e
    public a4.d getReadableDatabase() {
        this.f14747c.q();
        return this.f14747c;
    }

    @Override // a4.e
    public a4.d getWritableDatabase() {
        this.f14747c.q();
        return this.f14747c;
    }

    @Override // a4.e
    public void setWriteAheadLoggingEnabled(boolean z10) {
        this.f14745a.setWriteAheadLoggingEnabled(z10);
    }
}
