package u;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.jvm.internal.markers.KMutableIterator;

/* JADX INFO: loaded from: classes2.dex */
public class g extends e implements Iterator, KMutableIterator {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f f76505d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Object f76506e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f76507f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f76508g;

    public g(f fVar, u[] uVarArr) {
        super(fVar.j(), uVarArr);
        this.f76505d = fVar;
        this.f76508g = fVar.i();
    }

    private final void j() {
        if (this.f76505d.i() != this.f76508g) {
            throw new ConcurrentModificationException();
        }
    }

    private final void l() {
        if (!this.f76507f) {
            throw new IllegalStateException();
        }
    }

    private final void m(int i11, t tVar, Object obj, int i12) {
        int i13 = i12 * 5;
        if (i13 > 30) {
            f()[i12].n(tVar.p(), tVar.p().length, 0);
            while (!Intrinsics.c(f()[i12].a(), obj)) {
                f()[i12].j();
            }
            i(i12);
            return;
        }
        int iF = 1 << x.f(i11, i13);
        if (tVar.q(iF)) {
            f()[i12].n(tVar.p(), tVar.m() * 2, tVar.n(iF));
            i(i12);
        } else {
            int iO = tVar.O(iF);
            t tVarN = tVar.N(iO);
            f()[i12].n(tVar.p(), tVar.m() * 2, iO);
            m(i11, tVarN, obj, i12 + 1);
        }
    }

    public final void n(Object obj, Object obj2) {
        if (this.f76505d.containsKey(obj)) {
            if (hasNext()) {
                Object objC = c();
                this.f76505d.put(obj, obj2);
                m(objC != null ? objC.hashCode() : 0, this.f76505d.j(), objC, 0);
            } else {
                this.f76505d.put(obj, obj2);
            }
            this.f76508g = this.f76505d.i();
        }
    }

    @Override // u.e, java.util.Iterator
    public Object next() {
        j();
        this.f76506e = c();
        this.f76507f = true;
        return super.next();
    }

    @Override // u.e, java.util.Iterator
    public void remove() {
        l();
        if (hasNext()) {
            Object objC = c();
            TypeIntrinsics.d(this.f76505d).remove(this.f76506e);
            m(objC != null ? objC.hashCode() : 0, this.f76505d.j(), objC, 0);
        } else {
            TypeIntrinsics.d(this.f76505d).remove(this.f76506e);
        }
        this.f76506e = null;
        this.f76507f = false;
        this.f76508g = this.f76505d.i();
    }
}
