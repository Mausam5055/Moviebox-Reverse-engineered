package androidx.compose.runtime.snapshots;

import java.util.Set;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.markers.KMutableSet;

/* JADX INFO: loaded from: classes.dex */
abstract class p implements Set, KMutableSet {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final t f4017a;

    public p(t tVar) {
        this.f4017a = tVar;
    }

    public final t a() {
        return this.f4017a;
    }

    public int c() {
        return this.f4017a.size();
    }

    @Override // java.util.Set, java.util.Collection
    public void clear() {
        this.f4017a.clear();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return this.f4017a.isEmpty();
    }

    @Override // java.util.Set, java.util.Collection
    public final /* bridge */ int size() {
        return c();
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.a(this);
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray(Object[] objArr) {
        return CollectionToArray.b(this, objArr);
    }
}
