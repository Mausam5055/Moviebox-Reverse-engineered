package v;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes2.dex */
public class c implements Iterator, KMappedMarker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object f76964a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f76965b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f76966c;

    public c(Object obj, Map map) {
        this.f76964a = obj;
        this.f76965b = map;
    }

    private final void a() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f76966c < this.f76965b.size();
    }

    @Override // java.util.Iterator
    public Object next() {
        a();
        Object obj = this.f76964a;
        this.f76966c++;
        Object obj2 = this.f76965b.get(obj);
        if (obj2 != null) {
            this.f76964a = ((a) obj2).c();
            return obj;
        }
        throw new ConcurrentModificationException("Hash code of an element (" + obj + ") has changed after it was added to the persistent set.");
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
