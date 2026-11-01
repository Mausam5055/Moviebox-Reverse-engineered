package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.SnapshotKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class DerivedSnapshotState extends androidx.compose.runtime.snapshots.d0 implements z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function0 f3602a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final q2 f3603b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f3604c = new a();

    public static final class a extends androidx.compose.runtime.snapshots.e0 implements z.a {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final C0039a f3605h = new C0039a(null);

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final int f3606i = 8;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final Object f3607j = new Object();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f3608c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f3609d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private androidx.collection.p0 f3610e = androidx.collection.q0.a();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Object f3611f = f3607j;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f3612g;

        /* JADX INFO: renamed from: androidx.compose.runtime.DerivedSnapshotState$a$a, reason: collision with other inner class name */
        public static final class C0039a {
            private C0039a() {
            }

            public /* synthetic */ C0039a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Object a() {
                return a.f3607j;
            }
        }

        @Override // androidx.compose.runtime.z.a
        public Object a() {
            return this.f3611f;
        }

        @Override // androidx.compose.runtime.z.a
        public androidx.collection.p0 b() {
            return this.f3610e;
        }

        @Override // androidx.compose.runtime.snapshots.e0
        public void c(androidx.compose.runtime.snapshots.e0 e0Var) {
            Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.DerivedSnapshotState.ResultRecord<T of androidx.compose.runtime.DerivedSnapshotState.ResultRecord>");
            a aVar = (a) e0Var;
            m(aVar.b());
            this.f3611f = aVar.f3611f;
            this.f3612g = aVar.f3612g;
        }

        @Override // androidx.compose.runtime.snapshots.e0
        public androidx.compose.runtime.snapshots.e0 d() {
            return new a();
        }

        public final Object j() {
            return this.f3611f;
        }

        public final boolean k(z zVar, androidx.compose.runtime.snapshots.j jVar) {
            boolean z10;
            boolean z11;
            synchronized (SnapshotKt.I()) {
                z10 = true;
                z11 = (this.f3608c == jVar.f() && this.f3609d == jVar.j()) ? false : true;
            }
            if (this.f3611f == f3607j || (z11 && this.f3612g != l(zVar, jVar))) {
                z10 = false;
            }
            if (z10 && z11) {
                synchronized (SnapshotKt.I()) {
                    this.f3608c = jVar.f();
                    this.f3609d = jVar.j();
                    Unit unit = Unit.f67061a;
                }
            }
            return z10;
        }

        /* JADX WARN: Code duplicated, block: B:40:0x00a4 A[Catch: all -> 0x007c, LOOP:1: B:16:0x003c->B:40:0x00a4, LOOP_END, TryCatch #1 {all -> 0x007c, blocks: (B:13:0x002f, B:16:0x003c, B:18:0x004c, B:20:0x0058, B:22:0x0062, B:34:0x0098, B:25:0x0071, B:27:0x0075, B:31:0x0086, B:30:0x007e, B:42:0x00a8, B:40:0x00a4), top: B:64:0x002f }] */
        /* JADX WARN: Code duplicated, block: B:68:0x00a0 A[EDGE_INSN: B:68:0x00a0->B:38:0x00a0 BREAK  A[LOOP:1: B:16:0x003c->B:40:0x00a4], SYNTHETIC] */
        public final int l(z zVar, androidx.compose.runtime.snapshots.j jVar) {
            androidx.collection.p0 p0VarB;
            int i11;
            int i12;
            synchronized (SnapshotKt.I()) {
                p0VarB = b();
            }
            char c11 = 7;
            if (!p0VarB.g()) {
                return 7;
            }
            androidx.compose.runtime.collection.b bVarA = r2.a();
            int iN = bVarA.n();
            if (iN > 0) {
                Object[] objArrM = bVarA.m();
                int i13 = 0;
                do {
                    ((a0) objArrM[i13]).b(zVar);
                    i13++;
                } while (i13 < iN);
            }
            try {
                Object[] objArr = p0VarB.f2315b;
                int[] iArr = p0VarB.f2316c;
                long[] jArr = p0VarB.f2314a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int iC = 7;
                    int i14 = 0;
                    while (true) {
                        long j11 = jArr[i14];
                        if ((((~j11) << c11) & j11 & (-9187201950435737472L)) == -9187201950435737472L) {
                            if (i14 != length) {
                                break;
                                break;
                            }
                            i14++;
                            c11 = 7;
                        } else {
                            int i15 = 8;
                            int i16 = 8 - ((~(i14 - length)) >>> 31);
                            int i17 = 0;
                            while (i17 < i16) {
                                if ((j11 & 255) < 128) {
                                    int i18 = (i14 << 3) + i17;
                                    androidx.compose.runtime.snapshots.c0 c0Var = (androidx.compose.runtime.snapshots.c0) objArr[i18];
                                    if (iArr[i18] == 1) {
                                        androidx.compose.runtime.snapshots.e0 e0VarC = c0Var instanceof DerivedSnapshotState ? ((DerivedSnapshotState) c0Var).c(jVar) : SnapshotKt.G(c0Var.getFirstStateRecord(), jVar);
                                        iC = (((iC * 31) + b.c(e0VarC)) * 31) + e0VarC.f();
                                    }
                                    i12 = 8;
                                } else {
                                    i12 = i15;
                                }
                                j11 >>= i12;
                                i17++;
                                i15 = i12;
                            }
                            if (i16 != i15) {
                                break;
                            }
                            if (i14 != length) {
                                break;
                            }
                            i14++;
                            c11 = 7;
                        }
                    }
                    i11 = iC;
                } else {
                    i11 = 7;
                }
                Unit unit = Unit.f67061a;
                int iN2 = bVarA.n();
                if (iN2 <= 0) {
                    return i11;
                }
                Object[] objArrM2 = bVarA.m();
                int i19 = 0;
                do {
                    ((a0) objArrM2[i19]).a(zVar);
                    i19++;
                } while (i19 < iN2);
                return i11;
            } catch (Throwable th2) {
                int iN3 = bVarA.n();
                if (iN3 > 0) {
                    Object[] objArrM3 = bVarA.m();
                    int i20 = 0;
                    do {
                        ((a0) objArrM3[i20]).a(zVar);
                        i20++;
                    } while (i20 < iN3);
                }
                throw th2;
            }
        }

        public void m(androidx.collection.p0 p0Var) {
            this.f3610e = p0Var;
        }

        public final void n(Object obj) {
            this.f3611f = obj;
        }

        public final void o(int i11) {
            this.f3612g = i11;
        }

        public final void p(int i11) {
            this.f3608c = i11;
        }

        public final void q(int i11) {
            this.f3609d = i11;
        }
    }

    public DerivedSnapshotState(Function0 function0, q2 q2Var) {
        this.f3602a = function0;
        this.f3603b = q2Var;
    }

    private final a d(a aVar, androidx.compose.runtime.snapshots.j jVar, boolean z10, Function0 function0) {
        androidx.compose.runtime.snapshots.j.a aVar2;
        q2 policy;
        int i11;
        int i12;
        a aVar3 = aVar;
        int i13 = 1;
        if (!aVar3.k(this, jVar)) {
            int i14 = 0;
            final androidx.collection.k0 k0Var = new androidx.collection.k0(0, 1, null);
            final androidx.compose.runtime.internal.c cVar = (androidx.compose.runtime.internal.c) s2.f3884a.a();
            if (cVar == null) {
                cVar = new androidx.compose.runtime.internal.c(0);
                s2.f3884a.b(cVar);
            }
            final int iA = cVar.a();
            androidx.compose.runtime.collection.b bVarA = r2.a();
            int iN = bVarA.n();
            if (iN > 0) {
                Object[] objArrM = bVarA.m();
                int i15 = 0;
                while (true) {
                    ((a0) objArrM[i15]).b(this);
                    int i16 = i15 + 1;
                    if (i16 >= iN) {
                        break;
                    }
                    i15 = i16;
                }
            }
            try {
                cVar.b(iA + 1);
                Object objH = androidx.compose.runtime.snapshots.j.f4004e.h(new Function1<Object, Unit>() { // from class: androidx.compose.runtime.DerivedSnapshotState$currentRecord$result$1$1$result$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                        m83invoke(obj);
                        return Unit.f67061a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                    public final void m83invoke(Object obj) {
                        if (obj == this.this$0) {
                            throw new IllegalStateException("A derived state calculation cannot read itself");
                        }
                        if (obj instanceof androidx.compose.runtime.snapshots.c0) {
                            int iA2 = cVar.a();
                            androidx.collection.k0 k0Var2 = k0Var;
                            k0Var2.r(obj, Math.min(iA2 - iA, k0Var2.d(obj, Integer.MAX_VALUE)));
                        }
                    }
                }, null, function0);
                cVar.b(iA);
                int iN2 = bVarA.n();
                if (iN2 > 0) {
                    Object[] objArrM2 = bVarA.m();
                    do {
                        ((a0) objArrM2[i14]).a(this);
                        i14++;
                    } while (i14 < iN2);
                }
                synchronized (SnapshotKt.I()) {
                    try {
                        aVar2 = androidx.compose.runtime.snapshots.j.f4004e;
                        androidx.compose.runtime.snapshots.j jVarC = aVar2.c();
                        if (aVar.j() == a.f3605h.a() || (policy = getPolicy()) == null || !policy.b(objH, aVar.j())) {
                            aVar3 = (a) SnapshotKt.O(this.f3604c, this, jVarC);
                            aVar3.m(k0Var);
                            aVar3.o(aVar3.l(this, jVarC));
                            aVar3.n(objH);
                        } else {
                            aVar3.m(k0Var);
                            aVar3.o(aVar3.l(this, jVarC));
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                androidx.compose.runtime.internal.c cVar2 = (androidx.compose.runtime.internal.c) s2.f3884a.a();
                if (cVar2 != null && cVar2.a() == 0) {
                    aVar2.g();
                    synchronized (SnapshotKt.I()) {
                        androidx.compose.runtime.snapshots.j jVarC2 = aVar2.c();
                        aVar3.p(jVarC2.f());
                        aVar3.q(jVarC2.j());
                        Unit unit = Unit.f67061a;
                    }
                }
                return aVar3;
            } catch (Throwable th3) {
                int iN3 = bVarA.n();
                if (iN3 > 0) {
                    Object[] objArrM3 = bVarA.m();
                    do {
                        ((a0) objArrM3[i14]).a(this);
                        i14++;
                    } while (i14 < iN3);
                }
                throw th3;
            }
        }
        if (z10) {
            androidx.compose.runtime.collection.b bVarA2 = r2.a();
            int iN4 = bVarA2.n();
            if (iN4 > 0) {
                Object[] objArrM4 = bVarA2.m();
                int i17 = 0;
                do {
                    ((a0) objArrM4[i17]).b(this);
                    i17++;
                } while (i17 < iN4);
            }
            try {
                androidx.collection.p0 p0VarB = aVar.b();
                androidx.compose.runtime.internal.c cVar3 = (androidx.compose.runtime.internal.c) s2.f3884a.a();
                if (cVar3 == null) {
                    cVar3 = new androidx.compose.runtime.internal.c(0);
                    s2.f3884a.b(cVar3);
                }
                int iA2 = cVar3.a();
                Object[] objArr = p0VarB.f2315b;
                int[] iArr = p0VarB.f2316c;
                long[] jArr = p0VarB.f2314a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i18 = 0;
                    while (true) {
                        long j11 = jArr[i18];
                        long[] jArr2 = jArr;
                        if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i19 = 8;
                            int i20 = 8 - ((~(i18 - length)) >>> 31);
                            int i21 = 0;
                            while (i21 < i20) {
                                if ((j11 & 255) < 128) {
                                    int i22 = (i18 << 3) + i21;
                                    androidx.compose.runtime.snapshots.c0 c0Var = (androidx.compose.runtime.snapshots.c0) objArr[i22];
                                    cVar3.b(iA2 + iArr[i22]);
                                    Function1 function1H = jVar.h();
                                    if (function1H != null) {
                                        function1H.invoke(c0Var);
                                    }
                                    i12 = 8;
                                } else {
                                    i12 = i19;
                                }
                                j11 >>= i12;
                                i21++;
                                i19 = i12;
                                i13 = 1;
                            }
                            int i23 = i19;
                            i11 = i13;
                            if (i20 != i23) {
                                break;
                            }
                        } else {
                            i11 = i13;
                        }
                        if (i18 == length) {
                            break;
                        }
                        i18 += i11;
                        i13 = i11;
                        jArr = jArr2;
                    }
                }
                cVar3.b(iA2);
                Unit unit2 = Unit.f67061a;
                int iN5 = bVarA2.n();
                if (iN5 > 0) {
                    Object[] objArrM5 = bVarA2.m();
                    int i24 = 0;
                    do {
                        ((a0) objArrM5[i24]).a(this);
                        i24++;
                    } while (i24 < iN5);
                }
            } catch (Throwable th4) {
                int iN6 = bVarA2.n();
                if (iN6 > 0) {
                    Object[] objArrM6 = bVarA2.m();
                    int i25 = 0;
                    do {
                        ((a0) objArrM6[i25]).a(this);
                        i25++;
                    } while (i25 < iN6);
                }
                throw th4;
            }
        }
        return aVar3;
    }

    private final String e() {
        a aVar = (a) SnapshotKt.F(this.f3604c);
        return aVar.k(this, androidx.compose.runtime.snapshots.j.f4004e.c()) ? String.valueOf(aVar.j()) : "<Not calculated>";
    }

    @Override // androidx.compose.runtime.z
    public z.a b() {
        androidx.compose.runtime.snapshots.j jVarC = androidx.compose.runtime.snapshots.j.f4004e.c();
        return d((a) SnapshotKt.G(this.f3604c, jVarC), jVarC, false, this.f3602a);
    }

    public final androidx.compose.runtime.snapshots.e0 c(androidx.compose.runtime.snapshots.j jVar) {
        return d((a) SnapshotKt.G(this.f3604c, jVar), jVar, false, this.f3602a);
    }

    @Override // androidx.compose.runtime.snapshots.c0
    public androidx.compose.runtime.snapshots.e0 getFirstStateRecord() {
        return this.f3604c;
    }

    @Override // androidx.compose.runtime.z
    public q2 getPolicy() {
        return this.f3603b;
    }

    @Override // androidx.compose.runtime.a3
    public Object getValue() {
        androidx.compose.runtime.snapshots.j.a aVar = androidx.compose.runtime.snapshots.j.f4004e;
        Function1 function1H = aVar.c().h();
        if (function1H != null) {
            function1H.invoke(this);
        }
        androidx.compose.runtime.snapshots.j jVarC = aVar.c();
        return d((a) SnapshotKt.G(this.f3604c, jVarC), jVarC, true, this.f3602a).j();
    }

    @Override // androidx.compose.runtime.snapshots.c0
    public void prependStateRecord(androidx.compose.runtime.snapshots.e0 e0Var) {
        Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.DerivedSnapshotState.ResultRecord<T of androidx.compose.runtime.DerivedSnapshotState>");
        this.f3604c = (a) e0Var;
    }

    public String toString() {
        return "DerivedState(value=" + e() + ")@" + hashCode();
    }
}
