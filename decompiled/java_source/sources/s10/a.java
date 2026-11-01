package s10;

import java.util.Iterator;

/* JADX INFO: loaded from: classes7.dex */
public class a implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object[] f74854a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f74855b = 0;

    public a(Object[] objArr) {
        this.f74854a = objArr;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f74855b != this.f74854a.length;
    }

    @Override // java.util.Iterator
    public Object next() {
        Object[] objArr = this.f74854a;
        int i11 = this.f74855b;
        this.f74855b = i11 + 1;
        return objArr[i11];
    }

    @Override // java.util.Iterator
    public void remove() {
    }
}
