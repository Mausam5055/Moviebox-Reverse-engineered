package androidx.room;

import androidx.room.coroutines.ConnectionPool;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class s extends androidx.room.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.room.c f14724d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d0 f14725e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f14726f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ConnectionPool f14727g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private a4.d f14728h;

    private static final class a extends d0 {
        public a() {
            super(-1, "", "");
        }

        @Override // androidx.room.d0
        public void a(z3.b connection) {
            Intrinsics.h(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.d0
        public void b(z3.b connection) {
            Intrinsics.h(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.d0
        public void f(z3.b connection) {
            Intrinsics.h(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.d0
        public void g(z3.b connection) {
            Intrinsics.h(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.d0
        public void h(z3.b connection) {
            Intrinsics.h(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.d0
        public void i(z3.b connection) {
            Intrinsics.h(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.d0
        public d0.a j(z3.b connection) {
            Intrinsics.h(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }
    }

    public final class b extends a4.e.a {
        public b(int i11) {
            super(i11);
        }

        @Override // a4.e.a
        public void d(a4.d db2) {
            Intrinsics.h(db2, "db");
            s.this.x(new androidx.room.driver.a(db2));
        }

        @Override // a4.e.a
        public void e(a4.d db2, int i11, int i12) {
            Intrinsics.h(db2, "db");
            g(db2, i11, i12);
        }

        @Override // a4.e.a
        public void f(a4.d db2) {
            Intrinsics.h(db2, "db");
            s.this.z(new androidx.room.driver.a(db2));
            s.this.f14728h = db2;
        }

        @Override // a4.e.a
        public void g(a4.d db2, int i11, int i12) {
            Intrinsics.h(db2, "db");
            s.this.y(new androidx.room.driver.a(db2), i11, i12);
        }
    }

    public static final class c extends RoomDatabase.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function1 f14730a;

        c(Function1 function1) {
            this.f14730a = function1;
        }

        @Override // androidx.room.RoomDatabase.b
        public void e(a4.d db2) {
            Intrinsics.h(db2, "db");
            this.f14730a.invoke(db2);
        }
    }

    public s(androidx.room.c config, d0 openDelegate) {
        ConnectionPool connectionPoolB;
        Intrinsics.h(config, "config");
        Intrinsics.h(openDelegate, "openDelegate");
        this.f14724d = config;
        this.f14725e = openDelegate;
        List list = config.f14574e;
        this.f14726f = list == null ? CollectionsKt.l() : list;
        z3.c cVar = config.f14590u;
        if (cVar != null) {
            if (cVar instanceof c4.b) {
                androidx.room.a.b bVar = new androidx.room.a.b(this, cVar);
                String str = config.f14571b;
                connectionPoolB = new androidx.room.coroutines.b(bVar, str != null ? str : ":memory:");
            } else {
                connectionPoolB = config.f14571b == null ? androidx.room.coroutines.h.b(new androidx.room.a.b(this, cVar), ":memory:") : androidx.room.coroutines.h.a(new androidx.room.a.b(this, cVar), config.f14571b, p(config.f14576g), q(config.f14576g));
            }
            this.f14727g = connectionPoolB;
        } else {
            if (config.f14572c == null) {
                throw new IllegalArgumentException("SQLiteManager was constructed with both null driver and open helper factory!");
            }
            this.f14727g = new androidx.room.driver.b(new androidx.room.driver.c(config.f14572c.a(a4.e.b.f155f.a(config.f14570a).d(config.f14571b).c(new b(openDelegate.e())).b())));
        }
        H();
    }

    public s(androidx.room.c config, Function1 supportOpenHelperFactory) {
        Intrinsics.h(config, "config");
        Intrinsics.h(supportOpenHelperFactory, "supportOpenHelperFactory");
        this.f14724d = config;
        this.f14725e = new a();
        List list = config.f14574e;
        this.f14726f = list == null ? CollectionsKt.l() : list;
        this.f14727g = new androidx.room.driver.b(new androidx.room.driver.c((a4.e) supportOpenHelperFactory.invoke(I(config, new Function1() { // from class: androidx.room.r
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return s.D(this.f14723a, (a4.d) obj);
            }
        }))));
        H();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D(s sVar, a4.d db2) {
        Intrinsics.h(db2, "db");
        sVar.f14728h = db2;
        return Unit.f67061a;
    }

    private final void H() {
        boolean z10 = o().f14576g == RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING;
        a4.e eVarG = G();
        if (eVarG != null) {
            eVarG.setWriteAheadLoggingEnabled(z10);
        }
    }

    private final androidx.room.c I(androidx.room.c cVar, Function1 function1) {
        List listL = cVar.f14574e;
        if (listL == null) {
            listL = CollectionsKt.l();
        }
        return androidx.room.c.b(cVar, null, null, null, null, CollectionsKt.C0(listL, new c(function1)), false, null, null, null, null, false, false, null, null, null, null, null, null, null, false, null, null, 4194287, null);
    }

    @Override // androidx.room.a
    public String A(String fileName) {
        Intrinsics.h(fileName, "fileName");
        if (Intrinsics.c(fileName, ":memory:")) {
            return fileName;
        }
        String absolutePath = o().f14570a.getDatabasePath(fileName).getAbsolutePath();
        Intrinsics.e(absolutePath);
        return absolutePath;
    }

    public final void F() {
        this.f14727g.close();
    }

    public final a4.e G() {
        androidx.room.driver.c cVarH;
        ConnectionPool connectionPool = this.f14727g;
        androidx.room.driver.b bVar = connectionPool instanceof androidx.room.driver.b ? (androidx.room.driver.b) connectionPool : null;
        if (bVar == null || (cVarH = bVar.h()) == null) {
            return null;
        }
        return cVarH.a();
    }

    public final boolean J() {
        a4.d dVar = this.f14728h;
        if (dVar != null) {
            return dVar.isOpen();
        }
        return false;
    }

    public Object K(boolean z10, Function2 function2, Continuation continuation) {
        return this.f14727g.f(z10, function2, continuation);
    }

    @Override // androidx.room.a
    protected List n() {
        return this.f14726f;
    }

    @Override // androidx.room.a
    protected androidx.room.c o() {
        return this.f14724d;
    }

    @Override // androidx.room.a
    protected d0 r() {
        return this.f14725e;
    }
}
