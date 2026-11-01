package androidx.compose.runtime;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
final class j0 implements Iterator, KMappedMarker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j2 f3771a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3772b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3773c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3774d;

    public j0(j2 j2Var, int i11, int i12) {
        this.f3771a = j2Var;
        this.f3772b = i12;
        this.f3773c = i11;
        this.f3774d = j2Var.t();
        if (j2Var.u()) {
            throw new ConcurrentModificationException();
        }
    }

    private final void c() {
        if (this.f3771a.t() != this.f3774d) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public androidx.compose.runtime.tooling.b next() {
        c();
        int i11 = this.f3773c;
        this.f3773c = l2.I(this.f3771a.o(), i11) + i11;
        return new k2(this.f3771a, i11, this.f3774d);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f3773c < this.f3772b;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
