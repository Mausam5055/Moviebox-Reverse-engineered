package androidx.room;

import com.mbridge.msdk.MBridgeConstans;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C0114a f14559c = new C0114a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f14560a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f14561b;

    /* JADX INFO: renamed from: androidx.room.a$a, reason: collision with other inner class name */
    public static final class C0114a {
        private C0114a() {
        }

        public /* synthetic */ C0114a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    protected final class b implements z3.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final z3.c f14562a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ a f14563b;

        /* JADX INFO: renamed from: androidx.room.a$b$a, reason: collision with other inner class name */
        static final class C0115a implements Function1 {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f14564a;

            C0115a(String str) {
                this.f14564a = str;
            }

            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Void invoke(Throwable error) {
                Intrinsics.h(error, "error");
                throw new IllegalStateException("Unable to open database '" + this.f14564a + "'. Was a proper path / name used in Room's database builder?", error);
            }
        }

        public b(a aVar, z3.c actual) {
            Intrinsics.h(actual, "actual");
            this.f14563b = aVar;
            this.f14562a = actual;
        }

        private final z3.b b(final String str) {
            x3.b bVar = new x3.b(str, (this.f14563b.f14560a || this.f14563b.f14561b || Intrinsics.c(str, ":memory:")) ? false : true);
            final a aVar = this.f14563b;
            return (z3.b) bVar.b(new Function0() { // from class: androidx.room.b
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return a.b.c(aVar, this, str);
                }
            }, new C0115a(str));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final z3.b c(a aVar, b bVar, String str) throws Exception {
            if (aVar.f14561b) {
                throw new IllegalStateException("Recursive database initialization detected. Did you try to use the database instance during initialization? Maybe in one of the callbacks?");
            }
            z3.b bVarOpen = bVar.f14562a.open(str);
            if (aVar.f14560a) {
                aVar.g(bVarOpen);
            } else {
                try {
                    aVar.f14561b = true;
                    aVar.i(bVarOpen);
                } finally {
                    aVar.f14561b = false;
                }
            }
            return bVarOpen;
        }

        @Override // z3.c
        public z3.b open(String fileName) {
            Intrinsics.h(fileName, "fileName");
            return b(this.f14563b.A(fileName));
        }
    }

    public /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f14565a;

        static {
            int[] iArr = new int[RoomDatabase.JournalMode.values().length];
            try {
                iArr[RoomDatabase.JournalMode.TRUNCATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f14565a = iArr;
        }
    }

    private final void B(z3.b bVar) throws Exception {
        l(bVar);
        z3.a.a(bVar, c0.a(r().c()));
    }

    private final void f(z3.b bVar) throws Exception {
        Object objM454constructorimpl;
        if (t(bVar)) {
            z3.e eVarD0 = bVar.D0("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1");
            try {
                String strN0 = eVarD0.A0() ? eVarD0.n0(0) : null;
                AutoCloseableKt.a(eVarD0, null);
                if (Intrinsics.c(r().c(), strN0) || Intrinsics.c(r().d(), strN0)) {
                    return;
                }
                throw new IllegalStateException(("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: " + r().c() + ", found: " + strN0).toString());
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    AutoCloseableKt.a(eVarD0, th2);
                    throw th3;
                }
            }
        }
        z3.a.a(bVar, "BEGIN EXCLUSIVE TRANSACTION");
        try {
            Result.Companion companion = Result.INSTANCE;
            d0.a aVarJ = r().j(bVar);
            if (!aVarJ.f14654a) {
                throw new IllegalStateException(("Pre-packaged database has an invalid schema: " + aVarJ.f14655b).toString());
            }
            r().h(bVar);
            B(bVar);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
            if (Result.m461isSuccessimpl(objM454constructorimpl)) {
                z3.a.a(bVar, "END TRANSACTION");
            }
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
            if (thM457exceptionOrNullimpl == null) {
                Result.m453boximpl(objM454constructorimpl);
            } else {
                z3.a.a(bVar, "ROLLBACK TRANSACTION");
                throw thM457exceptionOrNullimpl;
            }
        } catch (Throwable th4) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th4));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g(z3.b bVar) throws Exception {
        k(bVar);
        h(bVar);
        r().g(bVar);
    }

    private final void h(z3.b bVar) throws Exception {
        z3.e eVarD0 = bVar.D0("PRAGMA busy_timeout");
        try {
            eVarD0.A0();
            long j11 = eVarD0.getLong(0);
            AutoCloseableKt.a(eVarD0, null);
            if (j11 < 3000) {
                z3.a.a(bVar, "PRAGMA busy_timeout = 3000");
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarD0, th2);
                throw th3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i(z3.b bVar) throws Exception {
        Object objM454constructorimpl;
        j(bVar);
        k(bVar);
        h(bVar);
        z3.e eVarD0 = bVar.D0("PRAGMA user_version");
        try {
            eVarD0.A0();
            int i11 = (int) eVarD0.getLong(0);
            AutoCloseableKt.a(eVarD0, null);
            if (i11 != r().e()) {
                z3.a.a(bVar, "BEGIN EXCLUSIVE TRANSACTION");
                try {
                    Result.Companion companion = Result.INSTANCE;
                    if (i11 == 0) {
                        x(bVar);
                    } else {
                        y(bVar, i11, r().e());
                    }
                    z3.a.a(bVar, "PRAGMA user_version = " + r().e());
                    objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
                }
                if (Result.m461isSuccessimpl(objM454constructorimpl)) {
                    z3.a.a(bVar, "END TRANSACTION");
                }
                Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                if (thM457exceptionOrNullimpl != null) {
                    z3.a.a(bVar, "ROLLBACK TRANSACTION");
                    throw thM457exceptionOrNullimpl;
                }
            }
            z(bVar);
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                AutoCloseableKt.a(eVarD0, th3);
                throw th4;
            }
        }
    }

    private final void j(z3.b bVar) throws Exception {
        if (o().f14576g == RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING) {
            z3.a.a(bVar, "PRAGMA journal_mode = WAL");
        } else {
            z3.a.a(bVar, "PRAGMA journal_mode = TRUNCATE");
        }
    }

    private final void k(z3.b bVar) throws Exception {
        if (o().f14576g == RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING) {
            z3.a.a(bVar, "PRAGMA synchronous = NORMAL");
        } else {
            z3.a.a(bVar, "PRAGMA synchronous = FULL");
        }
    }

    private final void l(z3.b bVar) throws Exception {
        z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
    }

    private final void m(z3.b bVar) throws Exception {
        if (!o().f14589t) {
            r().b(bVar);
            return;
        }
        z3.e eVarD0 = bVar.D0("SELECT name, type FROM sqlite_master WHERE type = 'table' OR type = 'view'");
        try {
            List listC = CollectionsKt.c();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.n0(0);
                if (!StringsKt.W(strN0, "sqlite_", false, 2, null) && !Intrinsics.c(strN0, "android_metadata")) {
                    listC.add(TuplesKt.a(strN0, Boolean.valueOf(Intrinsics.c(eVarD0.n0(1), MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW))));
                }
            }
            List<Pair> listA = CollectionsKt.a(listC);
            AutoCloseableKt.a(eVarD0, null);
            for (Pair pair : listA) {
                String str = (String) pair.component1();
                if (((Boolean) pair.component2()).booleanValue()) {
                    z3.a.a(bVar, "DROP VIEW IF EXISTS " + str);
                } else {
                    z3.a.a(bVar, "DROP TABLE IF EXISTS " + str);
                }
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarD0, th2);
                throw th3;
            }
        }
    }

    private final boolean s(z3.b bVar) throws Exception {
        z3.e eVarD0 = bVar.D0("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z10 = false;
            if (eVarD0.A0() && eVarD0.getLong(0) == 0) {
                z10 = true;
            }
            AutoCloseableKt.a(eVarD0, null);
            return z10;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarD0, th2);
                throw th3;
            }
        }
    }

    private final boolean t(z3.b bVar) throws Exception {
        z3.e eVarD0 = bVar.D0("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name = 'room_master_table'");
        try {
            boolean z10 = false;
            if (eVarD0.A0() && eVarD0.getLong(0) != 0) {
                z10 = true;
            }
            AutoCloseableKt.a(eVarD0, null);
            return z10;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarD0, th2);
                throw th3;
            }
        }
    }

    private final void u(z3.b bVar) {
        Iterator it = n().iterator();
        while (it.hasNext()) {
            ((RoomDatabase.b) it.next()).b(bVar);
        }
    }

    private final void v(z3.b bVar) {
        Iterator it = n().iterator();
        while (it.hasNext()) {
            ((RoomDatabase.b) it.next()).d(bVar);
        }
    }

    private final void w(z3.b bVar) {
        Iterator it = n().iterator();
        while (it.hasNext()) {
            ((RoomDatabase.b) it.next()).f(bVar);
        }
    }

    public String A(String fileName) {
        Intrinsics.h(fileName, "fileName");
        return fileName;
    }

    protected abstract List n();

    protected abstract androidx.room.c o();

    protected final int p(RoomDatabase.JournalMode journalMode) {
        Intrinsics.h(journalMode, "<this>");
        int i11 = c.f14565a[journalMode.ordinal()];
        if (i11 == 1) {
            return 1;
        }
        if (i11 == 2) {
            return 4;
        }
        throw new IllegalStateException(("Can't get max number of reader for journal mode '" + journalMode + '\'').toString());
    }

    protected final int q(RoomDatabase.JournalMode journalMode) {
        Intrinsics.h(journalMode, "<this>");
        int i11 = c.f14565a[journalMode.ordinal()];
        if (i11 == 1 || i11 == 2) {
            return 1;
        }
        throw new IllegalStateException(("Can't get max number of writers for journal mode '" + journalMode + '\'').toString());
    }

    protected abstract d0 r();

    protected final void x(z3.b connection) {
        Intrinsics.h(connection, "connection");
        boolean zS = s(connection);
        r().a(connection);
        if (!zS) {
            d0.a aVarJ = r().j(connection);
            if (!aVarJ.f14654a) {
                throw new IllegalStateException(("Pre-packaged database has an invalid schema: " + aVarJ.f14655b).toString());
            }
        }
        B(connection);
        r().f(connection);
        u(connection);
    }

    protected final void y(z3.b connection, int i11, int i12) {
        Intrinsics.h(connection, "connection");
        List listB = androidx.room.util.g.b(o().f14573d, i11, i12);
        if (listB == null) {
            if (!androidx.room.util.g.d(o(), i11, i12)) {
                m(connection);
                v(connection);
                r().a(connection);
                return;
            } else {
                throw new IllegalStateException(("A migration from " + i11 + " to " + i12 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* functions.").toString());
            }
        }
        r().i(connection);
        Iterator it = listB.iterator();
        while (it.hasNext()) {
            ((y3.c) it.next()).b(connection);
        }
        d0.a aVarJ = r().j(connection);
        if (aVarJ.f14654a) {
            r().h(connection);
            B(connection);
        } else {
            throw new IllegalStateException(("Migration didn't properly handle: " + aVarJ.f14655b).toString());
        }
    }

    protected final void z(z3.b connection) {
        Intrinsics.h(connection, "connection");
        f(connection);
        r().g(connection);
        w(connection);
        this.f14560a = true;
    }
}
