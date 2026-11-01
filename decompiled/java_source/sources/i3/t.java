package i3;

import android.util.SparseArray;
import l2.m0;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
public final class t implements l2.t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l2.t f64927a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final s.a f64928b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final SparseArray f64929c = new SparseArray();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f64930d;

    public t(l2.t tVar, s.a aVar) {
        this.f64927a = tVar;
        this.f64928b = aVar;
    }

    @Override // l2.t
    public void endTracks() {
        this.f64927a.endTracks();
        if (this.f64930d) {
            for (int i11 = 0; i11 < this.f64929c.size(); i11++) {
                ((v) this.f64929c.valueAt(i11)).l(true);
            }
        }
    }

    @Override // l2.t
    public void f(m0 m0Var) {
        this.f64927a.f(m0Var);
    }

    @Override // l2.t
    public s0 track(int i11, int i12) {
        if (i12 != 3) {
            this.f64930d = true;
            return this.f64927a.track(i11, i12);
        }
        v vVar = (v) this.f64929c.get(i11);
        if (vVar != null) {
            return vVar;
        }
        v vVar2 = new v(this.f64927a.track(i11, i12), this.f64928b);
        this.f64929c.put(i11, vVar2);
        return vVar2;
    }
}
