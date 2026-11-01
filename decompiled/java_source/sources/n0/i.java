package n0;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class i implements Collection, KMappedMarker {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f70061c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final i f70062d = new i(CollectionsKt.l());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f70063a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f70064b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final i a() {
            return k.a().d();
        }

        public final i b() {
            return i.f70062d;
        }
    }

    public i(List list) {
        this.f70063a = list;
        this.f70064b = list.size();
    }

    @Override // java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean c(h hVar) {
        return this.f70063a.contains(hVar);
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof h) {
            return c((h) obj);
        }
        return false;
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection collection) {
        return this.f70063a.containsAll(collection);
    }

    public final h e(int i11) {
        return (h) this.f70063a.get(i11);
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof i) && Intrinsics.c(this.f70063a, ((i) obj).f70063a);
    }

    public final List f() {
        return this.f70063a;
    }

    public int h() {
        return this.f70064b;
    }

    @Override // java.util.Collection
    public int hashCode() {
        return this.f70063a.hashCode();
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return this.f70063a.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return this.f70063a.iterator();
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeIf(Predicate predicate) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return h();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.a(this);
    }

    @Override // java.util.Collection
    public Object[] toArray(Object[] objArr) {
        return CollectionToArray.b(this, objArr);
    }

    public String toString() {
        return "LocaleList(localeList=" + this.f70063a + ')';
    }
}
