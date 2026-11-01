package a4;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import android.util.Pair;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public interface e extends Closeable {

    public static abstract class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final C0002a f153b = new C0002a(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f154a;

        /* JADX INFO: renamed from: a4.e$a$a, reason: collision with other inner class name */
        public static final class C0002a {
            private C0002a() {
            }

            public /* synthetic */ C0002a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public a(int i11) {
            this.f154a = i11;
        }

        private final void a(String str) {
            if (StringsKt.H(str, ":memory:", true)) {
                return;
            }
            int length = str.length() - 1;
            int i11 = 0;
            boolean z10 = false;
            while (i11 <= length) {
                boolean z11 = Intrinsics.j(str.charAt(!z10 ? i11 : length), 32) <= 0;
                if (z10) {
                    if (!z11) {
                        break;
                    } else {
                        length--;
                    }
                } else if (z11) {
                    i11++;
                } else {
                    z10 = true;
                }
            }
            if (str.subSequence(i11, length + 1).toString().length() == 0) {
                return;
            }
            Log.w("SupportSQLite", "deleting the database file: " + str);
            try {
                SQLiteDatabase.deleteDatabase(new File(str));
            } catch (Exception e11) {
                Log.w("SupportSQLite", "delete failed: ", e11);
            }
        }

        public void b(d db2) {
            Intrinsics.h(db2, "db");
        }

        public void c(d db2) {
            Intrinsics.h(db2, "db");
            Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + db2 + ".path");
            if (!db2.isOpen()) {
                String path = db2.getPath();
                if (path != null) {
                    a(path);
                    return;
                }
                return;
            }
            List listD = null;
            try {
                try {
                    listD = db2.D();
                } catch (SQLiteException unused) {
                }
                try {
                    db2.close();
                } catch (IOException unused2) {
                }
                if (listD != null) {
                    return;
                }
            } finally {
                if (listD != null) {
                    Iterator it = listD.iterator();
                    while (it.hasNext()) {
                        Object second = ((Pair) it.next()).second;
                        Intrinsics.g(second, "second");
                        a((String) second);
                    }
                } else {
                    String path2 = db2.getPath();
                    if (path2 != null) {
                        a(path2);
                    }
                }
            }
        }

        public abstract void d(d dVar);

        public void e(d db2, int i11, int i12) {
            Intrinsics.h(db2, "db");
            throw new SQLiteException("Can't downgrade database from version " + i11 + " to " + i12);
        }

        public void f(d db2) {
            Intrinsics.h(db2, "db");
        }

        public abstract void g(d dVar, int i11, int i12);
    }

    public static final class b {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final C0003b f155f = new C0003b(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f156a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f157b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final a f158c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f159d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f160e;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final Context f161a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private String f162b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private a f163c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private boolean f164d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private boolean f165e;

            public a(Context context) {
                Intrinsics.h(context, "context");
                this.f161a = context;
            }

            public a a(boolean z10) {
                this.f165e = z10;
                return this;
            }

            public b b() {
                String str;
                a aVar = this.f163c;
                if (aVar == null) {
                    throw new IllegalArgumentException("Must set a callback to create the configuration.");
                }
                if (this.f164d && ((str = this.f162b) == null || str.length() == 0)) {
                    throw new IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.");
                }
                return new b(this.f161a, this.f162b, aVar, this.f164d, this.f165e);
            }

            public a c(a callback) {
                Intrinsics.h(callback, "callback");
                this.f163c = callback;
                return this;
            }

            public a d(String str) {
                this.f162b = str;
                return this;
            }

            public a e(boolean z10) {
                this.f164d = z10;
                return this;
            }
        }

        /* JADX INFO: renamed from: a4.e$b$b, reason: collision with other inner class name */
        public static final class C0003b {
            private C0003b() {
            }

            public /* synthetic */ C0003b(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final a a(Context context) {
                Intrinsics.h(context, "context");
                return new a(context);
            }
        }

        public b(Context context, String str, a callback, boolean z10, boolean z11) {
            Intrinsics.h(context, "context");
            Intrinsics.h(callback, "callback");
            this.f156a = context;
            this.f157b = str;
            this.f158c = callback;
            this.f159d = z10;
            this.f160e = z11;
        }

        public static final a a(Context context) {
            return f155f.a(context);
        }
    }

    public interface c {
        e a(b bVar);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    String getDatabaseName();

    d getReadableDatabase();

    d getWritableDatabase();

    void setWriteAheadLoggingEnabled(boolean z10);
}
