package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class Pending {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f3619a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3620b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3621c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f3622d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.collection.e0 f3623e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f3624f;

    public Pending(List list, int i11) {
        this.f3619a = list;
        this.f3620b = i11;
        if (!(i11 >= 0)) {
            o1.a("Invalid start index");
        }
        this.f3622d = new ArrayList();
        androidx.collection.e0 e0Var = new androidx.collection.e0(0, 1, null);
        int size = list.size();
        int iC = 0;
        for (int i12 = 0; i12 < size; i12++) {
            q0 q0Var = (q0) this.f3619a.get(i12);
            e0Var.t(q0Var.b(), new i0(i12, iC, q0Var.c()));
            iC += q0Var.c();
        }
        this.f3623e = e0Var;
        this.f3624f = LazyKt.b(new Function0<h1>() { // from class: androidx.compose.runtime.Pending$keyMap$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                return h1.a(m84invokeSAeQiB4());
            }

            /* JADX INFO: renamed from: invoke-SAeQiB4, reason: not valid java name */
            public final androidx.collection.n0 m84invokeSAeQiB4() {
                androidx.collection.n0 n0VarI = k.I(this.this$0.b().size());
                Pending pending = this.this$0;
                int size2 = pending.b().size();
                for (int i13 = 0; i13 < size2; i13++) {
                    q0 q0Var2 = (q0) pending.b().get(i13);
                    h1.f(n0VarI, k.A(q0Var2), q0Var2);
                }
                return n0VarI;
            }
        });
    }

    public final int a() {
        return this.f3621c;
    }

    public final List b() {
        return this.f3619a;
    }

    public final androidx.collection.n0 c() {
        return ((h1) this.f3624f.getValue()).h();
    }

    public final q0 d(int i11, Object obj) {
        return (q0) h1.e(c(), obj != null ? new p0(Integer.valueOf(i11), obj) : Integer.valueOf(i11));
    }

    public final int e() {
        return this.f3620b;
    }

    public final List f() {
        return this.f3622d;
    }

    public final int g(q0 q0Var) {
        i0 i0Var = (i0) this.f3623e.c(q0Var.b());
        if (i0Var != null) {
            return i0Var.b();
        }
        return -1;
    }

    public final boolean h(q0 q0Var) {
        return this.f3622d.add(q0Var);
    }

    public final void i(q0 q0Var, int i11) {
        this.f3623e.t(q0Var.b(), new i0(-1, i11, 0));
    }

    public final void j(int i11, int i12, int i13) {
        char c11 = 7;
        long j11 = -9187201950435737472L;
        if (i11 > i12) {
            androidx.collection.e0 e0Var = this.f3623e;
            Object[] objArr = e0Var.f2305c;
            long[] jArr = e0Var.f2303a;
            int length = jArr.length - 2;
            if (length < 0) {
                return;
            }
            int i14 = 0;
            while (true) {
                long j12 = jArr[i14];
                if ((((~j12) << 7) & j12 & j11) != j11) {
                    int i15 = 8 - ((~(i14 - length)) >>> 31);
                    for (int i16 = 0; i16 < i15; i16++) {
                        if ((j12 & 255) < 128) {
                            i0 i0Var = (i0) objArr[(i14 << 3) + i16];
                            int iB = i0Var.b();
                            if (i11 <= iB && iB < i11 + i13) {
                                i0Var.e((iB - i11) + i12);
                            } else if (i12 <= iB && iB < i11) {
                                i0Var.e(iB + i13);
                            }
                        }
                        j12 >>= 8;
                    }
                    if (i15 != 8) {
                        return;
                    }
                }
                if (i14 == length) {
                    return;
                }
                i14++;
                j11 = -9187201950435737472L;
            }
        } else {
            if (i12 <= i11) {
                return;
            }
            androidx.collection.e0 e0Var2 = this.f3623e;
            Object[] objArr2 = e0Var2.f2305c;
            long[] jArr2 = e0Var2.f2303a;
            int length2 = jArr2.length - 2;
            if (length2 < 0) {
                return;
            }
            int i17 = 0;
            while (true) {
                long j13 = jArr2[i17];
                if ((((~j13) << c11) & j13 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i18 = 8 - ((~(i17 - length2)) >>> 31);
                    for (int i19 = 0; i19 < i18; i19++) {
                        if ((j13 & 255) < 128) {
                            i0 i0Var2 = (i0) objArr2[(i17 << 3) + i19];
                            int iB2 = i0Var2.b();
                            if (i11 <= iB2 && iB2 < i11 + i13) {
                                i0Var2.e((iB2 - i11) + i12);
                            } else if (i11 + 1 <= iB2 && iB2 < i12) {
                                i0Var2.e(iB2 - i13);
                            }
                        }
                        j13 >>= 8;
                    }
                    if (i18 != 8) {
                        return;
                    }
                }
                if (i17 == length2) {
                    return;
                }
                i17++;
                c11 = 7;
            }
        }
    }

    public final void k(int i11, int i12) {
        char c11 = 7;
        long j11 = -9187201950435737472L;
        if (i11 > i12) {
            androidx.collection.e0 e0Var = this.f3623e;
            Object[] objArr = e0Var.f2305c;
            long[] jArr = e0Var.f2303a;
            int length = jArr.length - 2;
            if (length < 0) {
                return;
            }
            int i13 = 0;
            while (true) {
                long j12 = jArr[i13];
                if ((((~j12) << 7) & j12 & j11) != j11) {
                    int i14 = 8 - ((~(i13 - length)) >>> 31);
                    for (int i15 = 0; i15 < i14; i15++) {
                        if ((j12 & 255) < 128) {
                            i0 i0Var = (i0) objArr[(i13 << 3) + i15];
                            int iC = i0Var.c();
                            if (iC == i11) {
                                i0Var.f(i12);
                            } else if (i12 <= iC && iC < i11) {
                                i0Var.f(iC + 1);
                            }
                        }
                        j12 >>= 8;
                    }
                    if (i14 != 8) {
                        return;
                    }
                }
                if (i13 == length) {
                    return;
                }
                i13++;
                j11 = -9187201950435737472L;
            }
        } else {
            if (i12 <= i11) {
                return;
            }
            androidx.collection.e0 e0Var2 = this.f3623e;
            Object[] objArr2 = e0Var2.f2305c;
            long[] jArr2 = e0Var2.f2303a;
            int length2 = jArr2.length - 2;
            if (length2 < 0) {
                return;
            }
            int i16 = 0;
            while (true) {
                long j13 = jArr2[i16];
                if ((((~j13) << c11) & j13 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i17 = 8 - ((~(i16 - length2)) >>> 31);
                    for (int i18 = 0; i18 < i17; i18++) {
                        if ((j13 & 255) < 128) {
                            i0 i0Var2 = (i0) objArr2[(i16 << 3) + i18];
                            int iC2 = i0Var2.c();
                            if (iC2 == i11) {
                                i0Var2.f(i12);
                            } else if (i11 + 1 <= iC2 && iC2 < i12) {
                                i0Var2.f(iC2 - 1);
                            }
                        }
                        j13 >>= 8;
                    }
                    if (i17 != 8) {
                        return;
                    }
                }
                if (i16 == length2) {
                    return;
                }
                i16++;
                c11 = 7;
            }
        }
    }

    public final void l(int i11) {
        this.f3621c = i11;
    }

    public final int m(q0 q0Var) {
        i0 i0Var = (i0) this.f3623e.c(q0Var.b());
        if (i0Var != null) {
            return i0Var.c();
        }
        return -1;
    }

    public final boolean n(int i11, int i12) {
        int iB;
        i0 i0Var = (i0) this.f3623e.c(i11);
        if (i0Var == null) {
            return false;
        }
        int iB2 = i0Var.b();
        int iA = i12 - i0Var.a();
        i0Var.d(i12);
        if (iA == 0) {
            return true;
        }
        androidx.collection.e0 e0Var = this.f3623e;
        Object[] objArr = e0Var.f2305c;
        long[] jArr = e0Var.f2303a;
        int length = jArr.length - 2;
        if (length < 0) {
            return true;
        }
        int i13 = 0;
        while (true) {
            long j11 = jArr[i13];
            if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i14 = 8 - ((~(i13 - length)) >>> 31);
                for (int i15 = 0; i15 < i14; i15++) {
                    if ((255 & j11) < 128) {
                        i0 i0Var2 = (i0) objArr[(i13 << 3) + i15];
                        if (i0Var2.b() >= iB2 && !Intrinsics.c(i0Var2, i0Var) && (iB = i0Var2.b() + iA) >= 0) {
                            i0Var2.e(iB);
                        }
                    }
                    j11 >>= 8;
                }
                if (i14 != 8) {
                    return true;
                }
            }
            if (i13 == length) {
                return true;
            }
            i13++;
        }
    }

    public final int o(q0 q0Var) {
        i0 i0Var = (i0) this.f3623e.c(q0Var.b());
        return i0Var != null ? i0Var.a() : q0Var.c();
    }
}
