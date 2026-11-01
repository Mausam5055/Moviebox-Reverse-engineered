package androidx.room;

import android.database.Cursor;
import com.mbridge.msdk.MBridgeConstans;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
public class f0 extends a4.e.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f14676h = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private androidx.room.c f14677c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f14678d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b f14679e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f14680f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f14681g;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(a4.d db2) {
            Intrinsics.h(db2, "db");
            Cursor cursorI0 = db2.i0("SELECT name, type FROM sqlite_master WHERE type = 'table' OR type = 'view'");
            try {
                List listC = CollectionsKt.c();
                while (cursorI0.moveToNext()) {
                    String string = cursorI0.getString(0);
                    Intrinsics.e(string);
                    if (!StringsKt.W(string, "sqlite_", false, 2, null) && !Intrinsics.c(string, "android_metadata")) {
                        listC.add(TuplesKt.a(string, Boolean.valueOf(Intrinsics.c(cursorI0.getString(1), MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW))));
                    }
                }
                List<Pair> listA = CollectionsKt.a(listC);
                CloseableKt.a(cursorI0, null);
                for (Pair pair : listA) {
                    String str = (String) pair.component1();
                    if (((Boolean) pair.component2()).booleanValue()) {
                        db2.E("DROP VIEW IF EXISTS " + str);
                    } else {
                        db2.E("DROP TABLE IF EXISTS " + str);
                    }
                }
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.a(cursorI0, th2);
                    throw th3;
                }
            }
        }

        public final boolean b(a4.d db2) {
            Intrinsics.h(db2, "db");
            Cursor cursorI0 = db2.i0("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
            try {
                boolean z10 = false;
                if (cursorI0.moveToFirst() && cursorI0.getInt(0) == 0) {
                    z10 = true;
                }
                CloseableKt.a(cursorI0, null);
                return z10;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.a(cursorI0, th2);
                    throw th3;
                }
            }
        }

        public final boolean c(a4.d db2) {
            Intrinsics.h(db2, "db");
            Cursor cursorI0 = db2.i0("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
            try {
                boolean z10 = false;
                if (cursorI0.moveToFirst() && cursorI0.getInt(0) != 0) {
                    z10 = true;
                }
                CloseableKt.a(cursorI0, null);
                return z10;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.a(cursorI0, th2);
                    throw th3;
                }
            }
        }
    }

    public static abstract class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14682a;

        public b(int i11) {
            this.f14682a = i11;
        }

        public abstract void a(a4.d dVar);

        public abstract void b(a4.d dVar);

        public abstract void c(a4.d dVar);

        public abstract void d(a4.d dVar);

        public abstract void e(a4.d dVar);

        public abstract void f(a4.d dVar);

        public abstract c g(a4.d dVar);
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f14683a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f14684b;

        public c(boolean z10, String str) {
            this.f14683a = z10;
            this.f14684b = str;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f0(androidx.room.c configuration, b delegate, String identityHash, String legacyHash) {
        super(delegate.f14682a);
        Intrinsics.h(configuration, "configuration");
        Intrinsics.h(delegate, "delegate");
        Intrinsics.h(identityHash, "identityHash");
        Intrinsics.h(legacyHash, "legacyHash");
        this.f14678d = configuration.f14574e;
        this.f14677c = configuration;
        this.f14679e = delegate;
        this.f14680f = identityHash;
        this.f14681g = legacyHash;
    }

    private final void h(a4.d dVar) {
        if (!f14676h.c(dVar)) {
            c cVarG = this.f14679e.g(dVar);
            if (cVarG.f14683a) {
                this.f14679e.e(dVar);
                j(dVar);
                return;
            } else {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + cVarG.f14684b);
            }
        }
        Cursor cursorB0 = dVar.b0(new a4.a("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"));
        try {
            String string = cursorB0.moveToFirst() ? cursorB0.getString(0) : null;
            CloseableKt.a(cursorB0, null);
            if (Intrinsics.c(this.f14680f, string) || Intrinsics.c(this.f14681g, string)) {
                return;
            }
            throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: " + this.f14680f + ", found: " + string);
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                CloseableKt.a(cursorB0, th2);
                throw th3;
            }
        }
    }

    private final void i(a4.d dVar) {
        dVar.E("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
    }

    private final void j(a4.d dVar) {
        i(dVar);
        dVar.E(c0.a(this.f14680f));
    }

    @Override // a4.e.a
    public void b(a4.d db2) {
        Intrinsics.h(db2, "db");
        super.b(db2);
    }

    @Override // a4.e.a
    public void d(a4.d db2) {
        Intrinsics.h(db2, "db");
        boolean zB = f14676h.b(db2);
        this.f14679e.a(db2);
        if (!zB) {
            c cVarG = this.f14679e.g(db2);
            if (!cVarG.f14683a) {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + cVarG.f14684b);
            }
        }
        j(db2);
        this.f14679e.c(db2);
        List list = this.f14678d;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((RoomDatabase.b) it.next()).a(db2);
            }
        }
    }

    @Override // a4.e.a
    public void e(a4.d db2, int i11, int i12) {
        Intrinsics.h(db2, "db");
        g(db2, i11, i12);
    }

    @Override // a4.e.a
    public void f(a4.d db2) {
        Intrinsics.h(db2, "db");
        super.f(db2);
        h(db2);
        this.f14679e.d(db2);
        List list = this.f14678d;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((RoomDatabase.b) it.next()).e(db2);
            }
        }
        this.f14677c = null;
    }

    @Override // a4.e.a
    public void g(a4.d db2, int i11, int i12) {
        List listD;
        Intrinsics.h(db2, "db");
        androidx.room.c cVar = this.f14677c;
        if (cVar != null && (listD = cVar.f14573d.d(i11, i12)) != null) {
            this.f14679e.f(db2);
            Iterator it = listD.iterator();
            while (it.hasNext()) {
                ((y3.c) it.next()).b(new androidx.room.driver.a(db2));
            }
            c cVarG = this.f14679e.g(db2);
            if (cVarG.f14683a) {
                this.f14679e.e(db2);
                j(db2);
                return;
            } else {
                throw new IllegalStateException("Migration didn't properly handle: " + cVarG.f14684b);
            }
        }
        androidx.room.c cVar2 = this.f14677c;
        if (cVar2 == null || cVar2.e(i11, i12)) {
            throw new IllegalStateException("A migration from " + i11 + " to " + i12 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods.");
        }
        if (cVar2.f14589t) {
            f14676h.a(db2);
        } else {
            this.f14679e.b(db2);
        }
        List list = this.f14678d;
        if (list != null) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                ((RoomDatabase.b) it2.next()).c(db2);
            }
        }
        this.f14679e.a(db2);
    }
}
