package u;

import java.util.Iterator;
import kotlin.collections.AbstractSet;

/* JADX INFO: loaded from: classes2.dex */
public final class p extends AbstractSet implements t.e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f76514b;

    public p(d dVar) {
        this.f76514b = dVar;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return this.f76514b.containsKey(obj);
    }

    @Override // kotlin.collections.AbstractCollection
    /* JADX INFO: renamed from: getSize */
    public int get_size() {
        return this.f76514b.size();
    }

    @Override // kotlin.collections.AbstractSet, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        return new q(this.f76514b.u());
    }
}
