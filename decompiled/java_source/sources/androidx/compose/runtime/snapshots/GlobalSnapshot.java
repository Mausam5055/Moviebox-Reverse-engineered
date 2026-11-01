package androidx.compose.runtime.snapshots;

import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class GlobalSnapshot extends b {
    /* JADX WARN: Illegal instructions before constructor call */
    public GlobalSnapshot(int i11, SnapshotIdSet snapshotIdSet) {
        Function1<Object, Unit> function1;
        synchronized (SnapshotKt.I()) {
            final List list = SnapshotKt.f3930i;
            function1 = (Function1) CollectionsKt.G0(list);
            function1 = function1 == null ? new Function1<Object, Unit>() { // from class: androidx.compose.runtime.snapshots.GlobalSnapshot$1$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    m95invoke(obj);
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m95invoke(Object obj) {
                    List<Function1<Object, Unit>> list2 = list;
                    int size = list2.size();
                    for (int i12 = 0; i12 < size; i12++) {
                        list2.get(i12).invoke(obj);
                    }
                }
            } : function1;
        }
        super(i11, snapshotIdSet, null, function1);
    }

    @Override // androidx.compose.runtime.snapshots.b
    public k C() {
        throw new IllegalStateException("Cannot apply the global snapshot directly. Call Snapshot.advanceGlobalSnapshot");
    }

    @Override // androidx.compose.runtime.snapshots.b
    public b Q(final Function1 function1, final Function1 function2) {
        return (b) SnapshotKt.b0(new Function1<SnapshotIdSet, b>() { // from class: androidx.compose.runtime.snapshots.GlobalSnapshot$takeNestedMutableSnapshot$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final b invoke(SnapshotIdSet snapshotIdSet) {
                int i11;
                synchronized (SnapshotKt.I()) {
                    i11 = SnapshotKt.f3926e;
                    SnapshotKt.f3926e = i11 + 1;
                }
                return new b(i11, snapshotIdSet, function1, function2);
            }
        });
    }

    @Override // androidx.compose.runtime.snapshots.b, androidx.compose.runtime.snapshots.j
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public Void m(j jVar) {
        u.b();
        throw new KotlinNothingValueException();
    }

    @Override // androidx.compose.runtime.snapshots.b, androidx.compose.runtime.snapshots.j
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public Void n(j jVar) {
        u.b();
        throw new KotlinNothingValueException();
    }

    @Override // androidx.compose.runtime.snapshots.b, androidx.compose.runtime.snapshots.j
    public void d() {
        synchronized (SnapshotKt.I()) {
            q();
            Unit unit = Unit.f67061a;
        }
    }

    @Override // androidx.compose.runtime.snapshots.b, androidx.compose.runtime.snapshots.j
    public void o() {
        SnapshotKt.B();
    }

    @Override // androidx.compose.runtime.snapshots.b, androidx.compose.runtime.snapshots.j
    public j x(final Function1 function1) {
        return SnapshotKt.b0(new Function1<SnapshotIdSet, g>() { // from class: androidx.compose.runtime.snapshots.GlobalSnapshot$takeNestedSnapshot$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final g invoke(SnapshotIdSet snapshotIdSet) {
                int i11;
                synchronized (SnapshotKt.I()) {
                    i11 = SnapshotKt.f3926e;
                    SnapshotKt.f3926e = i11 + 1;
                }
                return new g(i11, snapshotIdSet, function1);
            }
        });
    }
}
