package u;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes2.dex */
public abstract class u implements Iterator, KMappedMarker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object[] f76525a = t.f76516e.a().p();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f76526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f76527c;

    public final Object a() {
        w.a.a(h());
        return this.f76525a[this.f76527c];
    }

    public final t c() {
        w.a.a(i());
        Object obj = this.f76525a[this.f76527c];
        Intrinsics.f(obj, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNodeBaseIterator, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNodeBaseIterator>");
        return (t) obj;
    }

    protected final Object[] e() {
        return this.f76525a;
    }

    protected final int f() {
        return this.f76527c;
    }

    public final boolean h() {
        return this.f76527c < this.f76526b;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return h();
    }

    public final boolean i() {
        w.a.a(this.f76527c >= this.f76526b);
        return this.f76527c < this.f76525a.length;
    }

    public final void j() {
        w.a.a(h());
        this.f76527c += 2;
    }

    public final void l() {
        w.a.a(i());
        this.f76527c++;
    }

    public final void m(Object[] objArr, int i11) {
        n(objArr, i11, 0);
    }

    public final void n(Object[] objArr, int i11, int i12) {
        this.f76525a = objArr;
        this.f76526b = i11;
        this.f76527c = i12;
    }

    protected final void o(int i11) {
        this.f76527c = i11;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
