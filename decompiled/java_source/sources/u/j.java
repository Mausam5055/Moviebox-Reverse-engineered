package u;

import java.util.Iterator;
import java.util.Set;
import kotlin.collections.AbstractMutableSet;
import kotlin.jvm.internal.markers.KMutableSet;

/* JADX INFO: loaded from: classes2.dex */
public final class j extends AbstractMutableSet implements Set, KMutableSet {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f76511a;

    public j(f fVar) {
        this.f76511a = fVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f76511a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.f76511a.containsKey(obj);
    }

    @Override // kotlin.collections.AbstractMutableSet
    public int getSize() {
        return this.f76511a.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        return new k(this.f76511a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        if (!this.f76511a.containsKey(obj)) {
            return false;
        }
        this.f76511a.remove(obj);
        return true;
    }
}
