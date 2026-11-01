package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.SnapshotKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class SnapshotMutableLongStateImpl extends androidx.compose.runtime.snapshots.d0 implements g1, androidx.compose.runtime.snapshots.r {
    public static final int $stable = 0;
    private a next;

    private static final class a extends androidx.compose.runtime.snapshots.e0 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f3667c;

        public a(long j11) {
            this.f3667c = j11;
        }

        @Override // androidx.compose.runtime.snapshots.e0
        public void c(androidx.compose.runtime.snapshots.e0 e0Var) {
            Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableLongStateImpl.LongStateStateRecord");
            this.f3667c = ((a) e0Var).f3667c;
        }

        @Override // androidx.compose.runtime.snapshots.e0
        public androidx.compose.runtime.snapshots.e0 d() {
            return new a(this.f3667c);
        }

        public final long i() {
            return this.f3667c;
        }

        public final void j(long j11) {
            this.f3667c = j11;
        }
    }

    public SnapshotMutableLongStateImpl(long j11) {
        a aVar = new a(j11);
        if (androidx.compose.runtime.snapshots.j.f4004e.e()) {
            a aVar2 = new a(j11);
            aVar2.h(1);
            aVar.g(aVar2);
        }
        this.next = aVar;
    }

    /* JADX INFO: renamed from: component1, reason: merged with bridge method [inline-methods] */
    public Long m92component1() {
        return Long.valueOf(getLongValue());
    }

    public Function1<Long, Unit> component2() {
        return new Function1<Long, Unit>() { // from class: androidx.compose.runtime.SnapshotMutableLongStateImpl.component2.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke(((Number) obj).longValue());
                return Unit.f67061a;
            }

            public final void invoke(long j11) {
                SnapshotMutableLongStateImpl.this.setLongValue(j11);
            }
        };
    }

    @Override // androidx.compose.runtime.snapshots.c0
    public androidx.compose.runtime.snapshots.e0 getFirstStateRecord() {
        return this.next;
    }

    @Override // androidx.compose.runtime.g1
    public long getLongValue() {
        return ((a) SnapshotKt.X(this.next, this)).i();
    }

    @Override // androidx.compose.runtime.snapshots.r
    public q2 getPolicy() {
        return r2.j();
    }

    @Override // androidx.compose.runtime.snapshots.d0, androidx.compose.runtime.snapshots.c0
    public androidx.compose.runtime.snapshots.e0 mergeRecords(androidx.compose.runtime.snapshots.e0 e0Var, androidx.compose.runtime.snapshots.e0 e0Var2, androidx.compose.runtime.snapshots.e0 e0Var3) {
        Intrinsics.f(e0Var2, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableLongStateImpl.LongStateStateRecord");
        Intrinsics.f(e0Var3, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableLongStateImpl.LongStateStateRecord");
        if (((a) e0Var2).i() == ((a) e0Var3).i()) {
            return e0Var2;
        }
        return null;
    }

    @Override // androidx.compose.runtime.snapshots.c0
    public void prependStateRecord(androidx.compose.runtime.snapshots.e0 e0Var) {
        Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableLongStateImpl.LongStateStateRecord");
        this.next = (a) e0Var;
    }

    @Override // androidx.compose.runtime.g1
    public void setLongValue(long j11) {
        androidx.compose.runtime.snapshots.j jVarC;
        a aVar = (a) SnapshotKt.F(this.next);
        if (aVar.i() != j11) {
            a aVar2 = this.next;
            SnapshotKt.J();
            synchronized (SnapshotKt.I()) {
                jVarC = androidx.compose.runtime.snapshots.j.f4004e.c();
                ((a) SnapshotKt.S(aVar2, this, jVarC, aVar)).j(j11);
                Unit unit = Unit.f67061a;
            }
            SnapshotKt.Q(jVarC, this);
        }
    }

    public String toString() {
        return "MutableLongState(value=" + ((a) SnapshotKt.F(this.next)).i() + ")@" + hashCode();
    }
}
