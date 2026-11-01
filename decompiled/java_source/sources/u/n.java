package u;

import java.util.Iterator;
import java.util.Map;
import kotlin.collections.AbstractSet;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class n extends AbstractSet implements t.e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f76513b;

    public n(d dVar) {
        this.f76513b = dVar;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            return e((Map.Entry) obj);
        }
        return false;
    }

    public boolean e(Map.Entry entry) {
        if (!(entry instanceof Map.Entry)) {
            return false;
        }
        Object obj = this.f76513b.get(entry.getKey());
        if (obj != null) {
            return Intrinsics.c(obj, entry.getValue());
        }
        return entry.getValue() == null && this.f76513b.containsKey(entry.getKey());
    }

    @Override // kotlin.collections.AbstractCollection
    /* JADX INFO: renamed from: getSize */
    public int get_size() {
        return this.f76513b.size();
    }

    @Override // kotlin.collections.AbstractSet, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        return new o(this.f76513b.u());
    }
}
