package androidx.media3.exoplayer;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class u3 extends androidx.media3.exoplayer.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f12938h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f12939i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int[] f12940j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int[] f12941k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final androidx.media3.common.e0[] f12942l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Object[] f12943m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final HashMap f12944n;

    class a extends androidx.media3.exoplayer.source.m {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final androidx.media3.common.e0.c f12945f;

        a(androidx.media3.common.e0 e0Var) {
            super(e0Var);
            this.f12945f = new androidx.media3.common.e0.c();
        }

        @Override // androidx.media3.exoplayer.source.m, androidx.media3.common.e0
        public androidx.media3.common.e0.b g(int i11, androidx.media3.common.e0.b bVar, boolean z10) {
            androidx.media3.common.e0.b bVarG = super.g(i11, bVar, z10);
            if (super.n(bVarG.f9936c, this.f12945f).f()) {
                bVarG.u(bVar.f9934a, bVar.f9935b, bVar.f9936c, bVar.f9937d, bVar.f9938e, androidx.media3.common.b.f9873g, true);
            } else {
                bVarG.f9939f = true;
            }
            return bVarG;
        }
    }

    public u3(Collection collection, g2.v vVar) {
        this(G(collection), H(collection), vVar);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private u3(androidx.media3.common.e0[] e0VarArr, Object[] objArr, g2.v vVar) {
        super(false, vVar);
        int i11 = 0;
        int length = e0VarArr.length;
        this.f12942l = e0VarArr;
        this.f12940j = new int[length];
        this.f12941k = new int[length];
        this.f12943m = objArr;
        this.f12944n = new HashMap();
        int length2 = e0VarArr.length;
        int iP = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < length2) {
            androidx.media3.common.e0 e0Var = e0VarArr[i11];
            this.f12942l[i13] = e0Var;
            this.f12941k[i13] = iP;
            this.f12940j[i13] = i12;
            iP += e0Var.p();
            i12 += this.f12942l[i13].i();
            this.f12944n.put(objArr[i13], Integer.valueOf(i13));
            i11++;
            i13++;
        }
        this.f12938h = iP;
        this.f12939i = i12;
    }

    private static androidx.media3.common.e0[] G(Collection collection) {
        androidx.media3.common.e0[] e0VarArr = new androidx.media3.common.e0[collection.size()];
        Iterator it = collection.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            e0VarArr[i11] = ((c3) it.next()).b();
            i11++;
        }
        return e0VarArr;
    }

    private static Object[] H(Collection collection) {
        Object[] objArr = new Object[collection.size()];
        Iterator it = collection.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            objArr[i11] = ((c3) it.next()).a();
            i11++;
        }
        return objArr;
    }

    @Override // androidx.media3.exoplayer.a
    protected int A(int i11) {
        return this.f12941k[i11];
    }

    @Override // androidx.media3.exoplayer.a
    protected androidx.media3.common.e0 D(int i11) {
        return this.f12942l[i11];
    }

    public u3 E(g2.v vVar) {
        androidx.media3.common.e0[] e0VarArr = new androidx.media3.common.e0[this.f12942l.length];
        int i11 = 0;
        while (true) {
            androidx.media3.common.e0[] e0VarArr2 = this.f12942l;
            if (i11 >= e0VarArr2.length) {
                return new u3(e0VarArr, this.f12943m, vVar);
            }
            e0VarArr[i11] = new a(e0VarArr2[i11]);
            i11++;
        }
    }

    List F() {
        return Arrays.asList(this.f12942l);
    }

    @Override // androidx.media3.common.e0
    public int i() {
        return this.f12939i;
    }

    @Override // androidx.media3.common.e0
    public int p() {
        return this.f12938h;
    }

    @Override // androidx.media3.exoplayer.a
    protected int s(Object obj) {
        Integer num = (Integer) this.f12944n.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // androidx.media3.exoplayer.a
    protected int t(int i11) {
        return androidx.media3.common.util.a1.g(this.f12940j, i11 + 1, false, false);
    }

    @Override // androidx.media3.exoplayer.a
    protected int u(int i11) {
        return androidx.media3.common.util.a1.g(this.f12941k, i11 + 1, false, false);
    }

    @Override // androidx.media3.exoplayer.a
    protected Object x(int i11) {
        return this.f12943m[i11];
    }

    @Override // androidx.media3.exoplayer.a
    protected int z(int i11) {
        return this.f12940j[i11];
    }
}
