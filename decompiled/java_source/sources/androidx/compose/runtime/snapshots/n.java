package androidx.compose.runtime.snapshots;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.KotlinNothingValueException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
final class n extends p {
    public n(t tVar) {
        super(tVar);
    }

    @Override // java.util.Set, java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        return ((Boolean) e((Map.Entry) obj)).booleanValue();
    }

    @Override // java.util.Set, java.util.Collection
    public /* bridge */ /* synthetic */ boolean addAll(Collection collection) {
        return ((Boolean) f(collection)).booleanValue();
    }

    @Override // java.util.Set, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (TypeIntrinsics.m(obj)) {
            return h((Map.Entry) obj);
        }
        return false;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(Collection collection) {
        Collection collection2 = collection;
        if ((collection2 instanceof Collection) && collection2.isEmpty()) {
            return true;
        }
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            if (!contains((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public Void e(Map.Entry entry) {
        u.b();
        throw new KotlinNothingValueException();
    }

    public Void f(Collection collection) {
        u.b();
        throw new KotlinNothingValueException();
    }

    public boolean h(Map.Entry entry) {
        return Intrinsics.c(a().get(entry.getKey()), entry.getValue());
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return new x(a(), ((t.e) a().f().i().entrySet()).iterator());
    }

    public boolean j(Map.Entry entry) {
        return a().remove(entry.getKey()) != null;
    }

    @Override // java.util.Set, java.util.Collection
    public final /* bridge */ boolean remove(Object obj) {
        if (TypeIntrinsics.m(obj)) {
            return j((Map.Entry) obj);
        }
        return false;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(Collection collection) {
        Iterator it = collection.iterator();
        while (true) {
            boolean z10 = false;
            while (it.hasNext()) {
                if (a().remove(((Map.Entry) it.next()).getKey()) != null || z10) {
                    z10 = true;
                }
            }
            return z10;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(Collection collection) {
        t.g gVarI;
        int iJ;
        boolean z10;
        j jVarC;
        Collection<Map.Entry> collection2 = collection;
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.f(MapsKt.e(CollectionsKt.v(collection2, 10)), 16));
        for (Map.Entry entry : collection2) {
            Pair pairA = TuplesKt.a(entry.getKey(), entry.getValue());
            linkedHashMap.put(pairA.getFirst(), pairA.getSecond());
        }
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
                Map.Entry entry2 = (Map.Entry) it.next();
                if (!linkedHashMap.containsKey(entry2.getKey()) || !Intrinsics.c(linkedHashMap.get(entry2.getKey()), entry2.getValue())) {
                    aVarBuilder.remove(entry2.getKey());
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
