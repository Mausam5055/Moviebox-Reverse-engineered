package androidx.compose.foundation;

import androidx.compose.ui.node.m1;
import androidx.compose.ui.node.n1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class s extends androidx.compose.ui.f.c implements m1, androidx.compose.ui.node.p {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final a f3165q = new a(null);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f3166r = 8;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f3167n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f3168o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private androidx.compose.ui.layout.l f3169p;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final t D1() {
        if (!k1()) {
            return null;
        }
        m1 m1VarA = n1.a(this, t.f3188p);
        if (m1VarA instanceof t) {
            return (t) m1VarA;
        }
        return null;
    }

    private final void E1() {
        t tVarD1;
        androidx.compose.ui.layout.l lVar = this.f3169p;
        if (lVar != null) {
            Intrinsics.e(lVar);
            if (!lVar.F() || (tVarD1 = D1()) == null) {
                return;
            }
            tVarD1.D1(this.f3169p);
        }
    }

    @Override // androidx.compose.ui.node.m1
    public Object D() {
        return f3165q;
    }

    public final void F1(boolean z10) {
        if (z10 == this.f3167n) {
            return;
        }
        if (z10) {
            E1();
        } else {
            t tVarD1 = D1();
            if (tVarD1 != null) {
                tVarD1.D1(null);
            }
        }
        this.f3167n = z10;
    }

    @Override // androidx.compose.ui.f.c
    public boolean i1() {
        return this.f3168o;
    }

    @Override // androidx.compose.ui.node.p
    public void v(androidx.compose.ui.layout.l lVar) {
        this.f3169p = lVar;
        if (this.f3167n) {
            if (lVar.F()) {
                E1();
                return;
            }
            t tVarD1 = D1();
            if (tVarD1 != null) {
                tVarD1.D1(null);
            }
        }
    }
}
