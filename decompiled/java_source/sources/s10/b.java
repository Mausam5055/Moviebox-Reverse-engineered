package s10;

import java.util.Iterator;

/* JADX INFO: loaded from: classes7.dex */
public class b implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f74856a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f74857b;

    public b(int i11) {
        this.f74857b = i11;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f74856a < this.f74857b;
    }

    @Override // java.util.Iterator
    public Object next() {
        int i11 = this.f74856a;
        this.f74856a = i11 + 1;
        return Integer.valueOf(i11);
    }

    @Override // java.util.Iterator
    public void remove() {
    }
}
