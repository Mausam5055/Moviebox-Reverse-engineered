package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.SnapshotKt;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class SnapshotMutableStateImpl extends androidx.compose.runtime.snapshots.d0 implements androidx.compose.runtime.snapshots.r {
    public static final int $stable = 0;
    private a next;
    private final q2 policy;

    private static final class a extends androidx.compose.runtime.snapshots.e0 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Object f3668c;

        public a(Object obj) {
            this.f3668c = obj;
        }

        @Override // androidx.compose.runtime.snapshots.e0
        public void c(androidx.compose.runtime.snapshots.e0 e0Var) {
            Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord<T of androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord>");
            this.f3668c = ((a) e0Var).f3668c;
        }

        @Override // androidx.compose.runtime.snapshots.e0
        public androidx.compose.runtime.snapshots.e0 d() {
            return new a(this.f3668c);
        }

        public final Object i() {
            return this.f3668c;
        }

        public final void j(Object obj) {
            this.f3668c = obj;
        }
    }

    public SnapshotMutableStateImpl(Object obj, q2 q2Var) {
        this.policy = q2Var;
        a aVar = new a(obj);
        if (androidx.compose.runtime.snapshots.j.f4004e.e()) {
            a aVar2 = new a(obj);
            aVar2.h(1);
            aVar.g(aVar2);
        }
        this.next = aVar;
    }

    public static /* synthetic */ void getDebuggerDisplayValue$annotations() {
    }

    public static /* synthetic */ void getValue$annotations() {
    }

    public Object component1() {
        return getValue();
    }

    public Function1<Object, Unit> component2() {
        return new Function1<Object, Unit>() { // from class: androidx.compose.runtime.SnapshotMutableStateImpl.component2.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                m93invoke(obj);
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m93invoke(Object obj) {
                SnapshotMutableStateImpl.this.setValue(obj);
            }
        };
    }

    @JvmName
    public final Object getDebuggerDisplayValue() {
        return ((a) SnapshotKt.F(this.next)).i();
    }

    @Override // androidx.compose.runtime.snapshots.c0
    public androidx.compose.runtime.snapshots.e0 getFirstStateRecord() {
        return this.next;
    }

    @Override // androidx.compose.runtime.snapshots.r
    public q2 getPolicy() {
        return this.policy;
    }

    @Override // androidx.compose.runtime.i1, androidx.compose.runtime.a3
    public Object getValue() {
        return ((a) SnapshotKt.X(this.next, this)).i();
    }

    @Override // androidx.compose.runtime.snapshots.d0, androidx.compose.runtime.snapshots.c0
    public androidx.compose.runtime.snapshots.e0 mergeRecords(androidx.compose.runtime.snapshots.e0 e0Var, androidx.compose.runtime.snapshots.e0 e0Var2, androidx.compose.runtime.snapshots.e0 e0Var3) {
        Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord<T of androidx.compose.runtime.SnapshotMutableStateImpl>");
        a aVar = (a) e0Var;
        Intrinsics.f(e0Var2, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord<T of androidx.compose.runtime.SnapshotMutableStateImpl>");
        a aVar2 = (a) e0Var2;
        Intrinsics.f(e0Var3, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord<T of androidx.compose.runtime.SnapshotMutableStateImpl>");
        a aVar3 = (a) e0Var3;
        if (getPolicy().b(aVar2.i(), aVar3.i())) {
            return e0Var2;
        }
        Object objA = getPolicy().a(aVar.i(), aVar2.i(), aVar3.i());
        if (objA == null) {
            return null;
        }
        androidx.compose.runtime.snapshots.e0 e0VarD = aVar3.d();
        Intrinsics.f(e0VarD, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord<T of androidx.compose.runtime.SnapshotMutableStateImpl.mergeRecords$lambda$4>");
        ((a) e0VarD).j(objA);
        return e0VarD;
    }

    @Override // androidx.compose.runtime.snapshots.c0
    public void prependStateRecord(androidx.compose.runtime.snapshots.e0 e0Var) {
        Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord<T of androidx.compose.runtime.SnapshotMutableStateImpl>");
        this.next = (a) e0Var;
    }

    @Override // androidx.compose.runtime.i1
    public void setValue(Object obj) {
        androidx.compose.runtime.snapshots.j jVarC;
        a aVar = (a) SnapshotKt.F(this.next);
        if (getPolicy().b(aVar.i(), obj)) {
            return;
        }
        a aVar2 = this.next;
        SnapshotKt.J();
        synchronized (SnapshotKt.I()) {
            jVarC = androidx.compose.runtime.snapshots.j.f4004e.c();
            ((a) SnapshotKt.S(aVar2, this, jVarC, aVar)).j(obj);
            Unit unit = Unit.f67061a;
        }
        SnapshotKt.Q(jVarC, this);
    }

    public String toString() {
        return "MutableState(value=" + ((a) SnapshotKt.F(this.next)).i() + ")@" + hashCode();
    }
}
