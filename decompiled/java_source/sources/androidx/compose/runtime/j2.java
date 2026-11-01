package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
public final class j2 implements androidx.compose.runtime.tooling.a, Iterable, KMappedMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3777b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3779d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3780e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f3781f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f3782g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private HashMap f3784i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private androidx.collection.e0 f3785j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int[] f3776a = new int[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object[] f3778c = new Object[0];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ArrayList f3783h = new ArrayList();

    private final c B(int i11) {
        int i12;
        if (this.f3781f) {
            k.r("use active SlotWriter to crate an anchor for location instead");
        }
        if (i11 < 0 || i11 >= (i12 = this.f3777b)) {
            return null;
        }
        return l2.G(this.f3783h, i11, i12);
    }

    public final l0 A(int i11) {
        c cVarB;
        HashMap map = this.f3784i;
        if (map == null || (cVarB = B(i11)) == null) {
            return null;
        }
        return (l0) map.get(cVarB);
    }

    public final c a(int i11) {
        if (this.f3781f) {
            k.r("use active SlotWriter to create an anchor location instead");
        }
        boolean z10 = false;
        if (i11 >= 0 && i11 < this.f3777b) {
            z10 = true;
        }
        if (!z10) {
            o1.a("Parameter index is out of range");
        }
        ArrayList arrayList = this.f3783h;
        int iU = l2.U(arrayList, i11, this.f3777b);
        if (iU >= 0) {
            return (c) arrayList.get(iU);
        }
        c cVar = new c(i11);
        arrayList.add(-(iU + 1), cVar);
        return cVar;
    }

    public final int c(c cVar) {
        if (this.f3781f) {
            k.r("Use active SlotWriter to determine anchor location instead");
        }
        if (!cVar.b()) {
            o1.a("Anchor refers to a group that was removed");
        }
        return cVar.a();
    }

    public final void e(i2 i2Var, HashMap map) {
        if (!(i2Var.y() == this && this.f3780e > 0)) {
            k.r("Unexpected reader close()");
        }
        this.f3780e--;
        if (map != null) {
            synchronized (this) {
                try {
                    HashMap map2 = this.f3784i;
                    if (map2 != null) {
                        map2.putAll(map);
                    } else {
                        this.f3784i = map;
                    }
                    Unit unit = Unit.f67061a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final void f(m2 m2Var, int[] iArr, int i11, Object[] objArr, int i12, ArrayList arrayList, HashMap map, androidx.collection.e0 e0Var) {
        if (!(m2Var.f0() == this && this.f3781f)) {
            o1.a("Unexpected writer close()");
        }
        this.f3781f = false;
        z(iArr, i11, objArr, i12, arrayList, map, e0Var);
    }

    public final void h() {
        this.f3785j = new androidx.collection.e0(0, 1, null);
    }

    public boolean isEmpty() {
        return this.f3777b == 0;
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return new j0(this, 0, this.f3777b);
    }

    public final void j() {
        this.f3784i = new HashMap();
    }

    public final boolean l() {
        return this.f3777b > 0 && l2.D(this.f3776a, 0);
    }

    public final ArrayList m() {
        return this.f3783h;
    }

    public final androidx.collection.e0 n() {
        return this.f3785j;
    }

    public final int[] o() {
        return this.f3776a;
    }

    public final int p() {
        return this.f3777b;
    }

    public final Object[] q() {
        return this.f3778c;
    }

    public final int r() {
        return this.f3779d;
    }

    public final HashMap s() {
        return this.f3784i;
    }

    public final int t() {
        return this.f3782g;
    }

    public final boolean u() {
        return this.f3781f;
    }

    public final boolean v(int i11, c cVar) {
        if (this.f3781f) {
            k.r("Writer is active");
        }
        if (!(i11 >= 0 && i11 < this.f3777b)) {
            k.r("Invalid group index");
        }
        if (y(cVar)) {
            int I = l2.I(this.f3776a, i11) + i11;
            int iA = cVar.a();
            if (i11 <= iA && iA < I) {
                return true;
            }
        }
        return false;
    }

    public final i2 w() {
        if (this.f3781f) {
            throw new IllegalStateException("Cannot read while a writer is pending");
        }
        this.f3780e++;
        return new i2(this);
    }

    public final m2 x() {
        if (this.f3781f) {
            k.r("Cannot start a writer when another writer is pending");
        }
        if (!(this.f3780e <= 0)) {
            k.r("Cannot start a writer when a reader is pending");
        }
        this.f3781f = true;
        this.f3782g++;
        return new m2(this);
    }

    public final boolean y(c cVar) {
        int iU;
        return cVar.b() && (iU = l2.U(this.f3783h, cVar.a(), this.f3777b)) >= 0 && Intrinsics.c(this.f3783h.get(iU), cVar);
    }

    public final void z(int[] iArr, int i11, Object[] objArr, int i12, ArrayList arrayList, HashMap map, androidx.collection.e0 e0Var) {
        this.f3776a = iArr;
        this.f3777b = i11;
        this.f3778c = objArr;
        this.f3779d = i12;
        this.f3783h = arrayList;
        this.f3784i = map;
        this.f3785j = e0Var;
    }
}
