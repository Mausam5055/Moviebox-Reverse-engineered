package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.SnapshotKt;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class SnapshotMutableIntStateImpl extends androidx.compose.runtime.snapshots.d0 implements e1, androidx.compose.runtime.snapshots.r {
    public static final int $stable = 0;
    private a next;

    private static final class a extends androidx.compose.runtime.snapshots.e0 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f3666c;

        public a(int i11) {
            this.f3666c = i11;
        }

        @Override // androidx.compose.runtime.snapshots.e0
        public void c(androidx.compose.runtime.snapshots.e0 e0Var) {
            Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableIntStateImpl.IntStateStateRecord");
            this.f3666c = ((a) e0Var).f3666c;
        }

        @Override // androidx.compose.runtime.snapshots.e0
        public androidx.compose.runtime.snapshots.e0 d() {
            return new a(this.f3666c);
        }

        public final int i() {
            return this.f3666c;
        }

        public final void j(int i11) {
            this.f3666c = i11;
        }
    }

    public SnapshotMutableIntStateImpl(int i11) {
        a aVar = new a(i11);
        if (androidx.compose.runtime.snapshots.j.f4004e.e()) {
            a aVar2 = new a(i11);
            aVar2.h(1);
            aVar.g(aVar2);
        }
        this.next = aVar;
    }

    public static /* synthetic */ void getDebuggerDisplayValue$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: merged with bridge method [inline-methods] */
    public Integer m91component1() {
        return Integer.valueOf(getIntValue());
    }

    public Function1<Integer, Unit> component2() {
        return new Function1<Integer, Unit>() { // from class: androidx.compose.runtime.SnapshotMutableIntStateImpl.component2.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke(((Number) obj).intValue());
                return Unit.f67061a;
            }

            public final void invoke(int i11) {
                SnapshotMutableIntStateImpl.this.setIntValue(i11);
            }
        };
    }

    @JvmName
    public final int getDebuggerDisplayValue() {
        return ((a) SnapshotKt.F(this.next)).i();
    }

    @Override // androidx.compose.runtime.snapshots.c0
    public androidx.compose.runtime.snapshots.e0 getFirstStateRecord() {
        return this.next;
    }

    @Override // androidx.compose.runtime.e1, androidx.compose.runtime.n0
    public int getIntValue() {
        return ((a) SnapshotKt.X(this.next, this)).i();
    }

    @Override // androidx.compose.runtime.snapshots.r
    public q2 getPolicy() {
        return r2.j();
    }

    @Override // androidx.compose.runtime.snapshots.d0, androidx.compose.runtime.snapshots.c0
    public androidx.compose.runtime.snapshots.e0 mergeRecords(androidx.compose.runtime.snapshots.e0 e0Var, androidx.compose.runtime.snapshots.e0 e0Var2, androidx.compose.runtime.snapshots.e0 e0Var3) {
        Intrinsics.f(e0Var2, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableIntStateImpl.IntStateStateRecord");
        Intrinsics.f(e0Var3, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableIntStateImpl.IntStateStateRecord");
        if (((a) e0Var2).i() == ((a) e0Var3).i()) {
            return e0Var2;
        }
        return null;
    }

    @Override // androidx.compose.runtime.snapshots.c0
    public void prependStateRecord(androidx.compose.runtime.snapshots.e0 e0Var) {
        Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableIntStateImpl.IntStateStateRecord");
        this.next = (a) e0Var;
    }

    @Override // androidx.compose.runtime.e1
    public void setIntValue(int i11) {
        androidx.compose.runtime.snapshots.j jVarC;
        a aVar = (a) SnapshotKt.F(this.next);
        if (aVar.i() != i11) {
            a aVar2 = this.next;
            SnapshotKt.J();
            synchronized (SnapshotKt.I()) {
                jVarC = androidx.compose.runtime.snapshots.j.f4004e.c();
                ((a) SnapshotKt.S(aVar2, this, jVarC, aVar)).j(i11);
                Unit unit = Unit.f67061a;
            }
            SnapshotKt.Q(jVarC, this);
        }
    }

    public String toString() {
        return "MutableIntState(value=" + ((a) SnapshotKt.F(this.next)).i() + ")@" + hashCode();
    }
}
