package wj;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements Queue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f77691a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LinkedList f77692b;

    public a(int i11) {
        this.f77691a = i11;
        this.f77692b = new LinkedList();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(Queue newQueue) {
        this(newQueue.size());
        Intrinsics.h(newQueue, "newQueue");
        this.f77692b = new LinkedList(newQueue);
    }

    public int a() {
        return this.f77692b.size();
    }

    @Override // java.util.Queue, java.util.Collection
    public boolean add(Object obj) {
        return this.f77692b.add(obj);
    }

    @Override // java.util.Collection
    public boolean addAll(Collection elements) {
        Intrinsics.h(elements, "elements");
        return this.f77692b.addAll(elements);
    }

    @Override // java.util.Collection
    public void clear() {
        this.f77692b.clear();
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return this.f77692b.contains(obj);
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection elements) {
        Intrinsics.h(elements, "elements");
        return this.f77692b.containsAll(elements);
    }

    @Override // java.util.Queue
    public Object element() {
        return this.f77692b.element();
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return this.f77692b.size() == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        Iterator it = this.f77692b.iterator();
        Intrinsics.g(it, "iterator(...)");
        return it;
    }

    @Override // java.util.Queue
    public boolean offer(Object obj) {
        if (this.f77692b.size() >= this.f77691a) {
            this.f77692b.poll();
        }
        return this.f77692b.offer(obj);
    }

    @Override // java.util.Queue
    public Object peek() {
        return this.f77692b.peek();
    }

    @Override // java.util.Queue
    public Object poll() {
        return this.f77692b.poll();
    }

    @Override // java.util.Queue
    public Object remove() {
        return this.f77692b.remove();
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        return this.f77692b.remove(obj);
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection elements) {
        Intrinsics.h(elements, "elements");
        return this.f77692b.removeAll(CollectionsKt.W0(elements));
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection elements) {
        Intrinsics.h(elements, "elements");
        return this.f77692b.retainAll(CollectionsKt.W0(elements));
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return a();
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        Object[] array = this.f77692b.toArray();
        Intrinsics.g(array, "toArray(...)");
        return array;
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        Object[] array = this.f77692b.toArray(objArr);
        Intrinsics.g(array, "toArray(...)");
        return array;
    }
}
