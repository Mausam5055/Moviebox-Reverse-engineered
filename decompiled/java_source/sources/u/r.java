package u;

import java.util.Iterator;
import kotlin.collections.AbstractCollection;

/* JADX INFO: loaded from: classes2.dex */
public final class r extends AbstractCollection implements t.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f76515a;

    public r(d dVar) {
        this.f76515a = dVar;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return this.f76515a.containsValue(obj);
    }

    @Override // kotlin.collections.AbstractCollection
    /* JADX INFO: renamed from: getSize */
    public int get_size() {
        return this.f76515a.size();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return new s(this.f76515a.u());
    }
}
