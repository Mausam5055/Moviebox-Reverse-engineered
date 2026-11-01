package androidx.p009lifecycle;

import java.util.Iterator;
import java.util.Map;
import k.b;

/* JADX INFO: loaded from: classes.dex */
public class z extends b0 {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private b f9675l;

    private static class a implements c0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final LiveData f9676a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final c0 f9677b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f9678c = -1;

        a(LiveData liveData, c0 c0Var) {
            this.f9676a = liveData;
            this.f9677b = c0Var;
        }

        void a() {
            this.f9676a.k(this);
        }

        void b() {
            this.f9676a.o(this);
        }

        @Override // androidx.p009lifecycle.c0
        public void onChanged(Object obj) {
            if (this.f9678c != this.f9676a.g()) {
                this.f9678c = this.f9676a.g();
                this.f9677b.onChanged(obj);
            }
        }
    }

    public z() {
        this.f9675l = new b();
    }

    public z(Object obj) {
        super(obj);
        this.f9675l = new b();
    }

    @Override // androidx.p009lifecycle.LiveData
    protected void l() {
        Iterator it = this.f9675l.iterator();
        while (it.hasNext()) {
            ((a) ((Map.Entry) it.next()).getValue()).a();
        }
    }

    @Override // androidx.p009lifecycle.LiveData
    protected void m() {
        Iterator it = this.f9675l.iterator();
        while (it.hasNext()) {
            ((a) ((Map.Entry) it.next()).getValue()).b();
        }
    }

    public void r(LiveData liveData, c0 c0Var) {
        if (liveData == null) {
            throw new NullPointerException("source cannot be null");
        }
        a aVar = new a(liveData, c0Var);
        a aVar2 = (a) this.f9675l.g(liveData, aVar);
        if (aVar2 != null && aVar2.f9677b != c0Var) {
            throw new IllegalArgumentException("This source was already added with the different observer");
        }
        if (aVar2 == null && h()) {
            aVar.a();
        }
    }
}
