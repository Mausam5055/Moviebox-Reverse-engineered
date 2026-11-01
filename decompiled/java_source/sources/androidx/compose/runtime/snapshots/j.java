package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.o1;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class j {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f4004e = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f4005f = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SnapshotIdSet f4006a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4007b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f4008c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4009d;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void j(Function2 function2) {
            synchronized (SnapshotKt.I()) {
                SnapshotKt.f3929h = CollectionsKt.z0(SnapshotKt.f3929h, function2);
                Unit unit = Unit.f67061a;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void l(Function1 function1) {
            synchronized (SnapshotKt.I()) {
                SnapshotKt.f3930i = CollectionsKt.z0(SnapshotKt.f3930i, function1);
                Unit unit = Unit.f67061a;
            }
            SnapshotKt.B();
        }

        public final j c() {
            return SnapshotKt.H();
        }

        public final j d() {
            return (j) SnapshotKt.f3923b.a();
        }

        public final boolean e() {
            return SnapshotKt.f3923b.a() != null;
        }

        public final j f(j jVar) {
            if (jVar instanceof g0) {
                g0 g0Var = (g0) jVar;
                if (g0Var.U() == androidx.compose.runtime.b.a()) {
                    g0Var.X(null);
                    return jVar;
                }
            }
            if (jVar instanceof h0) {
                h0 h0Var = (h0) jVar;
                if (h0Var.C() == androidx.compose.runtime.b.a()) {
                    h0Var.F(null);
                    return jVar;
                }
            }
            j jVarE = SnapshotKt.E(jVar, null, false, 6, null);
            jVarE.l();
            return jVarE;
        }

        public final void g() {
            SnapshotKt.H().o();
        }

        public final Object h(Function1 function1, Function1 function2, Function0 function0) {
            j g0Var;
            if (function1 == null && function2 == null) {
                return function0.invoke();
            }
            j jVar = (j) SnapshotKt.f3923b.a();
            if (jVar instanceof g0) {
                g0 g0Var2 = (g0) jVar;
                if (g0Var2.U() == androidx.compose.runtime.b.a()) {
                    Function1 function1H = g0Var2.h();
                    Function1 function1K = g0Var2.k();
                    try {
                        ((g0) jVar).X(SnapshotKt.L(function1, function1H, false, 4, null));
                        ((g0) jVar).Y(SnapshotKt.M(function2, function1K));
                        return function0.invoke();
                    } finally {
                        g0Var2.X(function1H);
                        g0Var2.Y(function1K);
                    }
                }
            }
            if (jVar == null || (jVar instanceof b)) {
                g0Var = new g0(jVar instanceof b ? (b) jVar : null, function1, function2, true, false);
            } else {
                if (function1 == null) {
                    return function0.invoke();
                }
                g0Var = jVar.x(function1);
            }
            try {
                j jVarL = g0Var.l();
                try {
                    Object objInvoke = function0.invoke();
                    g0Var.s(jVarL);
                    g0Var.d();
                    return objInvoke;
                } catch (Throwable th2) {
                    g0Var.s(jVarL);
                    throw th2;
                }
            } catch (Throwable th3) {
                g0Var.d();
                throw th3;
            }
        }

        public final e i(final Function2 function2) {
            SnapshotKt.A(SnapshotKt.f3922a);
            synchronized (SnapshotKt.I()) {
                SnapshotKt.f3929h = CollectionsKt.C0(SnapshotKt.f3929h, function2);
                Unit unit = Unit.f67061a;
            }
            return new e() { // from class: androidx.compose.runtime.snapshots.h
                @Override // androidx.compose.runtime.snapshots.e
                public final void dispose() {
                    j.a.j(function2);
                }
            };
        }

        public final e k(final Function1 function1) {
            synchronized (SnapshotKt.I()) {
                SnapshotKt.f3930i = CollectionsKt.C0(SnapshotKt.f3930i, function1);
                Unit unit = Unit.f67061a;
            }
            SnapshotKt.B();
            return new e() { // from class: androidx.compose.runtime.snapshots.i
                @Override // androidx.compose.runtime.snapshots.e
                public final void dispose() {
                    j.a.l(function1);
                }
            };
        }

        public final void m(j jVar, j jVar2, Function1 function1) {
            if (jVar != jVar2) {
                jVar2.s(jVar);
                jVar2.d();
            } else if (jVar instanceof g0) {
                ((g0) jVar).X(function1);
            } else {
                if (jVar instanceof h0) {
                    ((h0) jVar).F(function1);
                    return;
                }
                throw new IllegalStateException(("Non-transparent snapshot was reused: " + jVar).toString());
            }
        }

        public final void n() {
            boolean z10;
            synchronized (SnapshotKt.I()) {
                MutableScatterSet mutableScatterSetE = ((GlobalSnapshot) SnapshotKt.f3931j.get()).E();
                z10 = false;
                if (mutableScatterSetE != null && mutableScatterSetE.e()) {
                    z10 = true;
                }
            }
            if (z10) {
                SnapshotKt.B();
            }
        }

        public final b o(Function1 function1, Function1 function2) {
            b bVarQ;
            j jVarH = SnapshotKt.H();
            b bVar = jVarH instanceof b ? (b) jVarH : null;
            if (bVar == null || (bVarQ = bVar.Q(function1, function2)) == null) {
                throw new IllegalStateException("Cannot create a mutable snapshot of an read-only snapshot");
            }
            return bVarQ;
        }
    }

    private j(int i11, SnapshotIdSet snapshotIdSet) {
        this.f4006a = snapshotIdSet;
        this.f4007b = i11;
        this.f4009d = i11 != 0 ? SnapshotKt.c0(i11, g()) : -1;
    }

    public /* synthetic */ j(int i11, SnapshotIdSet snapshotIdSet, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, snapshotIdSet);
    }

    public final void b() {
        synchronized (SnapshotKt.I()) {
            c();
            r();
            Unit unit = Unit.f67061a;
        }
    }

    public void c() {
        SnapshotKt.f3925d = SnapshotKt.f3925d.l(f());
    }

    public void d() {
        this.f4008c = true;
        synchronized (SnapshotKt.I()) {
            q();
            Unit unit = Unit.f67061a;
        }
    }

    public final boolean e() {
        return this.f4008c;
    }

    public int f() {
        return this.f4007b;
    }

    public SnapshotIdSet g() {
        return this.f4006a;
    }

    public abstract Function1 h();

    public abstract boolean i();

    public int j() {
        return 0;
    }

    public abstract Function1 k();

    public j l() {
        j jVar = (j) SnapshotKt.f3923b.a();
        SnapshotKt.f3923b.b(this);
        return jVar;
    }

    public abstract void m(j jVar);

    public abstract void n(j jVar);

    public abstract void o();

    public abstract void p(c0 c0Var);

    public final void q() {
        int i11 = this.f4009d;
        if (i11 >= 0) {
            SnapshotKt.Y(i11);
            this.f4009d = -1;
        }
    }

    public void r() {
        q();
    }

    public void s(j jVar) {
        SnapshotKt.f3923b.b(jVar);
    }

    public final void t(boolean z10) {
        this.f4008c = z10;
    }

    public void u(int i11) {
        this.f4007b = i11;
    }

    public void v(SnapshotIdSet snapshotIdSet) {
        this.f4006a = snapshotIdSet;
    }

    public void w(int i11) {
        throw new IllegalStateException("Updating write count is not supported for this snapshot");
    }

    public abstract j x(Function1 function1);

    public final int y() {
        int i11 = this.f4009d;
        this.f4009d = -1;
        return i11;
    }

    public final void z() {
        if (this.f4008c) {
            o1.a("Cannot use a disposed snapshot");
        }
    }
}
