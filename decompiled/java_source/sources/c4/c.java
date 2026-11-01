package c4;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteProgram;
import android.database.sqlite.SQLiteQuery;
import android.database.sqlite.SQLiteStatement;
import java.util.Arrays;
import java.util.Locale;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import z3.e;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c implements e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f16988d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SQLiteDatabase f16989a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f16990b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f16991c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final boolean b(String str) {
            String string = StringsKt.n1(str).toString();
            if (string.length() < 3) {
                return false;
            }
            String strSubstring = string.substring(0, 3);
            Intrinsics.g(strSubstring, "substring(...)");
            String upperCase = strSubstring.toUpperCase(Locale.ROOT);
            Intrinsics.g(upperCase, "toUpperCase(...)");
            int iHashCode = upperCase.hashCode();
            if (iHashCode != 79487) {
                if (iHashCode != 81978) {
                    if (iHashCode != 85954 || !upperCase.equals("WIT")) {
                        return false;
                    }
                } else if (!upperCase.equals("SEL")) {
                    return false;
                }
            } else if (!upperCase.equals("PRA")) {
                return false;
            }
            return true;
        }

        public final c a(SQLiteDatabase db2, String sql) {
            Intrinsics.h(db2, "db");
            Intrinsics.h(sql, "sql");
            return b(sql) ? new C0160c(db2, sql) : new b(db2, sql);
        }
    }

    private static final class b extends c {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final SQLiteStatement f16992e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(SQLiteDatabase db2, String sql) {
            super(db2, sql, null);
            Intrinsics.h(db2, "db");
            Intrinsics.h(sql, "sql");
            SQLiteStatement sQLiteStatementCompileStatement = db2.compileStatement(sql);
            Intrinsics.g(sQLiteStatementCompileStatement, "compileStatement(...)");
            this.f16992e = sQLiteStatementCompileStatement;
        }

        @Override // z3.e
        public boolean A0() {
            k();
            this.f16992e.execute();
            return false;
        }

        @Override // z3.e
        public void a(int i11, double d11) {
            k();
            this.f16992e.bindDouble(i11, d11);
        }

        @Override // z3.e
        public void c(int i11, long j11) {
            k();
            this.f16992e.bindLong(i11, j11);
        }

        @Override // z3.e, java.lang.AutoCloseable
        public void close() {
            this.f16992e.close();
            i(true);
        }

        @Override // z3.e
        public void e(int i11, byte[] value) {
            Intrinsics.h(value, "value");
            k();
            this.f16992e.bindBlob(i11, value);
        }

        @Override // z3.e
        public void g(int i11) {
            k();
            this.f16992e.bindNull(i11);
        }

        @Override // z3.e
        public byte[] getBlob(int i11) {
            k();
            z3.a.b(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // z3.e
        public int getColumnCount() {
            k();
            return 0;
        }

        @Override // z3.e
        public String getColumnName(int i11) {
            k();
            z3.a.b(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // z3.e
        public double getDouble(int i11) {
            k();
            z3.a.b(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // z3.e
        public long getLong(int i11) {
            k();
            z3.a.b(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // z3.e
        public boolean isNull(int i11) {
            k();
            z3.a.b(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // z3.e
        public void j(int i11, String value) {
            Intrinsics.h(value, "value");
            k();
            this.f16992e.bindString(i11, value);
        }

        @Override // z3.e
        public String n0(int i11) {
            k();
            z3.a.b(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // z3.e
        public void reset() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c4.c$c, reason: collision with other inner class name */
    static final class C0160c extends c {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final a f16993k = new a(null);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int[] f16994e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long[] f16995f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private double[] f16996g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String[] f16997h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private byte[][] f16998i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private Cursor f16999j;

        /* JADX INFO: renamed from: c4.c$c$a */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0160c(SQLiteDatabase db2, String sql) {
            super(db2, sql, null);
            Intrinsics.h(db2, "db");
            Intrinsics.h(sql, "sql");
            this.f16994e = new int[0];
            this.f16995f = new long[0];
            this.f16996g = new double[0];
            this.f16997h = new String[0];
            this.f16998i = new byte[0][];
        }

        private final void m(SQLiteProgram sQLiteProgram) {
            int length = this.f16994e.length;
            for (int i11 = 1; i11 < length; i11++) {
                int i12 = this.f16994e[i11];
                if (i12 == 1) {
                    sQLiteProgram.bindLong(i11, this.f16995f[i11]);
                } else if (i12 == 2) {
                    sQLiteProgram.bindDouble(i11, this.f16996g[i11]);
                } else if (i12 == 3) {
                    sQLiteProgram.bindString(i11, this.f16997h[i11]);
                } else if (i12 == 4) {
                    sQLiteProgram.bindBlob(i11, this.f16998i[i11]);
                } else if (i12 == 5) {
                    sQLiteProgram.bindNull(i11);
                }
            }
        }

        private final void n(int i11, int i12) {
            int i13 = i12 + 1;
            int[] iArr = this.f16994e;
            if (iArr.length < i13) {
                int[] iArrCopyOf = Arrays.copyOf(iArr, i13);
                Intrinsics.g(iArrCopyOf, "copyOf(...)");
                this.f16994e = iArrCopyOf;
            }
            if (i11 == 1) {
                long[] jArr = this.f16995f;
                if (jArr.length < i13) {
                    long[] jArrCopyOf = Arrays.copyOf(jArr, i13);
                    Intrinsics.g(jArrCopyOf, "copyOf(...)");
                    this.f16995f = jArrCopyOf;
                    return;
                }
                return;
            }
            if (i11 == 2) {
                double[] dArr = this.f16996g;
                if (dArr.length < i13) {
                    double[] dArrCopyOf = Arrays.copyOf(dArr, i13);
                    Intrinsics.g(dArrCopyOf, "copyOf(...)");
                    this.f16996g = dArrCopyOf;
                    return;
                }
                return;
            }
            if (i11 == 3) {
                String[] strArr = this.f16997h;
                if (strArr.length < i13) {
                    Object[] objArrCopyOf = Arrays.copyOf(strArr, i13);
                    Intrinsics.g(objArrCopyOf, "copyOf(...)");
                    this.f16997h = (String[]) objArrCopyOf;
                    return;
                }
                return;
            }
            if (i11 != 4) {
                return;
            }
            byte[][] bArr = this.f16998i;
            if (bArr.length < i13) {
                Object[] objArrCopyOf2 = Arrays.copyOf(bArr, i13);
                Intrinsics.g(objArrCopyOf2, "copyOf(...)");
                this.f16998i = (byte[][]) objArrCopyOf2;
            }
        }

        private final void o() {
            if (this.f16999j == null) {
                this.f16999j = d().rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: c4.d
                    @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
                    public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                        return c.C0160c.p(this.f17000a, sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
                    }
                }, h(), new String[0], null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Cursor p(C0160c c0160c, SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
            Intrinsics.e(sQLiteQuery);
            c0160c.m(sQLiteQuery);
            return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
        }

        private final void q(Cursor cursor, int i11) {
            if (i11 < 0 || i11 >= cursor.getColumnCount()) {
                z3.a.b(25, "column index out of range");
                throw new KotlinNothingValueException();
            }
        }

        private final Cursor r() {
            Cursor cursor = this.f16999j;
            if (cursor != null) {
                return cursor;
            }
            z3.a.b(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // z3.e
        public boolean A0() {
            k();
            o();
            Cursor cursor = this.f16999j;
            if (cursor != null) {
                return cursor.moveToNext();
            }
            throw new IllegalStateException("Required value was null.");
        }

        @Override // z3.e
        public void a(int i11, double d11) {
            k();
            n(2, i11);
            this.f16994e[i11] = 2;
            this.f16996g[i11] = d11;
        }

        @Override // z3.e
        public void c(int i11, long j11) {
            k();
            n(1, i11);
            this.f16994e[i11] = 1;
            this.f16995f[i11] = j11;
        }

        @Override // z3.e, java.lang.AutoCloseable
        public void close() {
            if (!isClosed()) {
                reset();
            }
            i(true);
        }

        @Override // z3.e
        public void e(int i11, byte[] value) {
            Intrinsics.h(value, "value");
            k();
            n(4, i11);
            this.f16994e[i11] = 4;
            this.f16998i[i11] = value;
        }

        @Override // z3.e
        public void g(int i11) {
            k();
            n(5, i11);
            this.f16994e[i11] = 5;
        }

        @Override // z3.e
        public byte[] getBlob(int i11) {
            k();
            Cursor cursorR = r();
            q(cursorR, i11);
            byte[] blob = cursorR.getBlob(i11);
            Intrinsics.g(blob, "getBlob(...)");
            return blob;
        }

        @Override // z3.e
        public int getColumnCount() {
            k();
            o();
            Cursor cursor = this.f16999j;
            if (cursor != null) {
                return cursor.getColumnCount();
            }
            return 0;
        }

        @Override // z3.e
        public String getColumnName(int i11) {
            k();
            o();
            Cursor cursor = this.f16999j;
            if (cursor == null) {
                throw new IllegalStateException("Required value was null.");
            }
            q(cursor, i11);
            String columnName = cursor.getColumnName(i11);
            Intrinsics.g(columnName, "getColumnName(...)");
            return columnName;
        }

        @Override // z3.e
        public double getDouble(int i11) {
            k();
            Cursor cursorR = r();
            q(cursorR, i11);
            return cursorR.getDouble(i11);
        }

        @Override // z3.e
        public long getLong(int i11) {
            k();
            Cursor cursorR = r();
            q(cursorR, i11);
            return cursorR.getLong(i11);
        }

        @Override // z3.e
        public boolean isNull(int i11) {
            k();
            Cursor cursorR = r();
            q(cursorR, i11);
            return cursorR.isNull(i11);
        }

        @Override // z3.e
        public void j(int i11, String value) {
            Intrinsics.h(value, "value");
            k();
            n(3, i11);
            this.f16994e[i11] = 3;
            this.f16997h[i11] = value;
        }

        @Override // z3.e
        public String n0(int i11) {
            k();
            Cursor cursorR = r();
            q(cursorR, i11);
            String string = cursorR.getString(i11);
            Intrinsics.g(string, "getString(...)");
            return string;
        }

        @Override // z3.e
        public void reset() {
            k();
            Cursor cursor = this.f16999j;
            if (cursor != null) {
                cursor.close();
            }
            this.f16999j = null;
        }
    }

    private c(SQLiteDatabase sQLiteDatabase, String str) {
        this.f16989a = sQLiteDatabase;
        this.f16990b = str;
    }

    public /* synthetic */ c(SQLiteDatabase sQLiteDatabase, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(sQLiteDatabase, str);
    }

    protected final SQLiteDatabase d() {
        return this.f16989a;
    }

    @Override // z3.e
    public /* synthetic */ boolean getBoolean(int i11) {
        return z3.d.a(this, i11);
    }

    protected final String h() {
        return this.f16990b;
    }

    protected final void i(boolean z10) {
        this.f16991c = z10;
    }

    protected final boolean isClosed() {
        return this.f16991c;
    }

    protected final void k() {
        if (this.f16991c) {
            z3.a.b(21, "statement is closed");
            throw new KotlinNothingValueException();
        }
    }
}
