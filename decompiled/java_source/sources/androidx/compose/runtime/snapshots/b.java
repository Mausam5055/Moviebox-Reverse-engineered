package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.collection.w0;
import androidx.compose.runtime.o1;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.KotlinNothingValueException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public class b extends j {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final a f3962p = new a(null);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f3963q = 8;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int[] f3964r = new int[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Function1 f3965g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Function1 f3966h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f3967i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private MutableScatterSet f3968j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List f3969k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private SnapshotIdSet f3970l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int[] f3971m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f3972n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f3973o;

    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public b(int i11, SnapshotIdSet snapshotIdSet, Function1 function1, Function1 function2) {
        super(i11, snapshotIdSet, null);
        this.f3965g = function1;
        this.f3966h = function2;
        this.f3970l = SnapshotIdSet.f3916e.a();
        this.f3971m = f3964r;
        this.f3972n = 1;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0072 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x0074 A[LOOP:0: B:7:0x001c->B:24:0x0074, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:28:0x0077 A[EDGE_INSN: B:28:0x0077->B:25:0x0077 BREAK  A[LOOP:0: B:7:0x001c->B:24:0x0074], SYNTHETIC] */
    private final void A() {
        MutableScatterSet mutableScatterSetE = E();
        if (mutableScatterSetE != null) {
            R();
            P(null);
            int iF = f();
            Object[] objArr = mutableScatterSetE.f2247b;
            long[] jArr = mutableScatterSetE.f2246a;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i11 = 0;
                while (true) {
                    long j11 = jArr[i11];
                    if ((((~j11) << 7) & j11 & (-9187201950435737472L)) == -9187201950435737472L) {
                        if (i11 != length) {
                            break;
                            break;
                        }
                        i11++;
                    } else {
                        int i12 = 8 - ((~(i11 - length)) >>> 31);
                        for (int i13 = 0; i13 < i12; i13++) {
                            if ((255 & j11) < 128) {
                                for (e0 firstStateRecord = ((c0) objArr[(i11 << 3) + i13]).getFirstStateRecord(); firstStateRecord != null; firstStateRecord = firstStateRecord.e()) {
                                    if (firstStateRecord.f() == iF || CollectionsKt.b0(this.f3970l, Integer.valueOf(firstStateRecord.f()))) {
                                        firstStateRecord.h(0);
                                    }
                                }
                            }
                            j11 >>= 8;
                        }
                        if (i12 != 8) {
                            break;
                        } else if (i11 != length) {
                            break;
                        } else {
                            i11++;
                        }
                    }
                }
            }
        }
        b();
    }

    private final void N() {
        int length = this.f3971m.length;
        for (int i11 = 0; i11 < length; i11++) {
            SnapshotKt.Y(this.f3971m[i11]);
        }
    }

    private final void R() {
        if (this.f3973o) {
            o1.b("Unsupported operation on a snapshot that has been applied");
        }
    }

    private final void S() {
        if (!this.f3973o || ((j) this).f4009d >= 0) {
            return;
        }
        o1.b("Unsupported operation on a disposed or applied snapshot");
    }

    public final void B() {
        J(f());
        Unit unit = Unit.f67061a;
        if (D() || e()) {
            return;
        }
        int iF = f();
        synchronized (SnapshotKt.I()) {
            int i11 = SnapshotKt.f3926e;
            SnapshotKt.f3926e = i11 + 1;
            u(i11);
            SnapshotKt.f3925d = SnapshotKt.f3925d.p(f());
        }
        v(SnapshotKt.z(g(), iF + 1, f()));
    }

    public k C() throws Throwable {
        MutableScatterSet mutableScatterSetE;
        int i11;
        MutableScatterSet mutableScatterSetE2 = E();
        Map mapR = mutableScatterSetE2 != null ? SnapshotKt.R((b) SnapshotKt.f3931j.get(), this, SnapshotKt.f3925d.l(((GlobalSnapshot) SnapshotKt.f3931j.get()).f())) : null;
        List listL = CollectionsKt.l();
        synchronized (SnapshotKt.I()) {
            try {
                SnapshotKt.g0(this);
                if (mutableScatterSetE2 == null || mutableScatterSetE2.c() == 0) {
                    c();
                    GlobalSnapshot globalSnapshot = (GlobalSnapshot) SnapshotKt.f3931j.get();
                    SnapshotKt.a0(globalSnapshot, SnapshotKt.f3922a);
                    mutableScatterSetE = globalSnapshot.E();
                    if (mutableScatterSetE == null || !mutableScatterSetE.e()) {
                        mutableScatterSetE = null;
                    } else {
                        listL = SnapshotKt.f3929h;
                    }
                } else {
                    GlobalSnapshot globalSnapshot2 = (GlobalSnapshot) SnapshotKt.f3931j.get();
                    k kVarI = I(SnapshotKt.f3926e, mapR, SnapshotKt.f3925d.l(globalSnapshot2.f()));
                    if (!Intrinsics.c(kVarI, k.b.f4011a)) {
                        return kVarI;
                    }
                    c();
                    SnapshotKt.a0(globalSnapshot2, SnapshotKt.f3922a);
                    mutableScatterSetE = globalSnapshot2.E();
                    P(null);
                    globalSnapshot2.P(null);
                    listL = SnapshotKt.f3929h;
                }
                Unit unit = Unit.f67061a;
                this.f3973o = true;
                if (mutableScatterSetE != null) {
                    Set setA = androidx.compose.runtime.collection.d.a(mutableScatterSetE);
                    if (!setA.isEmpty()) {
                        int size = listL.size();
                        for (int i12 = 0; i12 < size; i12++) {
                            ((Function2) listL.get(i12)).invoke(setA, this);
                        }
                    }
                }
                if (mutableScatterSetE2 != null && mutableScatterSetE2.e()) {
                    Set setA2 = androidx.compose.runtime.collection.d.a(mutableScatterSetE2);
                    int size2 = listL.size();
                    for (int i13 = 0; i13 < size2; i13++) {
                        ((Function2) listL.get(i13)).invoke(setA2, this);
                    }
                }
                synchronized (SnapshotKt.I()) {
                    try {
                        r();
                        SnapshotKt.C();
                        if (mutableScatterSetE != null) {
                            try {
                                Object[] objArr = mutableScatterSetE.f2247b;
                                long[] jArr = mutableScatterSetE.f2246a;
                                int length = jArr.length - 2;
                                if (length >= 0) {
                                    int i14 = 0;
                                    while (true) {
                                        long j11 = jArr[i14];
                                        if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i15 = 8 - ((~(i14 - length)) >>> 31);
                                            for (int i16 = 0; i16 < i15; i16++) {
                                                if ((j11 & 255) < 128) {
                                                    SnapshotKt.U((c0) objArr[(i14 << 3) + i16]);
                                                }
                                                j11 >>= 8;
                                            }
                                            if (i15 != 8) {
                                                break;
                                            }
                                        }
                                        if (i14 == length) {
                                            break;
                                        }
                                        i14++;
                                    }
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                throw th;
                            }
                        }
                        if (mutableScatterSetE2 != null) {
                            Object[] objArr2 = mutableScatterSetE2.f2247b;
                            long[] jArr2 = mutableScatterSetE2.f2246a;
                            int length2 = jArr2.length - 2;
                            if (length2 >= 0) {
                                int i17 = 0;
                                while (true) {
                                    long j12 = jArr2[i17];
                                    if ((((~j12) << 7) & j12 & (-9187201950435737472L)) != -9187201950435737472L) {
                                        int i18 = 8 - ((~(i17 - length2)) >>> 31);
                                        for (int i19 = 0; i19 < i18; i19++) {
                                            if ((j12 & 255) < 128) {
                                                SnapshotKt.U((c0) objArr2[(i17 << 3) + i19]);
                                            }
                                            j12 >>= 8;
                                        }
                                        i11 = 1;
                                        if (i18 != 8) {
                                            break;
                                        }
                                    } else {
                                        i11 = 1;
                                    }
                                    if (i17 == length2) {
                                        break;
                                    }
                                    i17 += i11;
                                }
                            }
                        }
                        List list = this.f3969k;
                        if (list != null) {
                            int size3 = list.size();
                            for (int i20 = 0; i20 < size3; i20++) {
                                SnapshotKt.U((c0) list.get(i20));
                            }
                        }
                        this.f3969k = null;
                        Unit unit2 = Unit.f67061a;
                        return k.b.f4011a;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
    }

    public final boolean D() {
        return this.f3973o;
    }

    public MutableScatterSet E() {
        return this.f3968j;
    }

    public final SnapshotIdSet F() {
        return this.f3970l;
    }

    public final int[] G() {
        return this.f3971m;
    }

    @Override // androidx.compose.runtime.snapshots.j
    /* JADX INFO: renamed from: H */
    public Function1 h() {
        return this.f3965g;
    }

    public final k I(int i11, Map map, SnapshotIdSet snapshotIdSet) {
        MutableScatterSet mutableScatterSet;
        List listB0;
        SnapshotIdSet snapshotIdSet2;
        Object[] objArr;
        long[] jArr;
        int i12;
        SnapshotIdSet snapshotIdSet3;
        int i13;
        e0 e0VarW;
        e0 e0VarMergeRecords;
        SnapshotIdSet snapshotIdSetO = g().p(f()).o(this.f3970l);
        MutableScatterSet mutableScatterSetE = E();
        Intrinsics.e(mutableScatterSetE);
        Object[] objArr2 = mutableScatterSetE.f2247b;
        long[] jArr2 = mutableScatterSetE.f2246a;
        int length = jArr2.length - 2;
        ArrayList arrayList = null;
        if (length >= 0) {
            listB0 = null;
            int i14 = 0;
            while (true) {
                long j11 = jArr2[i14];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i15 = 8;
                    int i16 = 8 - ((~(i14 - length)) >>> 31);
                    int i17 = 0;
                    while (i17 < i16) {
                        if ((j11 & 255) < 128) {
                            c0 c0Var = (c0) objArr2[(i14 << 3) + i17];
                            e0 firstStateRecord = c0Var.getFirstStateRecord();
                            e0 e0VarW2 = SnapshotKt.W(firstStateRecord, i11, snapshotIdSet);
                            if (e0VarW2 == null || (e0VarW = SnapshotKt.W(firstStateRecord, f(), snapshotIdSetO)) == null) {
                                snapshotIdSet3 = snapshotIdSetO;
                            } else {
                                snapshotIdSet3 = snapshotIdSetO;
                                if (e0VarW.f() != 1 && !Intrinsics.c(e0VarW2, e0VarW)) {
                                    e0 e0VarW3 = SnapshotKt.W(firstStateRecord, f(), g());
                                    if (e0VarW3 == null) {
                                        SnapshotKt.V();
                                        throw new KotlinNothingValueException();
                                    }
                                    if (map == null || (e0VarMergeRecords = (e0) map.get(e0VarW2)) == null) {
                                        e0VarMergeRecords = c0Var.mergeRecords(e0VarW, e0VarW2, e0VarW3);
                                    }
                                    if (e0VarMergeRecords == null) {
                                        return new k.a(this);
                                    }
                                    if (!Intrinsics.c(e0VarMergeRecords, e0VarW3)) {
                                        if (Intrinsics.c(e0VarMergeRecords, e0VarW2)) {
                                            if (arrayList == null) {
                                                arrayList = new ArrayList();
                                            }
                                            arrayList.add(TuplesKt.a(c0Var, e0VarW2.d()));
                                            if (listB0 == null) {
                                                listB0 = new ArrayList();
                                            }
                                            listB0.add(c0Var);
                                        } else {
                                            if (arrayList == null) {
                                                arrayList = new ArrayList();
                                            }
                                            arrayList.add(!Intrinsics.c(e0VarMergeRecords, e0VarW) ? TuplesKt.a(c0Var, e0VarMergeRecords) : TuplesKt.a(c0Var, e0VarW.d()));
                                        }
                                    }
                                }
                            }
                            i13 = 8;
                        } else {
                            snapshotIdSet3 = snapshotIdSetO;
                            i13 = i15;
                        }
                        j11 >>= i13;
                        i17++;
                        i15 = i13;
                        objArr2 = objArr2;
                        jArr2 = jArr2;
                        mutableScatterSetE = mutableScatterSetE;
                        snapshotIdSetO = snapshotIdSet3;
                    }
                    snapshotIdSet2 = snapshotIdSetO;
                    mutableScatterSet = mutableScatterSetE;
                    objArr = objArr2;
                    jArr = jArr2;
                    i12 = 1;
                    if (i16 != i15) {
                        break;
                    }
                } else {
                    snapshotIdSet2 = snapshotIdSetO;
                    mutableScatterSet = mutableScatterSetE;
                    objArr = objArr2;
                    jArr = jArr2;
                    i12 = 1;
                }
                if (i14 == length) {
                    break;
                }
                i14 += i12;
                objArr2 = objArr;
                jArr2 = jArr;
                mutableScatterSetE = mutableScatterSet;
                snapshotIdSetO = snapshotIdSet2;
            }
        } else {
            mutableScatterSet = mutableScatterSetE;
            listB0 = null;
        }
        if (arrayList != null) {
            B();
            int size = arrayList.size();
            for (int i18 = 0; i18 < size; i18++) {
                Pair pair = (Pair) arrayList.get(i18);
                c0 c0Var2 = (c0) pair.component1();
                e0 e0Var = (e0) pair.component2();
                e0Var.h(f());
                synchronized (SnapshotKt.I()) {
                    e0Var.g(c0Var2.getFirstStateRecord());
                    c0Var2.prependStateRecord(e0Var);
                    Unit unit = Unit.f67061a;
                }
            }
        }
        if (listB0 != null) {
            int size2 = listB0.size();
            for (int i19 = 0; i19 < size2; i19++) {
                mutableScatterSet.x((c0) listB0.get(i19));
            }
            List list = this.f3969k;
            if (list != null) {
                listB0 = CollectionsKt.B0(list, listB0);
            }
            this.f3969k = listB0;
        }
        return k.b.f4011a;
    }

    public final void J(int i11) {
        synchronized (SnapshotKt.I()) {
            this.f3970l = this.f3970l.p(i11);
            Unit unit = Unit.f67061a;
        }
    }

    public final void K(SnapshotIdSet snapshotIdSet) {
        synchronized (SnapshotKt.I()) {
            this.f3970l = this.f3970l.o(snapshotIdSet);
            Unit unit = Unit.f67061a;
        }
    }

    public final void L(int i11) {
        if (i11 >= 0) {
            this.f3971m = ArraysKt.C(this.f3971m, i11);
        }
    }

    public final void M(int[] iArr) {
        if (iArr.length == 0) {
            return;
        }
        int[] iArr2 = this.f3971m;
        if (iArr2.length != 0) {
            iArr = ArraysKt.D(iArr2, iArr);
        }
        this.f3971m = iArr;
    }

    public final void O(boolean z10) {
        this.f3973o = z10;
    }

    public void P(MutableScatterSet mutableScatterSet) {
        this.f3968j = mutableScatterSet;
    }

    public b Q(Function1 function1, Function1 function2) {
        c cVar;
        z();
        S();
        J(f());
        synchronized (SnapshotKt.I()) {
            int i11 = SnapshotKt.f3926e;
            SnapshotKt.f3926e = i11 + 1;
            SnapshotKt.f3925d = SnapshotKt.f3925d.p(i11);
            SnapshotIdSet snapshotIdSetG = g();
            v(snapshotIdSetG.p(i11));
            cVar = new c(i11, SnapshotKt.z(snapshotIdSetG, f() + 1, i11), SnapshotKt.L(function1, h(), false, 4, null), SnapshotKt.M(function2, k()), this);
        }
        if (!D() && !e()) {
            int iF = f();
            synchronized (SnapshotKt.I()) {
                int i12 = SnapshotKt.f3926e;
                SnapshotKt.f3926e = i12 + 1;
                u(i12);
                SnapshotKt.f3925d = SnapshotKt.f3925d.p(f());
                Unit unit = Unit.f67061a;
            }
            v(SnapshotKt.z(g(), iF + 1, f()));
        }
        return cVar;
    }

    @Override // androidx.compose.runtime.snapshots.j
    public void c() {
        SnapshotKt.f3925d = SnapshotKt.f3925d.l(f()).j(this.f3970l);
    }

    @Override // androidx.compose.runtime.snapshots.j
    public void d() {
        if (e()) {
            return;
        }
        super.d();
        n(this);
    }

    @Override // androidx.compose.runtime.snapshots.j
    public boolean i() {
        return false;
    }

    @Override // androidx.compose.runtime.snapshots.j
    public int j() {
        return this.f3967i;
    }

    @Override // androidx.compose.runtime.snapshots.j
    public Function1 k() {
        return this.f3966h;
    }

    @Override // androidx.compose.runtime.snapshots.j
    public void m(j jVar) {
        this.f3972n++;
    }

    @Override // androidx.compose.runtime.snapshots.j
    public void n(j jVar) {
        if (!(this.f3972n > 0)) {
            o1.a("no pending nested snapshots");
        }
        int i11 = this.f3972n - 1;
        this.f3972n = i11;
        if (i11 != 0 || this.f3973o) {
            return;
        }
        A();
    }

    @Override // androidx.compose.runtime.snapshots.j
    public void o() {
        if (this.f3973o || e()) {
            return;
        }
        B();
    }

    @Override // androidx.compose.runtime.snapshots.j
    public void p(c0 c0Var) {
        MutableScatterSet mutableScatterSetE = E();
        if (mutableScatterSetE == null) {
            mutableScatterSetE = w0.a();
            P(mutableScatterSetE);
        }
        mutableScatterSetE.h(c0Var);
    }

    @Override // androidx.compose.runtime.snapshots.j
    public void r() {
        N();
        super.r();
    }

    @Override // androidx.compose.runtime.snapshots.j
    public void w(int i11) {
        this.f3967i = i11;
    }

    @Override // androidx.compose.runtime.snapshots.j
    public j x(Function1 function1) {
        d dVar;
        z();
        S();
        int iF = f();
        J(f());
        synchronized (SnapshotKt.I()) {
            int i11 = SnapshotKt.f3926e;
            SnapshotKt.f3926e = i11 + 1;
            SnapshotKt.f3925d = SnapshotKt.f3925d.p(i11);
            dVar = new d(i11, SnapshotKt.z(g(), iF + 1, i11), SnapshotKt.L(function1, h(), false, 4, null), this);
        }
        if (!D() && !e()) {
            int iF2 = f();
            synchronized (SnapshotKt.I()) {
                int i12 = SnapshotKt.f3926e;
                SnapshotKt.f3926e = i12 + 1;
                u(i12);
                SnapshotKt.f3925d = SnapshotKt.f3925d.p(f());
                Unit unit = Unit.f67061a;
            }
            v(SnapshotKt.z(g(), iF2 + 1, f()));
        }
        return dVar;
    }
}
