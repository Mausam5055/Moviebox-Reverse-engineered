package androidx.room.driver;

import a4.f;
import a4.g;
import a4.h;
import android.database.Cursor;
import java.io.IOException;
import java.util.Arrays;
import java.util.Locale;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import z3.e;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d implements e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f14663d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a4.d f14664a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f14665b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f14666c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final int c(String str) {
            int i11;
            int length = str.length() - 2;
            if (length < 0) {
                return -1;
            }
            int iN0 = 0;
            while (iN0 < length) {
                char cCharAt = str.charAt(iN0);
                if (Intrinsics.j(cCharAt, 32) > 0) {
                    if (cCharAt == '-') {
                        if (str.charAt(iN0 + 1) != '-') {
                            return iN0;
                        }
                        iN0 = StringsKt.n0(str, '\n', iN0 + 2, false, 4, null);
                        if (iN0 < 0) {
                            return -1;
                        }
                    } else {
                        if (cCharAt != '/') {
                            return iN0;
                        }
                        int iN1 = iN0 + 1;
                        if (str.charAt(iN1) != '*') {
                            return iN0;
                        }
                        do {
                            iN1 = StringsKt.n0(str, '*', iN1 + 1, false, 4, null);
                            if (iN1 >= 0) {
                                i11 = iN1 + 1;
                                if (i11 >= length) {
                                    break;
                                }
                            } else {
                                return -1;
                            }
                        } while (str.charAt(i11) != '/');
                        iN0 = iN1 + 2;
                    }
                }
                iN0++;
            }
            return -1;
        }

        private final boolean d(String str) {
            int iHashCode = str.hashCode();
            return iHashCode == 79487 ? str.equals("PRA") : !(iHashCode == 81978 ? !str.equals("SEL") : !(iHashCode == 85954 && str.equals("WIT")));
        }

        public final d a(a4.d db2, String sql) {
            Intrinsics.h(db2, "db");
            Intrinsics.h(sql, "sql");
            String upperCase = StringsKt.n1(sql).toString().toUpperCase(Locale.ROOT);
            Intrinsics.g(upperCase, "toUpperCase(...)");
            String strB = b(upperCase);
            if (strB != null && d(strB)) {
                return new b(db2, sql);
            }
            return new c(db2, sql);
        }

        public final String b(String sql) {
            Intrinsics.h(sql, "sql");
            int iC = c(sql);
            if (iC < 0 || iC > sql.length()) {
                return null;
            }
            String strSubstring = sql.substring(iC, Math.min(iC + 3, sql.length()));
            Intrinsics.g(strSubstring, "substring(...)");
            return strSubstring;
        }
    }

    private static final class b extends d {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final a f14667k = new a(null);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int[] f14668e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long[] f14669f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private double[] f14670g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String[] f14671h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private byte[][] f14672i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private Cursor f14673j;

        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        /* JADX INFO: renamed from: androidx.room.driver.d$b$b, reason: collision with other inner class name */
        public static final class C0116b implements g {
            C0116b() {
            }

            @Override // a4.g
            public void b(f statement) {
                Intrinsics.h(statement, "statement");
                int length = b.this.f14668e.length;
                for (int i11 = 1; i11 < length; i11++) {
                    int i12 = b.this.f14668e[i11];
                    if (i12 == 1) {
                        statement.c(i11, b.this.f14669f[i11]);
                    } else if (i12 == 2) {
                        statement.a(i11, b.this.f14670g[i11]);
                    } else if (i12 == 3) {
                        String str = b.this.f14671h[i11];
                        Intrinsics.e(str);
                        statement.y(i11, str);
                    } else if (i12 == 4) {
                        byte[] bArr = b.this.f14672i[i11];
                        Intrinsics.e(bArr);
                        statement.e(i11, bArr);
                    } else if (i12 == 5) {
                        statement.g(i11);
                    }
                }
            }

            @Override // a4.g
            public String d() {
                return b.this.h();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(a4.d db2, String sql) {
            super(db2, sql, null);
            Intrinsics.h(db2, "db");
            Intrinsics.h(sql, "sql");
            this.f14668e = new int[0];
            this.f14669f = new long[0];
            this.f14670g = new double[0];
            this.f14671h = new String[0];
            this.f14672i = new byte[0][];
        }

        private final void r(int i11, int i12) {
            int i13 = i12 + 1;
            int[] iArr = this.f14668e;
            if (iArr.length < i13) {
                int[] iArrCopyOf = Arrays.copyOf(iArr, i13);
                Intrinsics.g(iArrCopyOf, "copyOf(...)");
                this.f14668e = iArrCopyOf;
            }
            if (i11 == 1) {
                long[] jArr = this.f14669f;
                if (jArr.length < i13) {
                    long[] jArrCopyOf = Arrays.copyOf(jArr, i13);
                    Intrinsics.g(jArrCopyOf, "copyOf(...)");
                    this.f14669f = jArrCopyOf;
                    return;
                }
                return;
            }
            if (i11 == 2) {
                double[] dArr = this.f14670g;
                if (dArr.length < i13) {
                    double[] dArrCopyOf = Arrays.copyOf(dArr, i13);
                    Intrinsics.g(dArrCopyOf, "copyOf(...)");
                    this.f14670g = dArrCopyOf;
                    return;
                }
                return;
            }
            if (i11 == 3) {
                String[] strArr = this.f14671h;
                if (strArr.length < i13) {
                    Object[] objArrCopyOf = Arrays.copyOf(strArr, i13);
                    Intrinsics.g(objArrCopyOf, "copyOf(...)");
                    this.f14671h = (String[]) objArrCopyOf;
                    return;
                }
                return;
            }
            if (i11 != 4) {
                return;
            }
            byte[][] bArr = this.f14672i;
            if (bArr.length < i13) {
                Object[] objArrCopyOf2 = Arrays.copyOf(bArr, i13);
                Intrinsics.g(objArrCopyOf2, "copyOf(...)");
                this.f14672i = (byte[][]) objArrCopyOf2;
            }
        }

        private final void s() {
            if (this.f14673j == null) {
                this.f14673j = d().b0(new C0116b());
            }
        }

        private final void t(Cursor cursor, int i11) {
            if (i11 < 0 || i11 >= cursor.getColumnCount()) {
                z3.a.b(25, "column index out of range");
                throw new KotlinNothingValueException();
            }
        }

        private final Cursor u() {
            Cursor cursor = this.f14673j;
            if (cursor != null) {
                return cursor;
            }
            z3.a.b(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // z3.e
        public boolean A0() {
            k();
            s();
            Cursor cursor = this.f14673j;
            if (cursor != null) {
                return cursor.moveToNext();
            }
            throw new IllegalStateException("Required value was null.");
        }

        @Override // z3.e
        public void a(int i11, double d11) {
            k();
            r(2, i11);
            this.f14668e[i11] = 2;
            this.f14670g[i11] = d11;
        }

        @Override // z3.e
        public void c(int i11, long j11) {
            k();
            r(1, i11);
            this.f14668e[i11] = 1;
            this.f14669f[i11] = j11;
        }

        @Override // z3.e, java.lang.AutoCloseable
        public void close() {
            if (!isClosed()) {
                q();
                reset();
            }
            i(true);
        }

        @Override // z3.e
        public void e(int i11, byte[] value) {
            Intrinsics.h(value, "value");
            k();
            r(4, i11);
            this.f14668e[i11] = 4;
            this.f14672i[i11] = value;
        }

        @Override // z3.e
        public void g(int i11) {
            k();
            r(5, i11);
            this.f14668e[i11] = 5;
        }

        @Override // z3.e
        public byte[] getBlob(int i11) {
            k();
            Cursor cursorU = u();
            t(cursorU, i11);
            byte[] blob = cursorU.getBlob(i11);
            Intrinsics.g(blob, "getBlob(...)");
            return blob;
        }

        @Override // z3.e
        public int getColumnCount() {
            k();
            s();
            Cursor cursor = this.f14673j;
            if (cursor != null) {
                return cursor.getColumnCount();
            }
            return 0;
        }

        @Override // z3.e
        public String getColumnName(int i11) {
            k();
            s();
            Cursor cursor = this.f14673j;
            if (cursor == null) {
                throw new IllegalStateException("Required value was null.");
            }
            t(cursor, i11);
            String columnName = cursor.getColumnName(i11);
            Intrinsics.g(columnName, "getColumnName(...)");
            return columnName;
        }

        @Override // z3.e
        public double getDouble(int i11) {
            k();
            Cursor cursorU = u();
            t(cursorU, i11);
            return cursorU.getDouble(i11);
        }

        @Override // z3.e
        public long getLong(int i11) {
            k();
            Cursor cursorU = u();
            t(cursorU, i11);
            return cursorU.getLong(i11);
        }

        @Override // z3.e
        public boolean isNull(int i11) {
            k();
            Cursor cursorU = u();
            t(cursorU, i11);
            return cursorU.isNull(i11);
        }

        @Override // z3.e
        public void j(int i11, String value) {
            Intrinsics.h(value, "value");
            k();
            r(3, i11);
            this.f14668e[i11] = 3;
            this.f14671h[i11] = value;
        }

        @Override // z3.e
        public String n0(int i11) {
            k();
            Cursor cursorU = u();
            t(cursorU, i11);
            String string = cursorU.getString(i11);
            Intrinsics.g(string, "getString(...)");
            return string;
        }

        public void q() {
            k();
            this.f14668e = new int[0];
            this.f14669f = new long[0];
            this.f14670g = new double[0];
            this.f14671h = new String[0];
            this.f14672i = new byte[0][];
        }

        @Override // z3.e
        public void reset() {
            k();
            Cursor cursor = this.f14673j;
            if (cursor != null) {
                cursor.close();
            }
            this.f14673j = null;
        }
    }

    private static final class c extends d {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final h f14675e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(a4.d db2, String sql) {
            super(db2, sql, null);
            Intrinsics.h(db2, "db");
            Intrinsics.h(sql, "sql");
            this.f14675e = db2.W(sql);
        }

        @Override // z3.e
        public boolean A0() {
            k();
            this.f14675e.execute();
            return false;
        }

        @Override // z3.e
        public void a(int i11, double d11) {
            k();
            this.f14675e.a(i11, d11);
        }

        @Override // z3.e
        public void c(int i11, long j11) {
            k();
            this.f14675e.c(i11, j11);
        }

        @Override // z3.e, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f14675e.close();
            i(true);
        }

        @Override // z3.e
        public void e(int i11, byte[] value) {
            Intrinsics.h(value, "value");
            k();
            this.f14675e.e(i11, value);
        }

        @Override // z3.e
        public void g(int i11) {
            k();
            this.f14675e.g(i11);
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
            this.f14675e.y(i11, value);
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

    private d(a4.d dVar, String str) {
        this.f14664a = dVar;
        this.f14665b = str;
    }

    public /* synthetic */ d(a4.d dVar, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(dVar, str);
    }

    protected final a4.d d() {
        return this.f14664a;
    }

    @Override // z3.e
    public /* synthetic */ boolean getBoolean(int i11) {
        return z3.d.a(this, i11);
    }

    protected final String h() {
        return this.f14665b;
    }

    protected final void i(boolean z10) {
        this.f14666c = z10;
    }

    protected final boolean isClosed() {
        return this.f14666c;
    }

    protected final void k() {
        if (this.f14666c) {
            z3.a.b(21, "statement is closed");
            throw new KotlinNothingValueException();
        }
    }
}
