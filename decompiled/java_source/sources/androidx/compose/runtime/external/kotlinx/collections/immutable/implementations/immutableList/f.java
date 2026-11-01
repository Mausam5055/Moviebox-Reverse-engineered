package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import java.util.ConcurrentModificationException;
import java.util.ListIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableListIterator;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class f extends a implements ListIterator, KMutableListIterator {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final PersistentVectorBuilder f3713c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3714d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private i f3715e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f3716f;

    public f(PersistentVectorBuilder persistentVectorBuilder, int i11) {
        super(i11, persistentVectorBuilder.size());
        this.f3713c = persistentVectorBuilder;
        this.f3714d = persistentVectorBuilder.e();
        this.f3716f = -1;
        n();
    }

    private final void j() {
        if (this.f3714d != this.f3713c.e()) {
            throw new ConcurrentModificationException();
        }
    }

    private final void l() {
        if (this.f3716f == -1) {
            throw new IllegalStateException();
        }
    }

    private final void m() {
        i(this.f3713c.size());
        this.f3714d = this.f3713c.e();
        this.f3716f = -1;
        n();
    }

    private final void n() {
        Object[] objArrF = this.f3713c.f();
        if (objArrF == null) {
            this.f3715e = null;
            return;
        }
        int iD = j.d(this.f3713c.size());
        int i11 = RangesKt.i(e(), iD);
        int iH = (this.f3713c.h() / 5) + 1;
        i iVar = this.f3715e;
        if (iVar == null) {
            this.f3715e = new i(objArrF, i11, iD, iH);
        } else {
            Intrinsics.e(iVar);
            iVar.n(objArrF, i11, iD, iH);
        }
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.a, java.util.ListIterator
    public void add(Object obj) {
        j();
        this.f3713c.add(e(), obj);
        h(e() + 1);
        m();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public Object next() {
        j();
        a();
        this.f3716f = e();
        i iVar = this.f3715e;
        if (iVar == null) {
            Object[] objArrJ = this.f3713c.j();
            int iE = e();
            h(iE + 1);
            return objArrJ[iE];
        }
        if (iVar.hasNext()) {
            h(e() + 1);
            return iVar.next();
        }
        Object[] objArrJ2 = this.f3713c.j();
        int iE2 = e();
        h(iE2 + 1);
        return objArrJ2[iE2 - iVar.f()];
    }

    @Override // java.util.ListIterator
    public Object previous() {
        j();
        c();
        this.f3716f = e() - 1;
        i iVar = this.f3715e;
        if (iVar == null) {
            Object[] objArrJ = this.f3713c.j();
            h(e() - 1);
            return objArrJ[e()];
        }
        if (e() <= iVar.f()) {
            h(e() - 1);
            return iVar.previous();
        }
        Object[] objArrJ2 = this.f3713c.j();
        h(e() - 1);
        return objArrJ2[e() - iVar.f()];
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.a, java.util.ListIterator, java.util.Iterator
    public void remove() {
        j();
        l();
        this.f3713c.remove(this.f3716f);
        if (this.f3716f < e()) {
            h(this.f3716f);
        }
        m();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.a, java.util.ListIterator
    public void set(Object obj) {
        j();
        l();
        this.f3713c.set(this.f3716f, obj);
        this.f3714d = this.f3713c.e();
        n();
    }
}
