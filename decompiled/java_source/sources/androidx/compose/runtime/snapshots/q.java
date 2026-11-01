package androidx.compose.runtime.snapshots;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class q extends p {
    public q(t tVar) {
        super(tVar);
    }

    @Override // java.util.Set, java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        return ((Boolean) e(obj)).booleanValue();
    }

    @Override // java.util.Set, java.util.Collection
    public /* bridge */ /* synthetic */ boolean addAll(Collection collection) {
        return ((Boolean) f(collection)).booleanValue();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object obj) {
        return a().containsValue(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(Collection collection) {
        Collection collection2 = collection;
        if ((collection2 instanceof Collection) && collection2.isEmpty()) {
            return true;
        }
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            if (!a().containsValue(it.next())) {
                return false;
            }
        }
        return true;
    }

    public Void e(Object obj) {
        u.b();
        throw new KotlinNothingValueException();
    }

    public Void f(Collection collection) {
        u.b();
        throw new KotlinNothingValueException();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public a0 iterator() {
        return new a0(a(), ((t.e) a().f().i().entrySet()).iterator());
    }

    @Override // java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        return a().j(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(Collection collection) {
        t.g gVarI;
        int iJ;
        boolean z10;
        j jVarC;
        Set setW0 = CollectionsKt.W0(collection);
        t tVarA = a();
        boolean z11 = false;
        do {
            synchronized (u.f4025a) {
                e0 firstStateRecord = tVarA.getFirstStateRecord();
                Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
                t.a aVar = (t.a) SnapshotKt.F((t.a) firstStateRecord);
                gVarI = aVar.i();
                iJ = aVar.j();
                Unit unit = Unit.f67061a;
            }
            Intrinsics.e(gVarI);
            t.g.a aVarBuilder = gVarI.builder();
            Iterator it = tVarA.entrySet().iterator();
            while (true) {
                z10 = true;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                if (setW0.contains(entry.getValue())) {
                    aVarBuilder.remove(entry.getKey());
                    z11 = true;
                }
            }
            Unit unit2 = Unit.f67061a;
            t.g gVarBuild = aVarBuilder.build();
            if (Intrinsics.c(gVarBuild, gVarI)) {
                break;
            }
            e0 firstStateRecord2 = tVarA.getFirstStateRecord();
            Intrinsics.f(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
            t.a aVar2 = (t.a) firstStateRecord2;
            SnapshotKt.J();
            synchronized (SnapshotKt.I()) {
                jVarC = j.f4004e.c();
                t.a aVar3 = (t.a) SnapshotKt.h0(aVar2, tVarA, jVarC);
                synchronized (u.f4025a) {
                    if (aVar3.j() == iJ) {
                        aVar3.k(gVarBuild);
                        aVar3.l(aVar3.j() + 1);
                    } else {
                        z10 = false;
                    }
                }
            }
            SnapshotKt.Q(jVarC, tVarA);
        } while (!z10);
        return z11;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(Collection collection) {
        t.g gVarI;
        int iJ;
        boolean z10;
        j jVarC;
        Set setW0 = CollectionsKt.W0(collection);
        t tVarA = a();
        boolean z11 = false;
        do {
            synchronized (u.f4025a) {
                e0 firstStateRecord = tVarA.getFirstStateRecord();
                Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
                t.a aVar = (t.a) SnapshotKt.F((t.a) firstStateRecord);
                gVarI = aVar.i();
                iJ = aVar.j();
                Unit unit = Unit.f67061a;
            }
            Intrinsics.e(gVarI);
            t.g.a aVarBuilder = gVarI.builder();
            Iterator it = tVarA.entrySet().iterator();
            while (true) {
                z10 = true;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                if (!setW0.contains(entry.getValue())) {
                    aVarBuilder.remove(entry.getKey());
                    z11 = true;
                }
            }
            Unit unit2 = Unit.f67061a;
            t.g gVarBuild = aVarBuilder.build();
            if (Intrinsics.c(gVarBuild, gVarI)) {
                break;
            }
            e0 firstStateRecord2 = tVarA.getFirstStateRecord();
            Intrinsics.f(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
            t.a aVar2 = (t.a) firstStateRecord2;
            SnapshotKt.J();
            synchronized (SnapshotKt.I()) {
                jVarC = j.f4004e.c();
                t.a aVar3 = (t.a) SnapshotKt.h0(aVar2, tVarA, jVarC);
                synchronized (u.f4025a) {
                    if (aVar3.j() == iJ) {
                        aVar3.k(gVarBuild);
                        aVar3.l(aVar3.j() + 1);
                    } else {
                        z10 = false;
                    }
                }
            }
            SnapshotKt.Q(jVarC, tVarA);
        } while (!z10);
        return z11;
    }
}
