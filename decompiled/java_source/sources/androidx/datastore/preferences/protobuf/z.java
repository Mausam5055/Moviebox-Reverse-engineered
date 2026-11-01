package androidx.datastore.preferences.protobuf;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class z implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Iterator f8937a;

    public z(Iterator it) {
        this.f8937a = it;
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Map.Entry next() {
        Map.Entry entry = (Map.Entry) this.f8937a.next();
        entry.getValue();
        return entry;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f8937a.hasNext();
    }

    @Override // java.util.Iterator
    public void remove() {
        this.f8937a.remove();
    }
}
