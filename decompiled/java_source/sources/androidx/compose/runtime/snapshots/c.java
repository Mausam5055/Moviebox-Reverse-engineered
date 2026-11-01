package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class c extends b {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final b f3974s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f3975t;

    public c(int i11, SnapshotIdSet snapshotIdSet, Function1 function1, Function1 function2, b bVar) {
        super(i11, snapshotIdSet, function1, function2);
        this.f3974s = bVar;
        bVar.m(this);
    }

    private final void T() {
        if (this.f3975t) {
            return;
        }
        this.f3975t = true;
        this.f3974s.n(this);
    }

    @Override // androidx.compose.runtime.snapshots.b
    public k C() {
        Map mapR;
        if (this.f3974s.D() || this.f3974s.e()) {
            return new k.a(this);
        }
        MutableScatterSet mutableScatterSetE = E();
        int iF = f();
        if (mutableScatterSetE != null) {
            b bVar = this.f3974s;
            mapR = SnapshotKt.R(bVar, this, bVar.g());
        } else {
            mapR = null;
        }
        synchronized (SnapshotKt.I()) {
            try {
                SnapshotKt.g0(this);
                if (mutableScatterSetE == null || mutableScatterSetE.c() == 0) {
                    b();
                } else {
                    k kVarI = I(this.f3974s.f(), mapR, this.f3974s.g());
                    if (!Intrinsics.c(kVarI, k.b.f4011a)) {
                        return kVarI;
                    }
                    MutableScatterSet mutableScatterSetE2 = this.f3974s.E();
                    if (mutableScatterSetE2 != null) {
                        mutableScatterSetE2.i(mutableScatterSetE);
                    } else {
                        this.f3974s.P(mutableScatterSetE);
                        P(null);
                    }
                }
                if (this.f3974s.f() < iF) {
                    this.f3974s.B();
                }
                b bVar2 = this.f3974s;
                bVar2.v(bVar2.g().l(iF).j(F()));
                this.f3974s.J(iF);
                this.f3974s.L(y());
                this.f3974s.K(F());
                this.f3974s.M(G());
                Unit unit = Unit.f67061a;
                O(true);
                T();
                return k.b.f4011a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // androidx.compose.runtime.snapshots.b, androidx.compose.runtime.snapshots.j
    public void d() {
        if (e()) {
            return;
        }
        super.d();
        T();
    }
}
