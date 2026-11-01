package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.collection.k0;
import androidx.collection.n0;
import androidx.collection.p0;
import androidx.compose.animation.core.j0;
import androidx.compose.runtime.o1;
import androidx.compose.runtime.r2;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class SnapshotStateObserver {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f3938k = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function1 f3939a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3941c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private e f3945g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f3946h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private a f3947i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicReference f3940b = new AtomicReference(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function2 f3942d = new Function2<Set<? extends Object>, j, Unit>() { // from class: androidx.compose.runtime.snapshots.SnapshotStateObserver$applyObserver$1
        {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Set<? extends Object>) obj, (j) obj2);
            return Unit.f67061a;
        }

        public final void invoke(Set<? extends Object> set, j jVar) {
            this.this$0.i(set);
            if (this.this$0.m()) {
                this.this$0.r();
            }
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function1 f3943e = new Function1<Object, Unit>() { // from class: androidx.compose.runtime.snapshots.SnapshotStateObserver$readObserver$1
        {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            m98invoke(obj);
            return Unit.f67061a;
        }

        /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
        public final void m98invoke(Object obj) {
            if (this.this$0.f3946h) {
                return;
            }
            androidx.compose.runtime.collection.b bVar = this.this$0.f3944f;
            SnapshotStateObserver snapshotStateObserver = this.this$0;
            synchronized (bVar) {
                SnapshotStateObserver.a aVar = snapshotStateObserver.f3947i;
                Intrinsics.e(aVar);
                aVar.k(obj);
                Unit unit = Unit.f67061a;
            }
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final androidx.compose.runtime.collection.b f3944f = new androidx.compose.runtime.collection.b(new a[16], 0);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f3948j = -1;

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Function1 f3949a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Object f3950b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private k0 f3951c;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f3958j;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f3952d = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final androidx.compose.runtime.collection.e f3953e = new androidx.compose.runtime.collection.e();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final n0 f3954f = new n0(0, 1, null);

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final MutableScatterSet f3955g = new MutableScatterSet(0, 1, null);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final androidx.compose.runtime.collection.b f3956h = new androidx.compose.runtime.collection.b(new androidx.compose.runtime.z[16], 0);

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final androidx.compose.runtime.a0 f3957i = new C0043a();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final androidx.compose.runtime.collection.e f3959k = new androidx.compose.runtime.collection.e();

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final HashMap f3960l = new HashMap();

        /* JADX INFO: renamed from: androidx.compose.runtime.snapshots.SnapshotStateObserver$a$a, reason: collision with other inner class name */
        public static final class C0043a implements androidx.compose.runtime.a0 {
            C0043a() {
            }

            @Override // androidx.compose.runtime.a0
            public void a(androidx.compose.runtime.z zVar) {
                a.this.f3958j--;
            }

            @Override // androidx.compose.runtime.a0
            public void b(androidx.compose.runtime.z zVar) {
                a.this.f3958j++;
            }
        }

        public a(Function1 function1) {
            this.f3949a = function1;
        }

        private final void d(Object obj) {
            int i11 = this.f3952d;
            k0 k0Var = this.f3951c;
            if (k0Var == null) {
                return;
            }
            long[] jArr = k0Var.f2314a;
            int length = jArr.length - 2;
            if (length < 0) {
                return;
            }
            int i12 = 0;
            while (true) {
                long j11 = jArr[i12];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i13 = 8 - ((~(i12 - length)) >>> 31);
                    for (int i14 = 0; i14 < i13; i14++) {
                        if ((255 & j11) < 128) {
                            int i15 = (i12 << 3) + i14;
                            Object obj2 = k0Var.f2315b[i15];
                            boolean z10 = k0Var.f2316c[i15] != i11;
                            if (z10) {
                                m(obj, obj2);
                            }
                            if (z10) {
                                k0Var.p(i15);
                            }
                        }
                        j11 >>= 8;
                    }
                    if (i13 != 8) {
                        return;
                    }
                }
                if (i12 == length) {
                    return;
                } else {
                    i12++;
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:25:0x0089 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:26:0x008b A[LOOP:0: B:11:0x003b->B:26:0x008b, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:36:0x008f A[EDGE_INSN: B:36:0x008f->B:27:0x008f BREAK  A[LOOP:0: B:11:0x003b->B:26:0x008b], SYNTHETIC] */
        private final void l(Object obj, int i11, Object obj2, k0 k0Var) {
            int i12;
            int i13;
            if (this.f3958j > 0) {
                return;
            }
            int iO = k0Var.o(obj, i11, -1);
            if (!(obj instanceof androidx.compose.runtime.z) || iO == i11) {
                i12 = -1;
            } else {
                androidx.compose.runtime.z.a aVarB = ((androidx.compose.runtime.z) obj).b();
                this.f3960l.put(obj, aVarB.a());
                p0 p0VarB = aVarB.b();
                androidx.compose.runtime.collection.e eVar = this.f3959k;
                eVar.g(obj);
                Object[] objArr = p0VarB.f2315b;
                long[] jArr = p0VarB.f2314a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i14 = 0;
                    while (true) {
                        long j11 = jArr[i14];
                        if ((((~j11) << 7) & j11 & (-9187201950435737472L)) == -9187201950435737472L) {
                            if (i14 != length) {
                                break;
                                break;
                            }
                            i14++;
                        } else {
                            int i15 = 8;
                            int i16 = 8 - ((~(i14 - length)) >>> 31);
                            int i17 = 0;
                            while (i17 < i16) {
                                if ((j11 & 255) < 128) {
                                    c0 c0Var = (c0) objArr[(i14 << 3) + i17];
                                    if (c0Var instanceof d0) {
                                        ((d0) c0Var).m101recordReadInh_f27i8$runtime_release(f.a(2));
                                    }
                                    eVar.a(c0Var, obj);
                                    i13 = 8;
                                } else {
                                    i13 = i15;
                                }
                                j11 >>= i13;
                                i17++;
                                i15 = i13;
                            }
                            if (i16 != i15) {
                                break;
                            } else if (i14 != length) {
                                break;
                            } else {
                                i14++;
                            }
                        }
                    }
                }
                i12 = -1;
            }
            if (iO == i12) {
                if (obj instanceof d0) {
                    ((d0) obj).m101recordReadInh_f27i8$runtime_release(f.a(2));
                }
                this.f3953e.a(obj, obj2);
            }
        }

        private final void m(Object obj, Object obj2) {
            this.f3953e.f(obj2, obj);
            if (!(obj2 instanceof androidx.compose.runtime.z) || this.f3953e.c(obj2)) {
                return;
            }
            this.f3959k.g(obj2);
            this.f3960l.remove(obj2);
        }

        public final void c() {
            this.f3953e.b();
            this.f3954f.h();
            this.f3959k.b();
            this.f3960l.clear();
        }

        public final void e(Object obj) {
            k0 k0Var = (k0) this.f3954f.o(obj);
            if (k0Var == null) {
                return;
            }
            Object[] objArr = k0Var.f2315b;
            int[] iArr = k0Var.f2316c;
            long[] jArr = k0Var.f2314a;
            int length = jArr.length - 2;
            if (length < 0) {
                return;
            }
            int i11 = 0;
            while (true) {
                long j11 = jArr[i11];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i12 = 8 - ((~(i11 - length)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j11) < 128) {
                            int i14 = (i11 << 3) + i13;
                            Object obj2 = objArr[i14];
                            int i15 = iArr[i14];
                            m(obj, obj2);
                        }
                        j11 >>= 8;
                    }
                    if (i12 != 8) {
                        return;
                    }
                }
                if (i11 == length) {
                    return;
                } else {
                    i11++;
                }
            }
        }

        public final Function1 f() {
            return this.f3949a;
        }

        public final boolean g() {
            return this.f3954f.f();
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0044 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:15:0x0046 A[LOOP:0: B:5:0x0011->B:15:0x0046, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:19:0x0049 A[EDGE_INSN: B:19:0x0049->B:16:0x0049 BREAK  A[LOOP:0: B:5:0x0011->B:15:0x0046], SYNTHETIC] */
        public final void h() {
            MutableScatterSet mutableScatterSet = this.f3955g;
            Function1 function1 = this.f3949a;
            Object[] objArr = mutableScatterSet.f2247b;
            long[] jArr = mutableScatterSet.f2246a;
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
                                function1.invoke(objArr[(i11 << 3) + i13]);
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
            mutableScatterSet.m();
        }

        public final void i(Object obj, Function1 function1, Function0 function0) {
            Object obj2 = this.f3950b;
            k0 k0Var = this.f3951c;
            int i11 = this.f3952d;
            this.f3950b = obj;
            this.f3951c = (k0) this.f3954f.b(obj);
            if (this.f3952d == -1) {
                this.f3952d = SnapshotKt.H().f();
            }
            androidx.compose.runtime.a0 a0Var = this.f3957i;
            androidx.compose.runtime.collection.b bVarA = r2.a();
            try {
                bVarA.b(a0Var);
                j.f4004e.h(function1, null, function0);
                bVarA.v(bVarA.n() - 1);
                Object obj3 = this.f3950b;
                Intrinsics.e(obj3);
                d(obj3);
                this.f3950b = obj2;
                this.f3951c = k0Var;
                this.f3952d = i11;
            } catch (Throwable th2) {
                bVarA.v(bVarA.n() - 1);
                throw th2;
            }
        }

        /*  JADX ERROR: Type inference failed
            jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 16991. Try increasing type updates limit count.
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
            */
        public final boolean j(java.util.Set r43) {
            /*
                Method dump skipped, instruction units count: 1699
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.snapshots.SnapshotStateObserver.a.j(java.util.Set):boolean");
        }

        public final void k(Object obj) {
            Object obj2 = this.f3950b;
            Intrinsics.e(obj2);
            int i11 = this.f3952d;
            k0 k0Var = this.f3951c;
            if (k0Var == null) {
                k0Var = new k0(0, 1, null);
                this.f3951c = k0Var;
                this.f3954f.r(obj2, k0Var);
                Unit unit = Unit.f67061a;
            }
            l(obj, i11, obj2, k0Var);
        }

        public final void n(Function1 function1) {
            long[] jArr;
            int i11;
            long[] jArr2;
            int i12;
            long j11;
            int i13;
            long j12;
            int i14;
            n0 n0Var = this.f3954f;
            long[] jArr3 = n0Var.f2344a;
            int length = jArr3.length - 2;
            if (length < 0) {
                return;
            }
            int i15 = 0;
            while (true) {
                long j13 = jArr3[i15];
                long j14 = -9187201950435737472L;
                if ((((~j13) << 7) & j13 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i16 = 8;
                    int i17 = 8 - ((~(i15 - length)) >>> 31);
                    int i18 = 0;
                    while (i18 < i17) {
                        if ((j13 & 255) < 128) {
                            int i19 = (i15 << 3) + i18;
                            Object obj = n0Var.f2345b[i19];
                            k0 k0Var = (k0) n0Var.f2346c[i19];
                            Boolean bool = (Boolean) function1.invoke(obj);
                            if (bool.booleanValue()) {
                                Object[] objArr = k0Var.f2315b;
                                int[] iArr = k0Var.f2316c;
                                long[] jArr4 = k0Var.f2314a;
                                int length2 = jArr4.length - 2;
                                jArr2 = jArr3;
                                if (length2 >= 0) {
                                    i13 = i17;
                                    int i20 = 0;
                                    while (true) {
                                        long j15 = jArr4[i20];
                                        i12 = i15;
                                        j11 = j13;
                                        j12 = -9187201950435737472L;
                                        if ((((~j15) << 7) & j15 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i21 = 8 - ((~(i20 - length2)) >>> 31);
                                            for (int i22 = 0; i22 < i21; i22++) {
                                                if ((j15 & 255) < 128) {
                                                    int i23 = (i20 << 3) + i22;
                                                    Object obj2 = objArr[i23];
                                                    int i24 = iArr[i23];
                                                    m(obj, obj2);
                                                }
                                                j15 >>= 8;
                                            }
                                            if (i21 != 8) {
                                                break;
                                            }
                                        }
                                        if (i20 == length2) {
                                            break;
                                        }
                                        i20++;
                                        i15 = i12;
                                        j13 = j11;
                                    }
                                } else {
                                    i12 = i15;
                                    j11 = j13;
                                    i13 = i17;
                                    j12 = -9187201950435737472L;
                                }
                            } else {
                                jArr2 = jArr3;
                                i12 = i15;
                                j11 = j13;
                                i13 = i17;
                                j12 = j14;
                            }
                            if (bool.booleanValue()) {
                                n0Var.p(i19);
                            }
                            i14 = 8;
                        } else {
                            jArr2 = jArr3;
                            i12 = i15;
                            j11 = j13;
                            i13 = i17;
                            j12 = j14;
                            i14 = i16;
                        }
                        j13 = j11 >> i14;
                        i18++;
                        i16 = i14;
                        j14 = j12;
                        jArr3 = jArr2;
                        i17 = i13;
                        i15 = i12;
                    }
                    jArr = jArr3;
                    int i25 = i15;
                    if (i17 != i16) {
                        return;
                    } else {
                        i11 = i25;
                    }
                } else {
                    jArr = jArr3;
                    i11 = i15;
                }
                if (i11 == length) {
                    return;
                }
                i15 = i11 + 1;
                jArr3 = jArr;
            }
        }

        public final void o(androidx.compose.runtime.z zVar) {
            long[] jArr;
            int i11;
            k0 k0Var;
            n0 n0Var = this.f3954f;
            int iF = SnapshotKt.H().f();
            Object objB = this.f3953e.d().b(zVar);
            if (objB == null) {
                return;
            }
            if (!(objB instanceof MutableScatterSet)) {
                k0 k0Var2 = (k0) n0Var.b(objB);
                if (k0Var2 == null) {
                    k0Var2 = new k0(0, 1, null);
                    n0Var.r(objB, k0Var2);
                    Unit unit = Unit.f67061a;
                }
                l(zVar, iF, objB, k0Var2);
                return;
            }
            MutableScatterSet mutableScatterSet = (MutableScatterSet) objB;
            Object[] objArr = mutableScatterSet.f2247b;
            long[] jArr2 = mutableScatterSet.f2246a;
            int length = jArr2.length - 2;
            if (length < 0) {
                return;
            }
            int i12 = 0;
            while (true) {
                long j11 = jArr2[i12];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i13 = 8;
                    int i14 = 8 - ((~(i12 - length)) >>> 31);
                    int i15 = 0;
                    while (i15 < i14) {
                        if ((j11 & 255) < 128) {
                            Object obj = objArr[(i12 << 3) + i15];
                            k0 k0Var3 = (k0) n0Var.b(obj);
                            if (k0Var3 == null) {
                                k0Var = new k0(0, 1, null);
                                n0Var.r(obj, k0Var);
                                Unit unit2 = Unit.f67061a;
                            } else {
                                k0Var = k0Var3;
                            }
                            l(zVar, iF, obj, k0Var);
                            i11 = 8;
                        } else {
                            i11 = i13;
                        }
                        j11 >>= i11;
                        i15++;
                        i13 = i11;
                        jArr2 = jArr2;
                    }
                    jArr = jArr2;
                    if (i14 != i13) {
                        return;
                    }
                } else {
                    jArr = jArr2;
                }
                if (i12 == length) {
                    return;
                }
                i12++;
                jArr2 = jArr;
            }
        }
    }

    public SnapshotStateObserver(Function1 function1) {
        this.f3939a = function1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void i(Set set) {
        Object obj;
        List listB0;
        do {
            obj = this.f3940b.get();
            if (obj == null) {
                listB0 = set;
            } else if (obj instanceof Set) {
                listB0 = CollectionsKt.o(obj, set);
            } else {
                if (!(obj instanceof List)) {
                    q();
                    throw new KotlinNothingValueException();
                }
                listB0 = CollectionsKt.B0((Collection) obj, CollectionsKt.e(set));
            }
        } while (!j0.a(this.f3940b, obj, listB0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean m() {
        boolean z10;
        synchronized (this.f3944f) {
            z10 = this.f3941c;
        }
        if (z10) {
            return false;
        }
        boolean z11 = false;
        while (true) {
            Set setP = p();
            if (setP == null) {
                return z11;
            }
            synchronized (this.f3944f) {
                try {
                    androidx.compose.runtime.collection.b bVar = this.f3944f;
                    int iN = bVar.n();
                    if (iN > 0) {
                        Object[] objArrM = bVar.m();
                        int i11 = 0;
                        do {
                            z11 = ((a) objArrM[i11]).j(setP) || z11;
                            i11++;
                        } while (i11 < iN);
                    }
                    Unit unit = Unit.f67061a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private final a n(Function1 function1) {
        Object obj;
        androidx.compose.runtime.collection.b bVar = this.f3944f;
        int iN = bVar.n();
        if (iN <= 0) {
            obj = null;
            break;
        }
        Object[] objArrM = bVar.m();
        int i11 = 0;
        while (true) {
            obj = objArrM[i11];
            if (((a) obj).f() == function1) {
                break;
            }
            i11++;
            if (i11 >= iN) {
                obj = null;
                break;
            }
        }
        a aVar = (a) obj;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.f(function1, "null cannot be cast to non-null type kotlin.Function1<kotlin.Any, kotlin.Unit>");
        a aVar2 = new a((Function1) TypeIntrinsics.e(function1, 1));
        this.f3944f.b(aVar2);
        return aVar2;
    }

    private final Set p() {
        Object obj;
        Object objSubList;
        Set set;
        do {
            obj = this.f3940b.get();
            objSubList = null;
            if (obj == null) {
                return null;
            }
            if (obj instanceof Set) {
                set = (Set) obj;
            } else {
                if (!(obj instanceof List)) {
                    q();
                    throw new KotlinNothingValueException();
                }
                List list = (List) obj;
                Set set2 = (Set) list.get(0);
                if (list.size() == 2) {
                    objSubList = list.get(1);
                } else if (list.size() > 2) {
                    objSubList = list.subList(1, list.size());
                }
                set = set2;
            }
        } while (!j0.a(this.f3940b, obj, objSubList));
        return set;
    }

    private final Void q() {
        androidx.compose.runtime.k.s("Unexpected notification");
        throw new KotlinNothingValueException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r() {
        this.f3939a.invoke(new Function0<Unit>() { // from class: androidx.compose.runtime.snapshots.SnapshotStateObserver$sendNotifications$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m99invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m99invoke() {
                do {
                    androidx.compose.runtime.collection.b bVar = this.this$0.f3944f;
                    SnapshotStateObserver snapshotStateObserver = this.this$0;
                    synchronized (bVar) {
                        try {
                            if (!snapshotStateObserver.f3941c) {
                                snapshotStateObserver.f3941c = true;
                                try {
                                    androidx.compose.runtime.collection.b bVar2 = snapshotStateObserver.f3944f;
                                    int iN = bVar2.n();
                                    if (iN > 0) {
                                        Object[] objArrM = bVar2.m();
                                        int i11 = 0;
                                        do {
                                            ((SnapshotStateObserver.a) objArrM[i11]).h();
                                            i11++;
                                        } while (i11 < iN);
                                    }
                                    snapshotStateObserver.f3941c = false;
                                } catch (Throwable th2) {
                                    snapshotStateObserver.f3941c = false;
                                    throw th2;
                                }
                            }
                            Unit unit = Unit.f67061a;
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                } while (this.this$0.m());
            }
        });
    }

    public final void j() {
        synchronized (this.f3944f) {
            try {
                androidx.compose.runtime.collection.b bVar = this.f3944f;
                int iN = bVar.n();
                if (iN > 0) {
                    Object[] objArrM = bVar.m();
                    int i11 = 0;
                    do {
                        ((a) objArrM[i11]).c();
                        i11++;
                    } while (i11 < iN);
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void k(Object obj) {
        synchronized (this.f3944f) {
            try {
                androidx.compose.runtime.collection.b bVar = this.f3944f;
                int iN = bVar.n();
                int i11 = 0;
                for (int i12 = 0; i12 < iN; i12++) {
                    a aVar = (a) bVar.m()[i12];
                    aVar.e(obj);
                    if (!aVar.g()) {
                        i11++;
                    } else if (i11 > 0) {
                        bVar.m()[i12 - i11] = bVar.m()[i12];
                    }
                }
                int i13 = iN - i11;
                ArraysKt.w(bVar.m(), null, i13, iN);
                bVar.z(i13);
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void l(Function1 function1) {
        synchronized (this.f3944f) {
            try {
                androidx.compose.runtime.collection.b bVar = this.f3944f;
                int iN = bVar.n();
                int i11 = 0;
                for (int i12 = 0; i12 < iN; i12++) {
                    a aVar = (a) bVar.m()[i12];
                    aVar.n(function1);
                    if (!aVar.g()) {
                        i11++;
                    } else if (i11 > 0) {
                        bVar.m()[i12 - i11] = bVar.m()[i12];
                    }
                }
                int i13 = iN - i11;
                ArraysKt.w(bVar.m(), null, i13, iN);
                bVar.z(i13);
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void o(Object obj, Function1 function1, Function0 function0) {
        a aVarN;
        synchronized (this.f3944f) {
            aVarN = n(function1);
        }
        boolean z10 = this.f3946h;
        a aVar = this.f3947i;
        long j11 = this.f3948j;
        if (j11 != -1) {
            if (!(j11 == androidx.compose.runtime.b.a())) {
                o1.a("Detected multithreaded access to SnapshotStateObserver: previousThreadId=" + j11 + "), currentThread={id=" + androidx.compose.runtime.b.a() + ", name=" + androidx.compose.runtime.b.b() + "}. Note that observation on multiple threads in layout/draw is not supported. Make sure your measure/layout/draw for each Owner (AndroidComposeView) is executed on the same thread.");
            }
        }
        try {
            this.f3946h = false;
            this.f3947i = aVarN;
            this.f3948j = androidx.compose.runtime.b.a();
            aVarN.i(obj, this.f3943e, function0);
        } finally {
            this.f3947i = aVar;
            this.f3946h = z10;
            this.f3948j = j11;
        }
    }

    public final void s() {
        this.f3945g = j.f4004e.i(this.f3942d);
    }

    public final void t() {
        e eVar = this.f3945g;
        if (eVar != null) {
            eVar.dispose();
        }
    }
}
