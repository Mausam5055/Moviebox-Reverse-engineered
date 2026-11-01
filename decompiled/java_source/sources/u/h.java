package u;

import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class h extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f76509a;

    public h(f fVar) {
        this.f76509a = fVar;
    }

    @Override // u.a
    public boolean c(Map.Entry entry) {
        Object obj = this.f76509a.get(entry.getKey());
        if (obj != null) {
            return Intrinsics.c(obj, entry.getValue());
        }
        return entry.getValue() == null && this.f76509a.containsKey(entry.getKey());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f76509a.clear();
    }

    @Override // u.a
    public boolean f(Map.Entry entry) {
        return this.f76509a.remove(entry.getKey(), entry.getValue());
    }

    @Override // kotlin.collections.AbstractMutableSet
    public int getSize() {
        return this.f76509a.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public boolean add(Map.Entry entry) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        return new i(this.f76509a);
    }
}
