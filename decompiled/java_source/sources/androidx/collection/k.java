package androidx.collection;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.markers.KMutableIterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class k implements Iterator, KMutableIterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2289a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2290b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2291c;

    public k(int i11) {
        this.f2289a = i11;
    }

    protected abstract Object a(int i11);

    protected abstract void c(int i11);

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f2290b < this.f2289a;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Object objA = a(this.f2290b);
        this.f2290b++;
        this.f2291c = true;
        return objA;
    }

    @Override // java.util.Iterator
    public void remove() {
        if (!this.f2291c) {
            n.d.b("Call next() before removing an element.");
        }
        int i11 = this.f2290b - 1;
        this.f2290b = i11;
        c(i11);
        this.f2289a--;
        this.f2291c = false;
    }
}
