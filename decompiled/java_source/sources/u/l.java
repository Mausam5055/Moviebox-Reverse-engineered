package u;

import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.AbstractMutableCollection;
import kotlin.jvm.internal.markers.KMutableCollection;

/* JADX INFO: loaded from: classes2.dex */
public final class l extends AbstractMutableCollection implements Collection, KMutableCollection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f76512a;

    public l(f fVar) {
        this.f76512a = fVar;
    }

    @Override // kotlin.collections.AbstractMutableCollection
    public int a() {
        return this.f76512a.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.f76512a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.f76512a.containsValue(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return new m(this.f76512a);
    }
}
