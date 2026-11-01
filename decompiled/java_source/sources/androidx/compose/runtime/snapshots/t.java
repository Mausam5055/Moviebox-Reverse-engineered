package androidx.compose.runtime.snapshots;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableMap;

/* JADX INFO: loaded from: classes.dex */
public final class t implements c0, Map, KMutableMap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e0 f4019a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set f4020b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set f4021c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Collection f4022d;

    public static final class a extends e0 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private t.g f4023c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f4024d;

        public a(t.g gVar) {
            this.f4023c = gVar;
        }

        @Override // androidx.compose.runtime.snapshots.e0
        public void c(e0 e0Var) {
            Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord, V of androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord>");
            a aVar = (a) e0Var;
            synchronized (u.f4025a) {
                this.f4023c = aVar.f4023c;
                this.f4024d = aVar.f4024d;
                Unit unit = Unit.f67061a;
            }
        }

        @Override // androidx.compose.runtime.snapshots.e0
        public e0 d() {
            return new a(this.f4023c);
        }

        public final t.g i() {
            return this.f4023c;
        }

        public final int j() {
            return this.f4024d;
        }

        public final void k(t.g gVar) {
            this.f4023c = gVar;
        }

        public final void l(int i11) {
            this.f4024d = i11;
        }
    }

    public t() {
        t.g gVarA = t.a.a();
        a aVar = new a(gVarA);
        if (j.f4004e.e()) {
            a aVar2 = new a(gVarA);
            aVar2.h(1);
            aVar.g(aVar2);
        }
        this.f4019a = aVar;
        this.f4020b = new n(this);
        this.f4021c = new o(this);
        this.f4022d = new q(this);
    }

    public Set a() {
        return this.f4020b;
    }

    public Set c() {
        return this.f4021c;
    }

    @Override // java.util.Map
    public void clear() {
        j jVarC;
        e0 firstStateRecord = getFirstStateRecord();
        Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
        a aVar = (a) SnapshotKt.F((a) firstStateRecord);
        aVar.i();
        t.g gVarA = t.a.a();
        if (gVarA != aVar.i()) {
            e0 firstStateRecord2 = getFirstStateRecord();
            Intrinsics.f(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
            a aVar2 = (a) firstStateRecord2;
            SnapshotKt.J();
            synchronized (SnapshotKt.I()) {
                jVarC = j.f4004e.c();
                a aVar3 = (a) SnapshotKt.h0(aVar2, this, jVarC);
                synchronized (u.f4025a) {
                    aVar3.k(gVarA);
                    aVar3.l(aVar3.j() + 1);
                }
            }
            SnapshotKt.Q(jVarC, this);
        }
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return f().i().containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return f().i().containsValue(obj);
    }

    public final int e() {
        return f().j();
    }

    @Override // java.util.Map
    public final /* bridge */ Set entrySet() {
        return a();
    }

    public final a f() {
        e0 firstStateRecord = getFirstStateRecord();
        Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
        return (a) SnapshotKt.X((a) firstStateRecord, this);
    }

    @Override // java.util.Map
    public Object get(Object obj) {
        return f().i().get(obj);
    }

    @Override // androidx.compose.runtime.snapshots.c0
    public e0 getFirstStateRecord() {
        return this.f4019a;
    }

    public int h() {
        return f().i().size();
    }

    public Collection i() {
        return this.f4022d;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return f().i().isEmpty();
    }

    public final boolean j(Object obj) {
        Object next;
        Iterator it = entrySet().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((Map.Entry) next).getValue(), obj));
        Map.Entry entry = (Map.Entry) next;
        if (entry == null) {
            return false;
        }
        remove(entry.getKey());
        return true;
    }

    @Override // java.util.Map
    public final /* bridge */ Set keySet() {
        return c();
    }

    public final Map l() {
        return f().i();
    }

    @Override // androidx.compose.runtime.snapshots.c0
    public /* synthetic */ e0 mergeRecords(e0 e0Var, e0 e0Var2, e0 e0Var3) {
        return b0.a(this, e0Var, e0Var2, e0Var3);
    }

    @Override // androidx.compose.runtime.snapshots.c0
    public void prependStateRecord(e0 e0Var) {
        Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
        this.f4019a = (a) e0Var;
    }

    @Override // java.util.Map
    public Object put(Object obj, Object obj2) {
        t.g gVarI;
        int iJ;
        Object objPut;
        j jVarC;
        boolean z10;
        do {
            synchronized (u.f4025a) {
                e0 firstStateRecord = getFirstStateRecord();
                Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
                a aVar = (a) SnapshotKt.F((a) firstStateRecord);
                gVarI = aVar.i();
                iJ = aVar.j();
                Unit unit = Unit.f67061a;
            }
            Intrinsics.e(gVarI);
            t.g.a aVarBuilder = gVarI.builder();
            objPut = aVarBuilder.put(obj, obj2);
            t.g gVarBuild = aVarBuilder.build();
            if (Intrinsics.c(gVarBuild, gVarI)) {
                break;
            }
            e0 firstStateRecord2 = getFirstStateRecord();
            Intrinsics.f(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
            a aVar2 = (a) firstStateRecord2;
            SnapshotKt.J();
            synchronized (SnapshotKt.I()) {
                jVarC = j.f4004e.c();
                a aVar3 = (a) SnapshotKt.h0(aVar2, this, jVarC);
                synchronized (u.f4025a) {
                    if (aVar3.j() == iJ) {
                        aVar3.k(gVarBuild);
                        z10 = true;
                        aVar3.l(aVar3.j() + 1);
                    } else {
                        z10 = false;
                    }
                }
            }
            SnapshotKt.Q(jVarC, this);
        } while (!z10);
        return objPut;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0077 */
    @Override // java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void putAll(Map map) {
        t.g gVarI;
        int iJ;
        j jVarC;
        boolean z10;
        do {
            synchronized (u.f4025a) {
                e0 firstStateRecord = getFirstStateRecord();
                Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
                a aVar = (a) SnapshotKt.F((a) firstStateRecord);
                gVarI = aVar.i();
                iJ = aVar.j();
                Unit unit = Unit.f67061a;
            }
            Intrinsics.e(gVarI);
            t.g.a aVarBuilder = gVarI.builder();
            aVarBuilder.putAll(map);
            t.g gVarBuild = aVarBuilder.build();
            if (Intrinsics.c(gVarBuild, gVarI)) {
                return;
            }
            e0 firstStateRecord2 = getFirstStateRecord();
            Intrinsics.f(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
            a aVar2 = (a) firstStateRecord2;
            SnapshotKt.J();
            synchronized (SnapshotKt.I()) {
                jVarC = j.f4004e.c();
                a aVar3 = (a) SnapshotKt.h0(aVar2, this, jVarC);
                synchronized (u.f4025a) {
                    try {
                        if (aVar3.j() == iJ) {
                            aVar3.k(gVarBuild);
                            z10 = true;
                            aVar3.l(aVar3.j() + 1);
                        } else {
                            z10 = false;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            SnapshotKt.Q(jVarC, this);
        } while (!z10);
    }

    @Override // java.util.Map
    public Object remove(Object obj) {
        t.g gVarI;
        int iJ;
        Object objRemove;
        j jVarC;
        boolean z10;
        do {
            synchronized (u.f4025a) {
                e0 firstStateRecord = getFirstStateRecord();
                Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
                a aVar = (a) SnapshotKt.F((a) firstStateRecord);
                gVarI = aVar.i();
                iJ = aVar.j();
                Unit unit = Unit.f67061a;
            }
            Intrinsics.e(gVarI);
            t.g.a aVarBuilder = gVarI.builder();
            objRemove = aVarBuilder.remove(obj);
            t.g gVarBuild = aVarBuilder.build();
            if (Intrinsics.c(gVarBuild, gVarI)) {
                break;
            }
            e0 firstStateRecord2 = getFirstStateRecord();
            Intrinsics.f(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
            a aVar2 = (a) firstStateRecord2;
            SnapshotKt.J();
            synchronized (SnapshotKt.I()) {
                jVarC = j.f4004e.c();
                a aVar3 = (a) SnapshotKt.h0(aVar2, this, jVarC);
                synchronized (u.f4025a) {
                    if (aVar3.j() == iJ) {
                        aVar3.k(gVarBuild);
                        z10 = true;
                        aVar3.l(aVar3.j() + 1);
                    } else {
                        z10 = false;
                    }
                }
            }
            SnapshotKt.Q(jVarC, this);
        } while (!z10);
        return objRemove;
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return h();
    }

    public String toString() {
        e0 firstStateRecord = getFirstStateRecord();
        Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
        return "SnapshotStateMap(value=" + ((a) SnapshotKt.F((a) firstStateRecord)).i() + ")@" + hashCode();
    }

    @Override // java.util.Map
    public final /* bridge */ Collection values() {
        return i();
    }
}
