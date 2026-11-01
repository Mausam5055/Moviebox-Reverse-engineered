package kotlin.collections;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableListIterator;

/* JADX INFO: loaded from: classes7.dex */
final class ReversedList extends AbstractMutableList {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f67129a;

    /* JADX INFO: renamed from: kotlin.collections.ReversedList$listIterator$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000!\n\u0000\n\u0002\u0010+\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u000b*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0010\u0010\u0003\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000b\u0010\u0007J\u000f\u0010\f\u001a\u00020\bH\u0016¢\u0006\u0004\b\f\u0010\nJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0013\u0010\u0010R\u001d\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u00018\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"kotlin/collections/ReversedList$listIterator$1", "", "", "hasNext", "()Z", "hasPrevious", "next", "()Ljava/lang/Object;", "", "nextIndex", "()I", "previous", "previousIndex", "element", "", "add", "(Ljava/lang/Object;)V", "remove", "()V", "set", "a", "Ljava/util/ListIterator;", "getDelegateIterator", "()Ljava/util/ListIterator;", "delegateIterator", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class AnonymousClass1 implements ListIterator<Object>, KMutableListIterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
        private final ListIterator delegateIterator;

        AnonymousClass1(int i11) {
            this.delegateIterator = ReversedList.this.f67129a.listIterator(n.X(ReversedList.this, i11));
        }

        @Override // java.util.ListIterator
        public void add(Object element) {
            this.delegateIterator.add(element);
            this.delegateIterator.previous();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.delegateIterator.hasPrevious();
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.delegateIterator.hasNext();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public Object next() {
            return this.delegateIterator.previous();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return n.W(ReversedList.this, this.delegateIterator.previousIndex());
        }

        @Override // java.util.ListIterator
        public Object previous() {
            return this.delegateIterator.next();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return n.W(ReversedList.this, this.delegateIterator.nextIndex());
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            this.delegateIterator.remove();
        }

        @Override // java.util.ListIterator
        public void set(Object element) {
            this.delegateIterator.set(element);
        }
    }

    public ReversedList(List delegate) {
        Intrinsics.h(delegate, "delegate");
        this.f67129a = delegate;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i11, Object obj) {
        this.f67129a.add(n.X(this, i11), obj);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        this.f67129a.clear();
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i11) {
        return this.f67129a.get(n.V(this, i11));
    }

    @Override // kotlin.collections.AbstractMutableList
    /* JADX INFO: renamed from: getSize */
    public int getLength() {
        return this.f67129a.size();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator listIterator(int i11) {
        return new AnonymousClass1(i11);
    }

    @Override // kotlin.collections.AbstractMutableList
    public Object removeAt(int i11) {
        return this.f67129a.remove(n.V(this, i11));
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i11, Object obj) {
        return this.f67129a.set(n.V(this, i11), obj);
    }
}
