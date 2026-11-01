package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes7.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f67866a = AtomicReferenceFieldUpdater.newUpdater(l.class, Object.class, "_cur$volatile");
    private volatile /* synthetic */ Object _cur$volatile;

    public l(boolean z10) {
        this._cur$volatile = new m(8, z10);
    }

    public final boolean a(Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f67866a;
        while (true) {
            m mVar = (m) atomicReferenceFieldUpdater.get(this);
            int iA = mVar.a(obj);
            if (iA == 0) {
                return true;
            }
            if (iA == 1) {
                androidx.concurrent.futures.a.a(f67866a, this, mVar, mVar.l());
            } else if (iA == 2) {
                return false;
            }
        }
    }

    public final void b() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f67866a;
        while (true) {
            m mVar = (m) atomicReferenceFieldUpdater.get(this);
            if (mVar.d()) {
                return;
            } else {
                androidx.concurrent.futures.a.a(f67866a, this, mVar, mVar.l());
            }
        }
    }

    public final int c() {
        return ((m) f67866a.get(this)).g();
    }

    public final Object e() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f67866a;
        while (true) {
            m mVar = (m) atomicReferenceFieldUpdater.get(this);
            Object objM = mVar.m();
            if (objM != m.f67870h) {
                return objM;
            }
            androidx.concurrent.futures.a.a(f67866a, this, mVar, mVar.l());
        }
    }
}
