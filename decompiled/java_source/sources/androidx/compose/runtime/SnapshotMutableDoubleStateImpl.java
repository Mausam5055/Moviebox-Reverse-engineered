package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.SnapshotKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class SnapshotMutableDoubleStateImpl extends androidx.compose.runtime.snapshots.d0 implements a1, androidx.compose.runtime.snapshots.r {
    public static final int $stable = 0;
    private a next;

    private static final class a extends androidx.compose.runtime.snapshots.e0 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private double f3664c;

        public a(double d11) {
            this.f3664c = d11;
        }

        @Override // androidx.compose.runtime.snapshots.e0
        public void c(androidx.compose.runtime.snapshots.e0 e0Var) {
            Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableDoubleStateImpl.DoubleStateStateRecord");
            this.f3664c = ((a) e0Var).f3664c;
        }

        @Override // androidx.compose.runtime.snapshots.e0
        public androidx.compose.runtime.snapshots.e0 d() {
            return new a(this.f3664c);
        }

        public final double i() {
            return this.f3664c;
        }

        public final void j(double d11) {
            this.f3664c = d11;
        }
    }

    public SnapshotMutableDoubleStateImpl(double d11) {
        a aVar = new a(d11);
        if (androidx.compose.runtime.snapshots.j.f4004e.e()) {
            a aVar2 = new a(d11);
            aVar2.h(1);
            aVar.g(aVar2);
        }
        this.next = aVar;
    }

    /* JADX INFO: renamed from: component1, reason: merged with bridge method [inline-methods] */
    public Double m89component1() {
        return Double.valueOf(getDoubleValue());
    }

    public Function1<Double, Unit> component2() {
        return new Function1<Double, Unit>() { // from class: androidx.compose.runtime.SnapshotMutableDoubleStateImpl.component2.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke(((Number) obj).doubleValue());
                return Unit.f67061a;
            }

            public final void invoke(double d11) {
                SnapshotMutableDoubleStateImpl.this.setDoubleValue(d11);
            }
        };
    }

    @Override // androidx.compose.runtime.a1
    public double getDoubleValue() {
        return ((a) SnapshotKt.X(this.next, this)).i();
    }

    @Override // androidx.compose.runtime.snapshots.c0
    public androidx.compose.runtime.snapshots.e0 getFirstStateRecord() {
        return this.next;
    }

    @Override // androidx.compose.runtime.snapshots.r
    public q2 getPolicy() {
        return r2.j();
    }

    @Override // androidx.compose.runtime.snapshots.d0, androidx.compose.runtime.snapshots.c0
    public androidx.compose.runtime.snapshots.e0 mergeRecords(androidx.compose.runtime.snapshots.e0 e0Var, androidx.compose.runtime.snapshots.e0 e0Var2, androidx.compose.runtime.snapshots.e0 e0Var3) {
        Intrinsics.f(e0Var2, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableDoubleStateImpl.DoubleStateStateRecord");
        Intrinsics.f(e0Var3, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableDoubleStateImpl.DoubleStateStateRecord");
        if (((a) e0Var2).i() == ((a) e0Var3).i()) {
            return e0Var2;
        }
        return null;
    }

    @Override // androidx.compose.runtime.snapshots.c0
    public void prependStateRecord(androidx.compose.runtime.snapshots.e0 e0Var) {
        Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableDoubleStateImpl.DoubleStateStateRecord");
        this.next = (a) e0Var;
    }

    @Override // androidx.compose.runtime.a1
    public void setDoubleValue(double d11) {
        androidx.compose.runtime.snapshots.j jVarC;
        a aVar = (a) SnapshotKt.F(this.next);
        if (aVar.i() == d11) {
            return;
        }
        a aVar2 = this.next;
        SnapshotKt.J();
        synchronized (SnapshotKt.I()) {
            jVarC = androidx.compose.runtime.snapshots.j.f4004e.c();
            ((a) SnapshotKt.S(aVar2, this, jVarC, aVar)).j(d11);
            Unit unit = Unit.f67061a;
        }
        SnapshotKt.Q(jVarC, this);
    }

    public String toString() {
        return "MutableDoubleState(value=" + ((a) SnapshotKt.F(this.next)).i() + ")@" + hashCode();
    }
}
