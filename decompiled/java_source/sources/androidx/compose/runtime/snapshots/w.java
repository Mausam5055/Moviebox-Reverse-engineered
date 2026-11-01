package androidx.compose.runtime.snapshots;

import java.util.ConcurrentModificationException;
import java.util.ListIterator;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.markers.KMutableListIterator;

/* JADX INFO: loaded from: classes.dex */
final class w implements ListIterator, KMutableListIterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SnapshotStateList f4029a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4031c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4032d;

    public w(SnapshotStateList snapshotStateList, int i11) {
        this.f4029a = snapshotStateList;
        this.f4030b = i11 - 1;
        this.f4032d = snapshotStateList.e();
    }

    private final void a() {
        if (this.f4029a.e() != this.f4032d) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.ListIterator
    public void add(Object obj) {
        a();
        this.f4029a.add(this.f4030b + 1, obj);
        this.f4031c = -1;
        this.f4030b++;
        this.f4032d = this.f4029a.e();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        return this.f4030b < this.f4029a.size() - 1;
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        return this.f4030b >= 0;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public Object next() {
        a();
        int i11 = this.f4030b + 1;
        this.f4031c = i11;
        s.g(i11, this.f4029a.size());
        Object obj = this.f4029a.get(i11);
        this.f4030b = i11;
        return obj;
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.f4030b + 1;
    }

    @Override // java.util.ListIterator
    public Object previous() {
        a();
        s.g(this.f4030b, this.f4029a.size());
        int i11 = this.f4030b;
        this.f4031c = i11;
        Object obj = this.f4029a.get(i11);
        this.f4030b--;
        return obj;
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.f4030b;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        a();
        this.f4029a.remove(this.f4030b);
        this.f4030b--;
        this.f4031c = -1;
        this.f4032d = this.f4029a.e();
    }

    @Override // java.util.ListIterator
    public void set(Object obj) {
        a();
        int i11 = this.f4031c;
        if (i11 < 0) {
            s.e();
            throw new KotlinNothingValueException();
        }
        this.f4029a.set(i11, obj);
        this.f4032d = this.f4029a.e();
    }
}
