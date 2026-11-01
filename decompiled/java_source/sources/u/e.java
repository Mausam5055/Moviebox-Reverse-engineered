package u;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e implements Iterator, KMappedMarker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final u[] f76496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f76497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f76498c = true;

    public e(t tVar, u[] uVarArr) {
        this.f76496a = uVarArr;
        uVarArr[0].m(tVar.p(), tVar.m() * 2);
        this.f76497b = 0;
        e();
    }

    private final void a() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
    }

    private final void e() {
        if (this.f76496a[this.f76497b].h()) {
            return;
        }
        for (int i11 = this.f76497b; -1 < i11; i11--) {
            int iH = h(i11);
            if (iH == -1 && this.f76496a[i11].i()) {
                this.f76496a[i11].l();
                iH = h(i11);
            }
            if (iH != -1) {
                this.f76497b = iH;
                return;
            }
            if (i11 > 0) {
                this.f76496a[i11 - 1].l();
            }
            this.f76496a[i11].m(t.f76516e.a().p(), 0);
        }
        this.f76498c = false;
    }

    private final int h(int i11) {
        if (this.f76496a[i11].h()) {
            return i11;
        }
        if (!this.f76496a[i11].i()) {
            return -1;
        }
        t tVarC = this.f76496a[i11].c();
        if (i11 == 6) {
            this.f76496a[i11 + 1].m(tVarC.p(), tVarC.p().length);
        } else {
            this.f76496a[i11 + 1].m(tVarC.p(), tVarC.m() * 2);
        }
        return h(i11 + 1);
    }

    protected final Object c() {
        a();
        return this.f76496a[this.f76497b].a();
    }

    protected final u[] f() {
        return this.f76496a;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f76498c;
    }

    protected final void i(int i11) {
        this.f76497b = i11;
    }

    @Override // java.util.Iterator
    public Object next() {
        a();
        Object next = this.f76496a[this.f76497b].next();
        e();
        return next;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
