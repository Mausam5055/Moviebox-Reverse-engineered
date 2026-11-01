package androidx.compose.ui.layout;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.function.Predicate;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
public interface p0 {

    public static final class a implements Collection, KMappedMarker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Set f5196a;

        /* JADX WARN: Multi-variable type inference failed */
        public a() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public a(Set set) {
            this.f5196a = set;
        }

        public /* synthetic */ a(Set set, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? new LinkedHashSet() : set);
        }

        @Override // java.util.Collection
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean add(Object obj) {
            return this.f5196a.add(obj);
        }

        @Override // java.util.Collection
        public boolean addAll(Collection collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public int c() {
            return this.f5196a.size();
        }

        @Override // java.util.Collection
        public final void clear() {
            this.f5196a.clear();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return this.f5196a.contains(obj);
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection collection) {
            return this.f5196a.containsAll(collection);
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return this.f5196a.isEmpty();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return this.f5196a.iterator();
        }

        @Override // java.util.Collection
        public final boolean remove(Object obj) {
            return this.f5196a.remove(obj);
        }

        @Override // java.util.Collection
        public final boolean removeAll(Collection collection) {
            return this.f5196a.remove(collection);
        }

        @Override // java.util.Collection
        public boolean removeIf(Predicate predicate) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.Collection
        public final boolean retainAll(Collection collection) {
            return this.f5196a.retainAll(collection);
        }

        @Override // java.util.Collection
        public final /* bridge */ int size() {
            return c();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return CollectionToArray.a(this);
        }

        @Override // java.util.Collection
        public Object[] toArray(Object[] objArr) {
            return CollectionToArray.b(this, objArr);
        }
    }

    void a(a aVar);

    boolean b(Object obj, Object obj2);
}
